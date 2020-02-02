with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body PROJ.Tests.proj_errno_string_test is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure ProjErrnoStringTest_ProjErrnos (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_STREQ("no arguments in initialization list", proj_errno_string(-1));
--  EXPECT_STREQ("invalid projection system error (-1000)",
--  proj_errno_string(-1000));
--  EXPECT_STREQ("invalid projection system error (-9999)",
--  proj_errno_string(-9999));
--  // for errnos < -9999, -9999 is always returned
--  const int min = std::numeric_limits<int>::min();
--  EXPECT_STREQ("invalid projection system error (-9999)",
--  proj_errno_string(min));
--  EXPECT_STREQ("invalid projection system error (-9999)",
--  proj_errno_string(-10000));      
   end ProjErrnoStringTest_ProjErrnos;

   procedure ProjErrnoStringTest_SystemErrnos (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  const int max = std::numeric_limits<int>::max();
--  
--  #ifdef HAVE_STRERROR
--  EXPECT_STREQ(strerror(5), proj_errno_string(5));
--  EXPECT_STREQ(strerror(9999), proj_errno_string(9999));
--  EXPECT_STREQ(strerror(10000), proj_errno_string(10000));
--  EXPECT_STREQ(strerror(max), proj_errno_string(max));
--  #else
--  EXPECT_STREQ("no system list, errno: 5\n", proj_errno_string(5));
--  EXPECT_STREQ("no system list, errno: 9999\n", proj_errno_string(9999));
--  // for errnos > 9999, 9999 is always returned
--  EXPECT_STREQ("no system list, errno: 9999\n", proj_errno_string(10000));
--  EXPECT_STREQ("no system list, errno: 9999\n", proj_errno_string(max));
--  #endif      
   end ProjErrnoStringTest_SystemErrnos;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, ProjErrnoStringTest_ProjErrnos'Access, "ProjErrnoStringTest_ProjErrnos");

      Registration.Register_Routine (Test, ProjErrnoStringTest_SystemErrnos'Access, "ProjErrnoStringTest_SystemErrnos");

   end Register_Tests;

end PROJ.Tests.proj_errno_string_test;