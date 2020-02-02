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
package body PROJ.Tests.test_common is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure common_unit_of_measure (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_EQ(UnitOfMeasure::METRE.name(), "metre");
--  
--  EXPECT_EQ(UnitOfMeasure::METRE.conversionToSI(), 1.0);
--  EXPECT_EQ(UnitOfMeasure::METRE.type(), UnitOfMeasure::Type::LINEAR);
--  
--  EXPECT_EQ(UnitOfMeasure::DEGREE.name(), "degree");
--  EXPECT_EQ(UnitOfMeasure::DEGREE.conversionToSI(), 0.017453292519943295);
--  EXPECT_EQ(UnitOfMeasure::DEGREE.type(), UnitOfMeasure::Type::ANGULAR);
--  
--  EXPECT_EQ(UnitOfMeasure::RADIAN.name(), "radian");
--  EXPECT_EQ(UnitOfMeasure::RADIAN.conversionToSI(), 1.0);
--  EXPECT_EQ(UnitOfMeasure::RADIAN.type(), UnitOfMeasure::Type::ANGULAR);
--  
--  EXPECT_EQ(Length(2.0, UnitOfMeasure("km", 1000.0))
--  .convertToUnit(UnitOfMeasure::METRE),
--  2000.0);
--  
--  EXPECT_EQ(
--  Angle(2.0, UnitOfMeasure::DEGREE).convertToUnit(UnitOfMeasure::RADIAN),
--  2 * 0.017453292519943295);
--  
--  EXPECT_EQ(Angle(2.5969213, UnitOfMeasure::GRAD)
--  .convertToUnit(UnitOfMeasure::DEGREE),
--  2.5969213 / 100.0 * 90.0);      
   end common_unit_of_measure;

   procedure common_identifiedobject_empty (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  auto obj = OperationParameter::create(properties);
--  EXPECT_TRUE(obj->name()->code().empty());
--  EXPECT_TRUE(obj->identifiers().empty());
--  EXPECT_TRUE(obj->aliases().empty());
--  EXPECT_TRUE(obj->remarks().empty());
--  EXPECT_TRUE(!obj->isDeprecated());
--  EXPECT_TRUE(obj->alias().empty());      
   end common_identifiedobject_empty;

   procedure common_identifiedobject (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  properties.set(IdentifiedObject::NAME_KEY, "name");
--  properties.set(IdentifiedObject::IDENTIFIERS_KEY,
--  Identifier::create("identifier_code"));
--  properties.set(IdentifiedObject::ALIAS_KEY, "alias");
--  properties.set(IdentifiedObject::REMARKS_KEY, "remarks");
--  properties.set(IdentifiedObject::DEPRECATED_KEY, true);
--  auto obj = OperationParameter::create(properties);
--  EXPECT_EQ(*(obj->name()->description()), "name");
--  ASSERT_EQ(obj->identifiers().size(), 1U);
--  EXPECT_EQ(obj->identifiers()[0]->code(), "identifier_code");
--  ASSERT_EQ(obj->aliases().size(), 1U);
--  EXPECT_EQ(obj->aliases()[0]->toString(), "alias");
--  EXPECT_EQ(obj->remarks(), "remarks");
--  EXPECT_TRUE(obj->isDeprecated());      
   end common_identifiedobject;

   procedure common_identifiedobject_name_invalid_type_integer (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  properties.set(IdentifiedObject::NAME_KEY, 123);
--  ASSERT_THROW(OperationParameter::create(properties),
--  InvalidValueTypeException);      
   end common_identifiedobject_name_invalid_type_integer;

   procedure common_identifiedobject_name_invalid_type_citation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  properties.set(IdentifiedObject::NAME_KEY,
--  nn_make_shared<Citation>("invalid"));
--  ASSERT_THROW(OperationParameter::create(properties),
--  InvalidValueTypeException);      
   end common_identifiedobject_name_invalid_type_citation;

   procedure common_identifiedobject_identifier_invalid_type (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  properties.set(IdentifiedObject::IDENTIFIERS_KEY, "string not allowed");
--  ASSERT_THROW(OperationParameter::create(properties),
--  InvalidValueTypeException);      
   end common_identifiedobject_identifier_invalid_type;

   procedure common_identifiedobject_identifier_array_of_identifier (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  auto array = ArrayOfBaseObject::create();
--  array->add(Identifier::create("identifier_code1"));
--  array->add(Identifier::create("identifier_code2"));
--  properties.set(IdentifiedObject::IDENTIFIERS_KEY, array);
--  auto obj = OperationParameter::create(properties);
--  ASSERT_EQ(obj->identifiers().size(), 2U);
--  EXPECT_EQ(obj->identifiers()[0]->code(), "identifier_code1");
--  EXPECT_EQ(obj->identifiers()[1]->code(), "identifier_code2");      
   end common_identifiedobject_identifier_array_of_identifier;

   procedure common_identifiedobject_identifier_array_of_invalid_type (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  auto array = ArrayOfBaseObject::create();
--  array->add(nn_make_shared<Citation>("unexpected type"));
--  properties.set(IdentifiedObject::IDENTIFIERS_KEY, array);
--  ASSERT_THROW(OperationParameter::create(properties),
--  InvalidValueTypeException);      
   end common_identifiedobject_identifier_array_of_invalid_type;

   procedure common_identifiedobject_alias_array_of_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  properties.set(IdentifiedObject::ALIAS_KEY,
--  std::vector<std::string>{"alias1", "alias2"});
--  auto obj = OperationParameter::create(properties);
--  ASSERT_EQ(obj->aliases().size(), 2U);
--  EXPECT_EQ(obj->aliases()[0]->toString(), "alias1");
--  EXPECT_EQ(obj->aliases()[1]->toString(), "alias2");      
   end common_identifiedobject_alias_array_of_string;

   procedure common_identifiedobject_alias_invalid_type (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  properties.set(IdentifiedObject::ALIAS_KEY,
--  nn_make_shared<Citation>("unexpected type"));
--  ASSERT_THROW(OperationParameter::create(properties),
--  InvalidValueTypeException);      
   end common_identifiedobject_alias_invalid_type;

   procedure common_identifiedobject_alias_array_of_invalid_type (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap properties;
--  auto array = ArrayOfBaseObject::create();
--  array->add(nn_make_shared<Citation>("unexpected type"));
--  properties.set(IdentifiedObject::ALIAS_KEY, array);
--  ASSERT_THROW(OperationParameter::create(properties),
--  InvalidValueTypeException);      
   end common_identifiedobject_alias_array_of_invalid_type;

   procedure common_DataEpoch (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  DataEpoch epochSrc(Measure(2010.5, UnitOfMeasure::YEAR));
--  DataEpoch epoch(epochSrc);
--  EXPECT_EQ(epoch.coordinateEpoch().value(), 2010.5);
--  EXPECT_EQ(epoch.coordinateEpoch().unit(), UnitOfMeasure::YEAR);      
   end common_DataEpoch;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, common_unit_of_measure'Access, "common_unit_of_measure");

      Registration.Register_Routine (Test, common_identifiedobject_empty'Access, "common_identifiedobject_empty");

      Registration.Register_Routine (Test, common_identifiedobject'Access, "common_identifiedobject");

      Registration.Register_Routine (Test, common_identifiedobject_name_invalid_type_integer'Access, "common_identifiedobject_name_invalid_type_integer");

      Registration.Register_Routine (Test, common_identifiedobject_name_invalid_type_citation'Access, "common_identifiedobject_name_invalid_type_citation");

      Registration.Register_Routine (Test, common_identifiedobject_identifier_invalid_type'Access, "common_identifiedobject_identifier_invalid_type");

      Registration.Register_Routine (Test, common_identifiedobject_identifier_array_of_identifier'Access, "common_identifiedobject_identifier_array_of_identifier");

      Registration.Register_Routine (Test, common_identifiedobject_identifier_array_of_invalid_type'Access, "common_identifiedobject_identifier_array_of_invalid_type");

      Registration.Register_Routine (Test, common_identifiedobject_alias_array_of_string'Access, "common_identifiedobject_alias_array_of_string");

      Registration.Register_Routine (Test, common_identifiedobject_alias_invalid_type'Access, "common_identifiedobject_alias_invalid_type");

      Registration.Register_Routine (Test, common_identifiedobject_alias_array_of_invalid_type'Access, "common_identifiedobject_alias_array_of_invalid_type");

      Registration.Register_Routine (Test, common_DataEpoch'Access, "common_DataEpoch");

   end Register_Tests;

end PROJ.Tests.test_common;