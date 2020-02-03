import re
from os.path import *

FUNCTION_DECL = """   function Image(Item : %(name)s) return String;
"""
SPEC="""package %(name)s is
%(functions)s
end %(name)s;
"""

BODY="""package body %(name)s is
%(functions)s
end %(name)s;
"""

FUNCTION_IMPL = """   function Image(Item : %(name)s) return String is
      pragma Unreferenced (Item);
   begin
       return "<Image unimplemented>";
   end Image;
"""

Ignored = ["Logger","User_Data_Type"]
class Generator:
    
    def __init__(self,src):
        self.src = src
        self.name = None
        self.types = []
        self.outpath=dirname(src)
    def read(self,path):
        matcher = re.compile("((type)|(package))\s+(\w+)")
        #                     12                   3
        self.name = None
        self.types = []
        private=False
        with open(path) as inf:
            for line in inf:
                line=line.strip()
                if line == "private":
                    private = True
                    
                matches = matcher.match(line)
                
                if not private and matches:
                    groups=matches.groups()
                    if groups[2] and not self.name:
                        self.name=groups[3]
                    elif groups[1]:
                        if groups[3] not in self.types:
                            if groups[3] not in Ignored:
                                self.types.append(groups[3])
    def __str__(self):
        return "%s [%s]" %(self.name, ", ".join(self.types))

    def ada2file(self,name):
        return name.lower().replace(".","-")
    
    def _write(self,filename,image):
        with open(join(self.outpath,filename),"w") as outf:
            outf.write(image)
            
    def writespec(self,name,image):
        self._write(self.ada2file(name) + ".ads",image)
        
    def writebody(self,name,image):
        self._write(self.ada2file(name) + ".adb",image)

    def ada2file(self,name):
        return name.lower().replace(".","-")
    
    def write(self):
        name = self.name + ".Images"
        functions=[]
        for t in self.types:
            functions.append(FUNCTION_DECL  % {"name": t})
        self.writespec(name,SPEC % {"name": name,
                                    "functions":"\n".join(functions)})
        functions=[]
        for t in self.types:
            functions.append(FUNCTION_IMPL % {"name": t})
        self.writebody(name,BODY % {"name": name,
                                    "functions":"\n".join(functions)})
        
                       
                       
    def main(self):
        self.read(self.src)
        
if __name__ == "__main__":
    g=Generator("src/proj.ads")
    g.main()
    g.write()
    
    
