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
package body PROJ.Tests.pj_phi2_test is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure PjPhi2Test_Basic (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      
   begin
      null;
--  projCtx ctx = pj_get_default_ctx();
--  
--  EXPECT_DOUBLE_EQ(M_PI_2, pj_phi2(ctx, 0.0, 0.0));
--  
--  EXPECT_NEAR(0.0, pj_phi2(ctx, 1.0, 0.0), 1e-16);
--  EXPECT_DOUBLE_EQ(M_PI_2, pj_phi2(ctx, 0.0, 1.0));
--  EXPECT_DOUBLE_EQ(M_PI, pj_phi2(ctx, -1.0, 0.0));
--  EXPECT_DOUBLE_EQ(M_PI_2, pj_phi2(ctx, 0.0, -1.0));
--  
--  EXPECT_NEAR(0.0, pj_phi2(ctx, 1.0, 1.0), 1e-16);
--  EXPECT_DOUBLE_EQ(M_PI, pj_phi2(ctx, -1.0, -1.0));
--  
--  // TODO(schwehr): M_PI_4, M_PI_2, M_PI, M_E
--  // https://www.gnu.org/software/libc/manual/html_node/Mathematical-Constants.html
--  
--  EXPECT_DOUBLE_EQ(-0.95445818456292697, pj_phi2(ctx, M_PI, 0.0));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, 0.0, M_PI)));
--  EXPECT_DOUBLE_EQ(4.0960508381527205, pj_phi2(ctx, -M_PI, 0.0));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, 0.0, -M_PI)));
--  
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, M_PI, M_PI)));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, -M_PI, -M_PI)));      
   end PjPhi2Test_Basic;

   procedure PjPhi2Test_AvoidUndefinedBehavior (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      
   begin
      null;
--  auto ctx = pj_get_default_ctx();
--  
--  const auto nan = std::numeric_limits<double>::quiet_NaN();
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, nan, 0.0)));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, 0.0, nan)));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, nan, nan)));
--  
--  // We do not really care about the values that follow.
--  const auto inf = std::numeric_limits<double>::infinity();
--  
--  EXPECT_DOUBLE_EQ(-M_PI_2, pj_phi2(ctx, inf, 0.0));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, 0.0, inf)));
--  
--  EXPECT_DOUBLE_EQ(4.7123889803846897, pj_phi2(ctx, -inf, 0.0));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, 0.0, -inf)));
--  
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, inf, inf)));
--  EXPECT_TRUE(std::isnan(pj_phi2(ctx, -inf, -inf)));      
   end PjPhi2Test_AvoidUndefinedBehavior;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, PjPhi2Test_Basic'Access, "PjPhi2Test_Basic");

      Registration.Register_Routine (Test, PjPhi2Test_AvoidUndefinedBehavior'Access, "PjPhi2Test_AvoidUndefinedBehavior");

   end Register_Tests;

end PROJ.Tests.pj_phi2_test;
