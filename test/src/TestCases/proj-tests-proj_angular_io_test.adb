--  ----------------------------------------------------------------------------
--
--  This file is an generated as a starting point for unitiest of Ada-PROJ
--  from the c++ unit tests.
--
--  ----------------------------------------------------------------------------

with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body PROJ.Tests.proj_angular_io_test is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure AngularUnits_Basic (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  auto P = proj_create(ctx, "proj=latlong");
--  
--  EXPECT_TRUE(proj_angular_input(P, PJ_FWD));
--  EXPECT_TRUE(proj_angular_output(P, PJ_FWD));
--  EXPECT_TRUE(proj_angular_input(P, PJ_INV));
--  EXPECT_TRUE(proj_angular_output(P, PJ_INV));
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);      
   end AngularUnits_Basic;

   procedure AngularUnits_Pipelines (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  auto P =
--  proj_create(ctx, "proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=latlong +step +proj=axisswap +order=2,1");
--  
--  EXPECT_TRUE(proj_angular_input(P, PJ_FWD));
--  EXPECT_TRUE(proj_angular_output(P, PJ_FWD));
--  EXPECT_TRUE(proj_angular_input(P, PJ_INV));
--  EXPECT_TRUE(proj_angular_output(P, PJ_INV));
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);      
   end AngularUnits_Pipelines;

   procedure AngularUnits_Pipelines2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  auto P = proj_create(
--  ctx,
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=tmerc +lat_0=0 +lon_0=-81 +k=0.9996 +x_0=500000.001016002 "
--  "+y_0=0 +ellps=WGS84 "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=m +z_in=m +xy_out=us-ft +z_out=us-ft");
--  
--  EXPECT_FALSE(proj_angular_input(P, PJ_FWD));
--  EXPECT_FALSE(proj_angular_output(P, PJ_FWD));
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);      
   end AngularUnits_Pipelines2;

   procedure AngularUnits_Pipelines3 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  auto P = proj_create(
--  ctx,
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=tmerc +lat_0=0 +lon_0=-81 +k=0.9996 +x_0=500000.001016002 "
--  "+y_0=0 +ellps=WGS84 "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=m +z_in=m +xy_out=us-ft +z_out=us-ft");
--  
--  EXPECT_TRUE(proj_angular_input(P, PJ_FWD));
--  EXPECT_FALSE(proj_angular_output(P, PJ_FWD));
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);      
   end AngularUnits_Pipelines3;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, AngularUnits_Basic'Access, "AngularUnits_Basic");

      Registration.Register_Routine (Test, AngularUnits_Pipelines'Access, "AngularUnits_Pipelines");

      Registration.Register_Routine (Test, AngularUnits_Pipelines2'Access, "AngularUnits_Pipelines2");

      Registration.Register_Routine (Test, AngularUnits_Pipelines3'Access, "AngularUnits_Pipelines3");

   end Register_Tests;

end PROJ.Tests.proj_angular_io_test;