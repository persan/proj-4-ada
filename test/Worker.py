import glob
from os.path import *
import re
import os

SUIT_SPEC="""with AUnit.Test_Suites;
package %(suit_name)s is
   function Suit return AUnit.Test_Suites.Access_Test_Suite;
end %(suit_name)s;
"""

SUIT_BODY="""%(withs)s
package body %(suit_name)s is
%(decls)s

    S : aliased AUnit.Test_Suites.Test_Suite;
    
   function Suit return AUnit.Test_Suites.Access_Test_Suite is
   begin
%(adds)s
      return s'access;
   end Suit;
end %(suit_name)s;
"""

SUIT_WITH="with %(full_name)s;"
SUIT_TEST_DECL="   T_%(name)s : aliased %(full_name)s.Test_Case;"
SUIT_TEST_ADD= "      S.Add_Test(T_%(name)s'Access);"

SPEC = """with AUnit.Test_Cases;
with AUnit; use AUnit;
package %(name)s is
   type Test_Case is new AUnit.Test_Cases.Test_Case with record
      null;
   end record;

   function Name (Test : Test_Case) return Message_String;
   procedure Register_Tests (Test : in out Test_Case);

end %(name)s;"""

TEST_ROUTINE = """
   procedure %(routine_name)s (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
%(test)s      
   end %(routine_name)s;"""
TEST_REGISTRATION = """      Registration.Register_Routine (Test, %(routine_name)s'Access, "%(routine_name)s");
"""

BODY = """with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body %(name)s is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;
%(test_routines)s
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
%(test_registrations)s
   end Register_Tests;

end %(name)s;"""

class TestGenerator:
    def __init__(self,sourcedir,targetdir):
        if not exists(targetdir):
            os.mkdir(targetdir);
        self.sourcedir=sourcedir
        self.targetdir=targetdir
        self.tests=[]
        self.prefix = "PROJ.Tests.%s"
    def generate_test_suit(self, suit_name = "Test_Suit"):
        withs=[]
        decls=[]
        adds=[]
        for full_name in self.tests:
            name,t=splitext(full_name)
            if t:
                name = t[1:]
            withs.append(SUIT_WITH % {"full_name" : full_name})
            decls.append(SUIT_TEST_DECL % {"full_name" : full_name,
                                           "name" : name})
            adds.append(SUIT_TEST_ADD % {"name" : name})
        suit_name = self.prefix % suit_name
        self.writespec(suit_name,SUIT_SPEC % {"suit_name": suit_name})
        self.writebody(suit_name,SUIT_BODY % {"suit_name": suit_name,
                                              "withs" : "\n".join(withs),
                                              "decls" : "\n".join(decls),
                                              "adds" : "\n".join(adds)})
                
                      
    def ada2file(self,name):
        return name.lower().replace(".","-")
    def _write(self,path,image):
        with open(path,"w") as outf:
            outf.write(image)
        
    def writespec(self,name,image):
        path=join(self.targetdir,self.ada2file(name) + ".ads")
        self._write(path,image)            

    def writebody(self,name,image):
        path=join(self.targetdir,self.ada2file(name) + ".adb")
        self._write(path,image)            

    def generate_test_case(self,src):
        name = splitext(basename(src))[0]
        test_routines = []
        test_registrations = []
        matcher=re.compile("^(TEST\((\w+), (\w+)\) \{|(\}))$")
        in_routine=False
        
        with open(src) as inf:
            for line in inf:
                # line=line.strip()
                matches=matcher.match(line)
                if matches:
                    matches=matches.groups()
                    if matches[1]:
                        lines=[]
                        routine_name=matches[1] + "_" + matches[2]
                        in_routine=True
                    elif in_routine and matches[3]:
                        in_routine=False
                        test_routines.append(TEST_ROUTINE % {"routine_name" : routine_name,
                                                             "test" : "\n".join(lines)})
                        test_registrations.append(TEST_REGISTRATION %{"routine_name":routine_name})
                        
                elif in_routine:
                    lines.append("--  %s" % line.strip())
        name = self.prefix % name
        self.writespec(name,SPEC % {"name": name})
        self.writebody(name,BODY % {"name": name,
                                    "test_routines":"\n".join(test_routines),
                                    "test_registrations":"\n".join(test_registrations)})
        self.tests.append(name)
        
    def main(self):
        for src in glob.glob(join(self.sourcedir,"*.cpp")):
            self.generate_test_case(src)
        self.generate_test_suit()
        
TestGenerator("src","src/TestCases").main()
