with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body PROJ.Tests.test_util is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure util_NameFactory (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  LocalNameNNPtr localname(NameFactory::createLocalName(nullptr, "foo"));
--  auto ns = localname->scope();
--  EXPECT_EQ(ns->isGlobal(), true);
--  EXPECT_EQ(ns->name()->toFullyQualifiedName()->toString(), "global");
--  EXPECT_EQ(localname->toFullyQualifiedName()->toString(), "foo");      
   end util_NameFactory;

   procedure util_NameFactory2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap map;
--  map.set("separator", "/");
--  NameSpaceNNPtr nsIn(NameFactory::createNameSpace(
--  NameFactory::createLocalName(nullptr, std::string("bar")), map));
--  LocalNameNNPtr localname(
--  NameFactory::createLocalName(nsIn, std::string("foo")));
--  auto ns = localname->scope();
--  EXPECT_EQ(ns->isGlobal(), false);
--  auto fullyqualifiedNS = ns->name()->toFullyQualifiedName();
--  EXPECT_EQ(fullyqualifiedNS->toString(), "bar");
--  EXPECT_EQ(fullyqualifiedNS->scope()->isGlobal(), true);
--  EXPECT_EQ(fullyqualifiedNS->scope()->name()->scope()->isGlobal(), true);
--  EXPECT_EQ(localname->toFullyQualifiedName()->toString(), "bar/foo");      
   end util_NameFactory2;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, util_NameFactory'Access, "util_NameFactory");

      Registration.Register_Routine (Test, util_NameFactory2'Access, "util_NameFactory2");

   end Register_Tests;

end PROJ.Tests.test_util;