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
package body PROJ.Tests.test_operation is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure operation_method (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto method = OperationMethod::create(
--  PropertyMap(), std::vector<OperationParameterNNPtr>{});
--  EXPECT_TRUE(method->isEquivalentTo(method.get()));
--  EXPECT_FALSE(method->isEquivalentTo(createUnrelatedObject().get()));
--  auto otherMethod = OperationMethod::create(
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))});
--  EXPECT_TRUE(otherMethod->isEquivalentTo(otherMethod.get()));
--  EXPECT_FALSE(method->isEquivalentTo(otherMethod.get()));
--  auto otherMethod2 = OperationMethod::create(
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2"))});
--  EXPECT_FALSE(otherMethod->isEquivalentTo(otherMethod2.get()));
--  EXPECT_FALSE(otherMethod->isEquivalentTo(
--  otherMethod2.get(), IComparable::Criterion::EQUIVALENT));      
   end operation_method;

   procedure operation_method_parameter_different_order (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto method1 = OperationMethod::create(
--  PropertyMap(), std::vector<OperationParameterNNPtr>{
--  OperationParameter::create(PropertyMap().set(
--  IdentifiedObject::NAME_KEY, "paramName")),
--  OperationParameter::create(PropertyMap().set(
--  IdentifiedObject::NAME_KEY, "paramName2"))});
--  
--  auto method2 = OperationMethod::create(
--  PropertyMap(), std::vector<OperationParameterNNPtr>{
--  OperationParameter::create(PropertyMap().set(
--  IdentifiedObject::NAME_KEY, "paramName2")),
--  OperationParameter::create(PropertyMap().set(
--  IdentifiedObject::NAME_KEY, "paramName"))});
--  
--  auto method3 = OperationMethod::create(
--  PropertyMap(), std::vector<OperationParameterNNPtr>{
--  OperationParameter::create(PropertyMap().set(
--  IdentifiedObject::NAME_KEY, "paramName3")),
--  OperationParameter::create(PropertyMap().set(
--  IdentifiedObject::NAME_KEY, "paramName"))});
--  
--  EXPECT_FALSE(method1->isEquivalentTo(method2.get()));
--  EXPECT_TRUE(method1->isEquivalentTo(method2.get(),
--  IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(method1->isEquivalentTo(method3.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end operation_method_parameter_different_order;

   procedure operation_ParameterValue (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto valStr1 = ParameterValue::create("str1");
--  auto valStr2 = ParameterValue::create("str2");
--  EXPECT_TRUE(valStr1->isEquivalentTo(valStr1.get()));
--  EXPECT_FALSE(valStr1->isEquivalentTo(createUnrelatedObject().get()));
--  EXPECT_FALSE(valStr1->isEquivalentTo(valStr2.get()));
--  
--  auto valMeasure1 = ParameterValue::create(Angle(-90.0));
--  auto valMeasure1Eps = ParameterValue::create(Angle(-90.0 - 1e-11));
--  auto valMeasure2 = ParameterValue::create(Angle(-89.0));
--  EXPECT_TRUE(valMeasure1->isEquivalentTo(valMeasure1.get()));
--  EXPECT_TRUE(valMeasure1->isEquivalentTo(
--  valMeasure1.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(valMeasure1->isEquivalentTo(valMeasure1Eps.get()));
--  EXPECT_TRUE(valMeasure1->isEquivalentTo(
--  valMeasure1Eps.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_FALSE(valMeasure1->isEquivalentTo(valStr1.get()));
--  EXPECT_FALSE(valMeasure1->isEquivalentTo(valMeasure2.get()));
--  EXPECT_FALSE(valMeasure1->isEquivalentTo(
--  valMeasure2.get(), IComparable::Criterion::EQUIVALENT));
--  
--  auto valInt1 = ParameterValue::create(1);
--  auto valInt2 = ParameterValue::create(2);
--  EXPECT_TRUE(valInt1->isEquivalentTo(valInt1.get()));
--  EXPECT_FALSE(valInt1->isEquivalentTo(valInt2.get()));
--  
--  auto valTrue = ParameterValue::create(true);
--  auto valFalse = ParameterValue::create(false);
--  EXPECT_TRUE(valTrue->isEquivalentTo(valTrue.get()));
--  EXPECT_FALSE(valTrue->isEquivalentTo(valFalse.get()));      
   end operation_ParameterValue;

   procedure operation_OperationParameter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op1 = OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"));
--  auto op2 = OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2"));
--  EXPECT_TRUE(op1->isEquivalentTo(op1.get()));
--  EXPECT_FALSE(op1->isEquivalentTo(createUnrelatedObject().get()));
--  EXPECT_FALSE(op1->isEquivalentTo(op2.get()));      
   end operation_OperationParameter;

   procedure operation_OperationParameterValue (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op1 = OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"));
--  auto op2 = OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2"));
--  auto valStr1 = ParameterValue::create("str1");
--  auto valStr2 = ParameterValue::create("str2");
--  auto opv11 = OperationParameterValue::create(op1, valStr1);
--  EXPECT_TRUE(opv11->isEquivalentTo(opv11.get()));
--  EXPECT_FALSE(opv11->isEquivalentTo(createUnrelatedObject().get()));
--  auto opv12 = OperationParameterValue::create(op1, valStr2);
--  EXPECT_FALSE(opv11->isEquivalentTo(opv12.get()));
--  auto opv21 = OperationParameterValue::create(op2, valStr1);
--  EXPECT_FALSE(opv11->isEquivalentTo(opv12.get()));      
   end operation_OperationParameterValue;

   procedure operation_SingleOperation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto sop1 = Transformation::create(
--  PropertyMap(), nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4326),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807),
--  static_cast<CRSPtr>(GeographicCRS::EPSG_4979.as_nullable()),
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  
--  EXPECT_TRUE(sop1->isEquivalentTo(sop1.get()));
--  EXPECT_FALSE(sop1->isEquivalentTo(createUnrelatedObject().get()));
--  
--  EXPECT_TRUE(
--  sop1->isEquivalentTo(sop1->CoordinateOperation::shallowClone().get()));
--  EXPECT_TRUE(sop1->inverse()->isEquivalentTo(
--  sop1->inverse()->CoordinateOperation::shallowClone().get()));
--  
--  auto sop2 = Transformation::create(
--  PropertyMap(), nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4326),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807),
--  static_cast<CRSPtr>(GeographicCRS::EPSG_4979.as_nullable()),
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  EXPECT_FALSE(sop1->isEquivalentTo(sop2.get()));
--  
--  auto sop3 = Transformation::create(
--  PropertyMap(), nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4326),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807),
--  static_cast<CRSPtr>(GeographicCRS::EPSG_4979.as_nullable()),
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName")),
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin"),
--  ParameterValue::createFilename("foo2.bin")},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  EXPECT_FALSE(sop1->isEquivalentTo(sop3.get()));
--  
--  auto sop4 = Transformation::create(
--  PropertyMap(), nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4326),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807),
--  static_cast<CRSPtr>(GeographicCRS::EPSG_4979.as_nullable()),
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo2.bin")},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  EXPECT_FALSE(sop1->isEquivalentTo(sop4.get()));      
   end operation_SingleOperation;

   procedure operation_SingleOperation_different_order (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto sop1 = Transformation::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "ignored1"),
--  GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4807, nullptr,
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName")),
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin"),
--  ParameterValue::createFilename("foo2.bin")},
--  {});
--  
--  auto sop2 = Transformation::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "ignored2"),
--  GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4807, nullptr,
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2")),
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo2.bin"),
--  ParameterValue::createFilename("foo.bin")},
--  {});
--  
--  auto sop3 = Transformation::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "ignored3"),
--  GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4807, nullptr,
--  PropertyMap(),
--  std::vector<OperationParameterNNPtr>{
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName")),
--  OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName2"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo2.bin"),
--  ParameterValue::createFilename("foo.bin")},
--  {});
--  
--  EXPECT_FALSE(sop1->isEquivalentTo(sop2.get()));
--  EXPECT_TRUE(
--  sop1->isEquivalentTo(sop2.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(
--  sop1->isEquivalentTo(sop3.get(), IComparable::Criterion::EQUIVALENT));      
   end operation_SingleOperation_different_order;

   procedure operation_transformation_to_wkt (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  PropertyMap propertiesTransformation;
--  propertiesTransformation
--  .set(Identifier::CODESPACE_KEY, "codeSpaceTransformation")
--  .set(Identifier::CODE_KEY, "codeTransformation")
--  .set(IdentifiedObject::NAME_KEY, "transformationName")
--  .set(IdentifiedObject::REMARKS_KEY, "my remarks");
--  
--  auto transf = Transformation::create(
--  propertiesTransformation,
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4326),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807),
--  static_cast<CRSPtr>(GeographicCRS::EPSG_4979.as_nullable()),
--  PropertyMap()
--  .set(Identifier::CODESPACE_KEY, "codeSpaceOperationMethod")
--  .set(Identifier::CODE_KEY, "codeOperationMethod")
--  .set(IdentifiedObject::NAME_KEY, "operationMethodName"),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  
--  std::string src_wkt;
--  {
--  auto formatter = WKTFormatter::create();
--  formatter->setOutputId(false);
--  src_wkt = GeographicCRS::EPSG_4326->exportToWKT(formatter.get());
--  }
--  
--  std::string dst_wkt;
--  {
--  auto formatter = WKTFormatter::create();
--  formatter->setOutputId(false);
--  dst_wkt = GeographicCRS::EPSG_4807->exportToWKT(formatter.get());
--  }
--  
--  std::string interpolation_wkt;
--  {
--  auto formatter = WKTFormatter::create();
--  formatter->setOutputId(false);
--  interpolation_wkt =
--  GeographicCRS::EPSG_4979->exportToWKT(formatter.get());
--  }
--  
--  auto expected =
--  "COORDINATEOPERATION[\"transformationName\",\n"
--  "    SOURCECRS[" +
--  src_wkt + "],\n"
--  "    TARGETCRS[" +
--  dst_wkt +
--  "],\n"
--  "    METHOD[\"operationMethodName\",\n"
--  "        ID[\"codeSpaceOperationMethod\",\"codeOperationMethod\"]],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"],\n"
--  "    INTERPOLATIONCRS[" +
--  interpolation_wkt +
--  "],\n"
--  "    OPERATIONACCURACY[0.1],\n"
--  "    ID[\"codeSpaceTransformation\",\"codeTransformation\"],\n"
--  "    REMARK[\"my remarks\"]]";
--  
--  EXPECT_EQ(
--  replaceAll(replaceAll(transf->exportToWKT(WKTFormatter::create().get()),
--  " ", ""),
--  "\n", ""),
--  replaceAll(replaceAll(expected, " ", ""), "\n", ""));
--  
--  EXPECT_THROW(
--  transf->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  FormattingException);
--  
--  EXPECT_TRUE(transf->isEquivalentTo(transf.get()));
--  EXPECT_FALSE(transf->isEquivalentTo(createUnrelatedObject().get()));      
   end operation_transformation_to_wkt;

   procedure operation_concatenated_operation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  PropertyMap propertiesTransformation;
--  propertiesTransformation
--  .set(Identifier::CODESPACE_KEY, "codeSpaceTransformation")
--  .set(Identifier::CODE_KEY, "codeTransformation")
--  .set(IdentifiedObject::NAME_KEY, "transformationName")
--  .set(IdentifiedObject::REMARKS_KEY, "my remarks");
--  
--  auto transf_1 = Transformation::create(
--  propertiesTransformation,
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4326),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807), nullptr,
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "operationMethodName"),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  auto transf_2 = Transformation::create(
--  propertiesTransformation,
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4979), nullptr,
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "operationMethodName"),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  auto concat = ConcatenatedOperation::create(
--  PropertyMap()
--  .set(Identifier::CODESPACE_KEY, "codeSpace")
--  .set(Identifier::CODE_KEY, "code")
--  .set(IdentifiedObject::NAME_KEY, "name")
--  .set(IdentifiedObject::REMARKS_KEY, "my remarks"),
--  std::vector<CoordinateOperationNNPtr>{transf_1, transf_2},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  
--  std::string src_wkt;
--  {
--  auto formatter =
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019);
--  src_wkt = GeographicCRS::EPSG_4326->exportToWKT(formatter.get());
--  }
--  
--  std::string dst_wkt;
--  {
--  auto formatter =
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019);
--  dst_wkt = GeographicCRS::EPSG_4979->exportToWKT(formatter.get());
--  }
--  
--  std::string step1_wkt;
--  {
--  auto formatter =
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019);
--  step1_wkt = transf_1->exportToWKT(formatter.get());
--  }
--  
--  std::string step2_wkt;
--  {
--  auto formatter =
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019);
--  step2_wkt = transf_2->exportToWKT(formatter.get());
--  }
--  
--  auto expected = "CONCATENATEDOPERATION[\"name\",\n"
--  "    SOURCECRS[" +
--  src_wkt + "],\n"
--  "    TARGETCRS[" +
--  dst_wkt + "],\n"
--  "    STEP[" +
--  step1_wkt + "],\n"
--  "    STEP[" +
--  step2_wkt + "],\n"
--  "    ID[\"codeSpace\",\"code\"],\n"
--  "    REMARK[\"my remarks\"]]";
--  
--  EXPECT_EQ(replaceAll(replaceAll(concat->exportToWKT(
--  WKTFormatter::create(
--  WKTFormatter::Convention::WKT2_2019)
--  .get()),
--  " ", ""),
--  "\n", ""),
--  replaceAll(replaceAll(expected, " ", ""), "\n", ""));
--  
--  EXPECT_THROW(concat->exportToWKT(WKTFormatter::create().get()),
--  FormattingException);
--  
--  EXPECT_THROW(ConcatenatedOperation::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "name"),
--  std::vector<CoordinateOperationNNPtr>{transf_1, transf_1},
--  std::vector<PositionalAccuracyNNPtr>()),
--  InvalidOperation);
--  
--  auto inv = concat->inverse();
--  EXPECT_EQ(inv->nameStr(), "Inverse of name");
--  EXPECT_EQ(inv->sourceCRS()->nameStr(), concat->targetCRS()->nameStr());
--  EXPECT_EQ(inv->targetCRS()->nameStr(), concat->sourceCRS()->nameStr());
--  auto inv_as_concat = nn_dynamic_pointer_cast<ConcatenatedOperation>(inv);
--  ASSERT_TRUE(inv_as_concat != nullptr);
--  
--  ASSERT_EQ(inv_as_concat->operations().size(), 2U);
--  EXPECT_EQ(inv_as_concat->operations()[0]->nameStr(),
--  "Inverse of transformationName");
--  EXPECT_EQ(inv_as_concat->operations()[1]->nameStr(),
--  "Inverse of transformationName");
--  
--  EXPECT_TRUE(concat->isEquivalentTo(concat.get()));
--  EXPECT_FALSE(concat->isEquivalentTo(createUnrelatedObject().get()));
--  EXPECT_TRUE(concat->isEquivalentTo(
--  concat->CoordinateOperation::shallowClone().get()));
--  EXPECT_FALSE(
--  ConcatenatedOperation::create(PropertyMap(),
--  std::vector<CoordinateOperationNNPtr>{
--  transf_1, transf_1->inverse()},
--  std::vector<PositionalAccuracyNNPtr>())
--  ->isEquivalentTo(ConcatenatedOperation::create(
--  PropertyMap(),
--  std::vector<CoordinateOperationNNPtr>{
--  transf_1->inverse(), transf_1},
--  std::vector<PositionalAccuracyNNPtr>())
--  .get()));
--  EXPECT_FALSE(
--  ConcatenatedOperation::create(PropertyMap(),
--  std::vector<CoordinateOperationNNPtr>{
--  transf_1, transf_1->inverse()},
--  std::vector<PositionalAccuracyNNPtr>())
--  ->isEquivalentTo(ConcatenatedOperation::create(
--  PropertyMap(),
--  std::vector<CoordinateOperationNNPtr>{
--  transf_1, transf_1->inverse(), transf_1},
--  std::vector<PositionalAccuracyNNPtr>())
--  .get()));      
   end operation_concatenated_operation;

   procedure operation_transformation_createGeocentricTranslations (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createGeocentricTranslations(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_TRUE(transf->validateParameters().empty());
--  
--  auto params = transf->getTOWGS84Parameters();
--  auto expected = std::vector<double>{1.0, 2.0, 3.0, 0.0, 0.0, 0.0, 0.0};
--  EXPECT_EQ(params, expected);
--  
--  auto inv_transf = transf->inverse();
--  auto inv_transf_as_transf =
--  nn_dynamic_pointer_cast<Transformation>(inv_transf);
--  ASSERT_TRUE(inv_transf_as_transf != nullptr);
--  
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  inv_transf_as_transf->targetCRS()->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  inv_transf_as_transf->sourceCRS()->nameStr());
--  auto expected_inv =
--  std::vector<double>{-1.0, -2.0, -3.0, 0.0, 0.0, 0.0, 0.0};
--  EXPECT_EQ(inv_transf_as_transf->getTOWGS84Parameters(), expected_inv);
--  
--  EXPECT_EQ(transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=GRS80 +step +proj=helmert +x=1 +y=2 "
--  "+z=3 +step +inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg +step "
--  "+proj=axisswap +order=2,1");      
   end operation_transformation_createGeocentricTranslations;

   procedure operation_transformation_createGeocentricTranslations_null (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createGeocentricTranslations(
--  PropertyMap(), createGeocentricDatumWGS84(),
--  createGeocentricDatumWGS84(), 0.0, 0.0, 0.0,
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  EXPECT_EQ(transf->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=noop");      
   end operation_transformation_createGeocentricTranslations_null;

   procedure operation_transformation_createGeocentricTranslations_neg_zero (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createGeocentricTranslations(
--  PropertyMap(), createGeocentricDatumWGS84(),
--  createGeocentricDatumWGS84(), 1.0, -0.0, 0.0,
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  EXPECT_EQ(transf->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=helmert +x=-1 +y=0 +z=0");      
   end operation_transformation_createGeocentricTranslations_neg_zero;

   procedure operation_transformation_createPositionVector (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("100")});
--  EXPECT_TRUE(transf->validateParameters().empty());
--  
--  ASSERT_EQ(transf->coordinateOperationAccuracies().size(), 1U);
--  
--  auto expected = std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0};
--  EXPECT_EQ(transf->getTOWGS84Parameters(), expected);
--  
--  EXPECT_EQ(transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=GRS80 +step +proj=helmert +x=1 +y=2 "
--  "+z=3 +rx=4 +ry=5 +rz=6 +s=7 +convention=position_vector +step "
--  "+inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");
--  
--  auto inv_transf = transf->inverse();
--  ASSERT_EQ(inv_transf->coordinateOperationAccuracies().size(), 1U);
--  
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  inv_transf->targetCRS()->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  inv_transf->sourceCRS()->nameStr());
--  
--  #ifdef USE_APPROXIMATE_HELMERT_INVERSE
--  auto inv_transf_as_transf =
--  nn_dynamic_pointer_cast<Transformation>(inv_transf);
--  ASSERT_TRUE(inv_transf_as_transf != nullptr);
--  #else
--  EXPECT_EQ(
--  inv_transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 +step "
--  "+proj=cart +ellps=WGS84 +step +inv +proj=helmert +x=1 +y=2 +z=3 +rx=4 "
--  "+ry=5 +rz=6 +s=7 +convention=position_vector +step +inv +proj=cart "
--  "+ellps=GRS80 +step +proj=pop +v_3 +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  
--  // In WKT, use approximate formula
--  auto wkt = inv_transf->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(
--  wkt.find("Transformation from WGS 84 to NAD83 (approx. inversion)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("Position Vector transformation (geog2D domain)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("ID[\"EPSG\",9606]]") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis translation\",-1") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis translation\",-2") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis translation\",-3") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis rotation\",-4") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis rotation\",-5") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis rotation\",-6") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Scale difference\",-7") != std::string::npos)
--  << wkt;
--  #endif      
   end operation_transformation_createPositionVector;

   procedure operation_transformation_createCoordinateFrameRotation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createCoordinateFrameRotation(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, -4.0, -5.0, -6.0, 7.0,
--  std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_TRUE(transf->validateParameters().empty());
--  
--  auto params = transf->getTOWGS84Parameters();
--  auto expected = std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0};
--  EXPECT_EQ(params, expected);
--  
--  EXPECT_EQ(transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=GRS80 +step +proj=helmert +x=1 +y=2 "
--  "+z=3 +rx=-4 +ry=-5 +rz=-6 +s=7 +convention=coordinate_frame "
--  "+step +inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");
--  
--  auto inv_transf = transf->inverse();
--  ASSERT_EQ(inv_transf->coordinateOperationAccuracies().size(), 0U);
--  
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  inv_transf->targetCRS()->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  inv_transf->sourceCRS()->nameStr());
--  
--  #ifdef USE_APPROXIMATE_HELMERT_INVERSE
--  auto inv_transf_as_transf =
--  nn_dynamic_pointer_cast<Transformation>(inv_transf);
--  ASSERT_TRUE(inv_transf_as_transf != nullptr);
--  #else
--  EXPECT_EQ(
--  inv_transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 +step "
--  "+proj=cart +ellps=WGS84 +step +inv +proj=helmert +x=1 +y=2 +z=3 "
--  "+rx=-4 +ry=-5 +rz=-6 +s=7 +convention=coordinate_frame +step +inv "
--  "+proj=cart +ellps=GRS80 +step +proj=pop +v_3 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");
--  
--  // In WKT, use approximate formula
--  auto wkt = inv_transf->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(
--  wkt.find("Transformation from WGS 84 to NAD83 (approx. inversion)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("Coordinate Frame rotation (geog2D domain)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("ID[\"EPSG\",9607]]") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis translation\",-1") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis translation\",-2") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis translation\",-3") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis rotation\",4") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis rotation\",5") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis rotation\",6") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Scale difference\",-7") != std::string::npos)
--  << wkt;
--  #endif      
   end operation_transformation_createCoordinateFrameRotation;

   procedure operation_transformation_createTimeDependentPositionVector (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createTimeDependentPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 2018.5,
--  std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_TRUE(transf->validateParameters().empty());
--  
--  auto inv_transf = transf->inverse();
--  
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  inv_transf->targetCRS()->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  inv_transf->sourceCRS()->nameStr());
--  
--  auto projString =
--  inv_transf->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_TRUE(projString.find("+proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 "
--  "+rz=6 +s=7 +dx=0.1 +dy=0.2 +dz=0.3 +drx=0.4 "
--  "+dry=0.5 +drz=0.6 +ds=0.7 +t_epoch=2018.5 "
--  "+convention=position_vector") !=
--  std::string::npos)
--  << projString;
--  
--  // In WKT, use approximate formula
--  auto wkt = inv_transf->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(
--  wkt.find("Transformation from WGS 84 to NAD83 (approx. inversion)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("Time-dependent Position Vector tfm (geog2D)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("ID[\"EPSG\",1054]]") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis translation\",-1") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis translation\",-2") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis translation\",-3") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis rotation\",-4") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis rotation\",-5") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis rotation\",-6") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Scale difference\",-7") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of X-axis translation\",-0.1") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Y-axis translation\",-0.2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Z-axis translation\",-0.3") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of X-axis rotation\",-0.4") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Y-axis rotation\",-0.5") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Z-axis rotation\",-0.6") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Scale difference\",-0.7") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Parameter reference epoch\",2018.5") !=
--  std::string::npos)
--  << wkt;      
   end operation_transformation_createTimeDependentPositionVector;

   procedure operation_transformation_createTimeDependentCoordinateFrameRotation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createTimeDependentCoordinateFrameRotation(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 2018.5,
--  std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_TRUE(transf->validateParameters().empty());
--  
--  auto inv_transf = transf->inverse();
--  
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  inv_transf->targetCRS()->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  inv_transf->sourceCRS()->nameStr());
--  
--  auto projString =
--  inv_transf->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_TRUE(projString.find("+proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 "
--  "+rz=6 +s=7 +dx=0.1 +dy=0.2 +dz=0.3 +drx=0.4 "
--  "+dry=0.5 +drz=0.6 +ds=0.7 +t_epoch=2018.5 "
--  "+convention=coordinate_frame") !=
--  std::string::npos)
--  << projString;
--  
--  // In WKT, use approximate formula
--  auto wkt = inv_transf->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(
--  wkt.find("Transformation from WGS 84 to NAD83 (approx. inversion)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("Time-dependent Coordinate Frame rotation (geog2D)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("ID[\"EPSG\",1057]]") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis translation\",-1") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis translation\",-2") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis translation\",-3") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"X-axis rotation\",-4") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Y-axis rotation\",-5") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Z-axis rotation\",-6") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("\"Scale difference\",-7") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of X-axis translation\",-0.1") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Y-axis translation\",-0.2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Z-axis translation\",-0.3") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of X-axis rotation\",-0.4") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Y-axis rotation\",-0.5") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Z-axis rotation\",-0.6") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Rate of change of Scale difference\",-0.7") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Parameter reference epoch\",2018.5") !=
--  std::string::npos)
--  << wkt;      
   end operation_transformation_createTimeDependentCoordinateFrameRotation;

   procedure operation_transformation_successive_helmert_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf_1 = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4269, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, std::vector<PositionalAccuracyNNPtr>());
--  auto transf_2 = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, -1.0,
--  -2.0, -3.0, -4.0, -5.0, -6.0, -7.0,
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  auto concat = ConcatenatedOperation::create(
--  PropertyMap(),
--  std::vector<CoordinateOperationNNPtr>{transf_1, transf_2},
--  std::vector<PositionalAccuracyNNPtr>{});
--  
--  EXPECT_EQ(concat->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");      
   end operation_transformation_successive_helmert_noop;

   procedure operation_transformation_successive_helmert_non_trivial_1 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf_1 = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4269, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, std::vector<PositionalAccuracyNNPtr>());
--  auto transf_2 = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, -1.0,
--  -2.0, -3.0, -4.0, -5.0, -6.0, 7.0,
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  auto concat = ConcatenatedOperation::create(
--  PropertyMap(),
--  std::vector<CoordinateOperationNNPtr>{transf_1, transf_2},
--  std::vector<PositionalAccuracyNNPtr>{});
--  
--  EXPECT_NE(concat->exportToPROJString(PROJStringFormatter::create().get()),
--  "");      
   end operation_transformation_successive_helmert_non_trivial_1;

   procedure operation_transformation_successive_helmert_non_trivial_2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf_1 = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4269, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, std::vector<PositionalAccuracyNNPtr>());
--  auto transf_2 = Transformation::createCoordinateFrameRotation(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, -1.0,
--  -2.0, -3.0, -4.0, -5.0, -6.0, -7.0,
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  auto concat = ConcatenatedOperation::create(
--  PropertyMap(),
--  std::vector<CoordinateOperationNNPtr>{transf_1, transf_2},
--  std::vector<PositionalAccuracyNNPtr>{});
--  
--  EXPECT_NE(concat->exportToPROJString(PROJStringFormatter::create().get()),
--  "");      
   end operation_transformation_successive_helmert_non_trivial_2;

   procedure operation_transformation_createMolodensky (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createMolodensky(
--  PropertyMap(), GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4269, 1.0,
--  2.0, 3.0, 4.0, 5.0, std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_TRUE(transf->validateParameters().empty());
--  
--  auto wkt = transf->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(replaceAll(replaceAll(wkt, " ", ""), "\n", "")
--  .find("METHOD[\"Molodensky\",ID[\"EPSG\",9604]]") !=
--  std::string::npos)
--  << wkt;
--  
--  auto inv_transf = transf->inverse();
--  auto inv_transf_as_transf =
--  nn_dynamic_pointer_cast<Transformation>(inv_transf);
--  ASSERT_TRUE(inv_transf_as_transf != nullptr);
--  
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  inv_transf_as_transf->targetCRS()->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  inv_transf_as_transf->sourceCRS()->nameStr());
--  
--  auto projString = inv_transf_as_transf->exportToPROJString(
--  PROJStringFormatter::create().get());
--  EXPECT_EQ(projString, "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=molodensky +ellps=GRS80 +dx=-1 +dy=-2 "
--  "+dz=-3 +da=-4 +df=-5 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_transformation_createMolodensky;

   procedure operation_transformation_createAbridgedMolodensky (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::createAbridgedMolodensky(
--  PropertyMap(), GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4269, 1.0,
--  2.0, 3.0, 4.0, 5.0, std::vector<PositionalAccuracyNNPtr>());
--  
--  auto wkt = transf->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(replaceAll(replaceAll(wkt, " ", ""), "\n", "")
--  .find(replaceAll(
--  "METHOD[\"Abridged Molodensky\",ID[\"EPSG\",9605]]",
--  " ", "")) != std::string::npos)
--  << wkt;
--  
--  auto inv_transf = transf->inverse();
--  auto inv_transf_as_transf =
--  nn_dynamic_pointer_cast<Transformation>(inv_transf);
--  ASSERT_TRUE(inv_transf_as_transf != nullptr);
--  
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  inv_transf_as_transf->targetCRS()->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  inv_transf_as_transf->sourceCRS()->nameStr());
--  
--  auto projString = inv_transf_as_transf->exportToPROJString(
--  PROJStringFormatter::create().get());
--  EXPECT_EQ(projString, "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=molodensky +ellps=GRS80 +dx=-1 +dy=-2 "
--  "+dz=-3 +da=-4 +df=-5 +abridged +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step "
--  "+proj=axisswap +order=2,1");      
   end operation_transformation_createAbridgedMolodensky;

   procedure operation_transformation_inverse (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf = Transformation::create(
--  PropertyMap()
--  .set(IdentifiedObject::NAME_KEY, "my transformation")
--  .set(Identifier::CODESPACE_KEY, "my codeSpace")
--  .set(Identifier::CODE_KEY, "my code"),
--  GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4269, nullptr,
--  PropertyMap()
--  .set(IdentifiedObject::NAME_KEY, "my operation")
--  .set(Identifier::CODESPACE_KEY, "my codeSpace")
--  .set(Identifier::CODE_KEY, "my code"),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  auto inv = transf->inverse();
--  EXPECT_EQ(inv->inverse(), transf);
--  EXPECT_EQ(
--  inv->exportToWKT(WKTFormatter::create().get()),
--  "COORDINATEOPERATION[\"Inverse of my transformation\",\n"
--  "    SOURCECRS[\n"
--  "        GEODCRS[\"NAD83\",\n"
--  "            DATUM[\"North American Datum 1983\",\n"
--  "                ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[ellipsoidal,2],\n"
--  "                AXIS[\"latitude\",north,\n"
--  "                    ORDER[1],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"longitude\",east,\n"
--  "                    ORDER[2],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]]]],\n"
--  "    TARGETCRS[\n"
--  "        GEODCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[ellipsoidal,2],\n"
--  "                AXIS[\"latitude\",north,\n"
--  "                    ORDER[1],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"longitude\",east,\n"
--  "                    ORDER[2],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]]]],\n"
--  "    METHOD[\"Inverse of my operation\",\n"
--  "        ID[\"INVERSE(my codeSpace)\",\"my code\"]],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"],\n"
--  "    OPERATIONACCURACY[0.1],\n"
--  "    ID[\"INVERSE(my codeSpace)\",\"my code\"]]");
--  
--  EXPECT_THROW(inv->exportToPROJString(PROJStringFormatter::create().get()),
--  FormattingException);      
   end operation_transformation_inverse;

   procedure operation_transformation_createTOWGS84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_THROW(Transformation::createTOWGS84(GeographicCRS::EPSG_4326,
--  std::vector<double>()),
--  InvalidOperation);
--  
--  auto crsIn = CompoundCRS::create(PropertyMap(), std::vector<CRSNNPtr>{});
--  EXPECT_THROW(
--  Transformation::createTOWGS84(crsIn, std::vector<double>(7, 0)),
--  InvalidOperation);      
   end operation_transformation_createTOWGS84;

   procedure operation_createAxisOrderReversal (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  {
--  auto conv = Conversion::createAxisOrderReversal(false);
--  EXPECT_TRUE(conv->validateParameters().empty());
--  }
--  {
--  auto conv = Conversion::createAxisOrderReversal(true);
--  EXPECT_TRUE(conv->validateParameters().empty());
--  }
--  
--  auto latLongDeg = GeographicCRS::create(
--  PropertyMap(), GeodeticReferenceFrame::EPSG_6326,
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE));
--  auto longLatDeg = GeographicCRS::create(
--  PropertyMap(), GeodeticReferenceFrame::EPSG_6326,
--  EllipsoidalCS::createLongitudeLatitude(UnitOfMeasure::DEGREE));
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  latLongDeg, longLatDeg);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=2,1");
--  }
--  {
--  auto longLatRad = GeographicCRS::create(
--  PropertyMap(), GeodeticReferenceFrame::EPSG_6326,
--  EllipsoidalCS::createLongitudeLatitude(UnitOfMeasure::RADIAN));
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  longLatRad, latLongDeg);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");
--  }      
   end operation_createAxisOrderReversal;

   procedure operation_utm_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createUTM(PropertyMap(), 1, false);
--  EXPECT_TRUE(conv->validateParameters().empty());
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=utm +zone=1 +south");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"UTM zone 1S\",\n"
--  "    METHOD[\"Transverse Mercator\",\n"
--  "        ID[\"EPSG\",9807]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",-177,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",500000,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",10000000,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]],\n"
--  "    ID[\"EPSG\",17001]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Transverse_Mercator\"],\n"
--  "PARAMETER[\"latitude_of_origin\",0],\n"
--  "PARAMETER[\"central_meridian\",-177],\n"
--  "PARAMETER[\"scale_factor\",0.9996],\n"
--  "PARAMETER[\"false_easting\",500000],\n"
--  "PARAMETER[\"false_northing\",10000000]");      
   end operation_utm_export;

   procedure operation_tmerc_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createTransverseMercator(
--  PropertyMap(), Angle(1), Angle(2), Scale(3), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=tmerc +lat_0=1 +lon_0=2 +k=3 +x_0=4 +y_0=5");
--  
--  {
--  auto formatter = PROJStringFormatter::create();
--  formatter->setUseApproxTMerc(true);
--  EXPECT_EQ(conv->exportToPROJString(formatter.get()),
--  "+proj=tmerc +approx +lat_0=1 +lon_0=2 +k=3 +x_0=4 +y_0=5");
--  }
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Transverse Mercator\",\n"
--  "    METHOD[\"Transverse Mercator\",\n"
--  "        ID[\"EPSG\",9807]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Transverse_Mercator\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"scale_factor\",3],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_tmerc_export;

   procedure operation_gstmerc_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createGaussSchreiberTransverseMercator(
--  PropertyMap(), Angle(1), Angle(2), Scale(3), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=gstmerc +lat_0=1 +lon_0=2 +k_0=3 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Gauss Schreiber Transverse Mercator\",\n"
--  "    METHOD[\"Gauss Schreiber Transverse Mercator\"],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Gauss_Schreiber_Transverse_Mercator\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"scale_factor\",3],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_gstmerc_export;

   procedure operation_tmerc_south_oriented_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createTransverseMercatorSouthOriented(
--  PropertyMap(), Angle(1), Angle(2), Scale(3), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=tmerc +axis=wsu +lat_0=1 +lon_0=2 +k=3 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Transverse Mercator (South Orientated)\",\n"
--  "    METHOD[\"Transverse Mercator (South Orientated)\",\n"
--  "        ID[\"EPSG\",9808]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Transverse_Mercator_South_Orientated\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"scale_factor\",3],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");
--  
--  auto wkt = "PROJCRS[\"Hartebeesthoek94 / Lo29\","
--  "  BASEGEODCRS[\"Hartebeesthoek94\","
--  "    DATUM[\"Hartebeesthoek94\","
--  "      ELLIPSOID[\"WGS "
--  "84\",6378137,298.257223563,LENGTHUNIT[\"metre\",1.0]]]],"
--  "  CONVERSION[\"South African Survey Grid zone 29\","
--  "    METHOD[\"Transverse Mercator (South "
--  "Orientated)\",ID[\"EPSG\",9808]],"
--  "    PARAMETER[\"Latitude of natural "
--  "origin\",0,ANGLEUNIT[\"degree\",0.01745329252]],"
--  "    PARAMETER[\"Longitude of natural "
--  "origin\",29,ANGLEUNIT[\"degree\",0.01745329252]],"
--  "    PARAMETER[\"Scale factor at natural "
--  "origin\",1,SCALEUNIT[\"unity\",1.0]],"
--  "    PARAMETER[\"False easting\",0,LENGTHUNIT[\"metre\",1.0]],"
--  "    PARAMETER[\"False northing\",0,LENGTHUNIT[\"metre\",1.0]]],"
--  "  CS[cartesian,2],"
--  "    AXIS[\"westing (Y)\",west,ORDER[1]],"
--  "    AXIS[\"southing (X)\",south,ORDER[2]],"
--  "    LENGTHUNIT[\"metre\",1.0],"
--  "  ID[\"EPSG\",2053]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=tmerc +axis=wsu +lat_0=0 +lon_0=29 +k=1 +x_0=0 +y_0=0 "
--  "+ellps=WGS84 +units=m +no_defs +type=crs");      
   end operation_tmerc_south_oriented_export;

   procedure operation_tped_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createTwoPointEquidistant(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Length(5),
--  Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=tpeqd +lat_1=1 +lon_1=2 +lat_2=3 +lon_2=4 +x_0=5 +y_0=6");
--  
--  auto formatter = WKTFormatter::create();
--  formatter->simulCurNodeHasId();
--  EXPECT_EQ(conv->exportToWKT(formatter.get()),
--  "CONVERSION[\"Two Point Equidistant\",\n"
--  "    METHOD[\"Two Point Equidistant\"],\n"
--  "    PARAMETER[\"Latitude of 1st point\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Longitude of 1st point\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Latitude of 2nd point\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Longitude of 2nd point\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"False easting\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Two_Point_Equidistant\"],\n"
--  "PARAMETER[\"Latitude_Of_1st_Point\",1],\n"
--  "PARAMETER[\"Longitude_Of_1st_Point\",2],\n"
--  "PARAMETER[\"Latitude_Of_2nd_Point\",3],\n"
--  "PARAMETER[\"Longitude_Of_2nd_Point\",4],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_tped_export;

   procedure operation_tmg_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createTunisiaMappingGrid(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_THROW(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  FormattingException);
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Tunisia Mapping Grid\",\n"
--  "    METHOD[\"Tunisia Mapping Grid\",\n"
--  "        ID[\"EPSG\",9816]],\n"
--  "    PARAMETER[\"Latitude of false origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8821]],\n"
--  "    PARAMETER[\"Longitude of false origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8822]],\n"
--  "    PARAMETER[\"Easting at false origin\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8826]],\n"
--  "    PARAMETER[\"Northing at false origin\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8827]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Tunisia_Mapping_Grid\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_tmg_export;

   procedure operation_aea_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createAlbersEqualArea(PropertyMap(), Angle(1),
--  Angle(2), Angle(3), Angle(4),
--  Length(5), Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=aea +lat_0=1 +lon_0=2 +lat_1=3 +lat_2=4 +x_0=5 +y_0=6");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Albers Equal Area\",\n"
--  "    METHOD[\"Albers Equal Area\",\n"
--  "        ID[\"EPSG\",9822]],\n"
--  "    PARAMETER[\"Latitude of false origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8821]],\n"
--  "    PARAMETER[\"Longitude of false origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8822]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Latitude of 2nd standard parallel\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8824]],\n"
--  "    PARAMETER[\"Easting at false origin\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8826]],\n"
--  "    PARAMETER[\"Northing at false origin\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8827]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Albers_Conic_Equal_Area\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"standard_parallel_1\",3],\n"
--  "PARAMETER[\"standard_parallel_2\",4],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_aea_export;

   procedure operation_azimuthal_equidistant_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createAzimuthalEquidistant(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=aeqd +lat_0=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Modified Azimuthal Equidistant\",\n"
--  "    METHOD[\"Modified Azimuthal Equidistant\",\n"
--  "        ID[\"EPSG\",9832]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Azimuthal_Equidistant\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_azimuthal_equidistant_export;

   procedure operation_guam_projection_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createGuamProjection(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=aeqd +guam +lat_0=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Guam Projection\",\n"
--  "    METHOD[\"Guam Projection\",\n"
--  "        ID[\"EPSG\",9831]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_THROW(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  FormattingException);      
   end operation_guam_projection_export;

   procedure operation_bonne_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createBonne(PropertyMap(), Angle(1), Angle(2),
--  Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=bonne +lat_1=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Bonne\",\n"
--  "    METHOD[\"Bonne\",\n"
--  "        ID[\"EPSG\",9827]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Bonne\"],\n"
--  "PARAMETER[\"standard_parallel_1\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");
--  
--  auto obj = WKTParser().createFromWKT(
--  "PROJCS[\"unnamed\","
--  "GEOGCS[\"unnamed ellipse\","
--  "    DATUM[\"unknown\","
--  "        SPHEROID[\"unnamed\",6378137,298.257223563]],"
--  "    PRIMEM[\"Greenwich\",0],"
--  "    UNIT[\"degree\",0.0174532925199433]],"
--  "PROJECTION[\"Bonne\"],"
--  "PARAMETER[\"standard_parallel_1\",1],"
--  "PARAMETER[\"central_meridian\",2],"
--  "PARAMETER[\"false_easting\",3],"
--  "PARAMETER[\"false_northing\",4],"
--  "UNIT[\"metre\",1]]");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=bonne +lat_1=1 +lon_0=2 +x_0=3 +y_0=4 +ellps=WGS84 "
--  "+units=m +no_defs +type=crs");      
   end operation_bonne_export;

   procedure operation_lambert_cylindrical_equal_area_spherical_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLambertCylindricalEqualAreaSpherical(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=cea +lat_ts=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Lambert Cylindrical Equal Area (Spherical)\",\n"
--  "    METHOD[\"Lambert Cylindrical Equal Area (Spherical)\",\n"
--  "        ID[\"EPSG\",9834]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Cylindrical_Equal_Area\"],\n"
--  "PARAMETER[\"standard_parallel_1\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_lambert_cylindrical_equal_area_spherical_export;

   procedure operation_lambert_cylindrical_equal_area_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLambertCylindricalEqualArea(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=cea +lat_ts=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Lambert Cylindrical Equal Area\",\n"
--  "    METHOD[\"Lambert Cylindrical Equal Area\",\n"
--  "        ID[\"EPSG\",9835]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Cylindrical_Equal_Area\"],\n"
--  "PARAMETER[\"standard_parallel_1\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_lambert_cylindrical_equal_area_export;

   procedure operation_lcc1sp_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLambertConicConformal_1SP(
--  PropertyMap(), Angle(1), Angle(2), Scale(3), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=lcc +lat_1=1 +lat_0=1 +lon_0=2 +k_0=3 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Lambert Conic Conformal (1SP)\",\n"
--  "    METHOD[\"Lambert Conic Conformal (1SP)\",\n"
--  "        ID[\"EPSG\",9801]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Lambert_Conformal_Conic_1SP\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"scale_factor\",3],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_lcc1sp_export;

   procedure operation_lcc2sp_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Length(5),
--  Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=lcc +lat_0=1 +lon_0=2 +lat_1=3 +lat_2=4 +x_0=5 +y_0=6");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Lambert Conic Conformal (2SP)\",\n"
--  "    METHOD[\"Lambert Conic Conformal (2SP)\",\n"
--  "        ID[\"EPSG\",9802]],\n"
--  "    PARAMETER[\"Latitude of false origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8821]],\n"
--  "    PARAMETER[\"Longitude of false origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8822]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Latitude of 2nd standard parallel\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8824]],\n"
--  "    PARAMETER[\"Easting at false origin\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8826]],\n"
--  "    PARAMETER[\"Northing at false origin\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8827]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Lambert_Conformal_Conic_2SP\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"standard_parallel_1\",3],\n"
--  "PARAMETER[\"standard_parallel_2\",4],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_lcc2sp_export;

   procedure operation_lcc2sp_isEquivalentTo_parallels_switched (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv1 = Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Length(5),
--  Length(6));
--  auto conv2 = Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(1), Angle(2), Angle(4), Angle(3), Length(5),
--  Length(6));
--  
--  EXPECT_TRUE(
--  conv1->isEquivalentTo(conv2.get(), IComparable::Criterion::EQUIVALENT));
--  
--  auto conv3 = Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(3), Length(5),
--  Length(6));
--  
--  EXPECT_FALSE(
--  conv1->isEquivalentTo(conv3.get(), IComparable::Criterion::EQUIVALENT));      
   end operation_lcc2sp_isEquivalentTo_parallels_switched;

   procedure operation_lcc2sp_michigan_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLambertConicConformal_2SP_Michigan(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Length(5),
--  Length(6), Scale(7));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(
--  conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=lcc +lat_0=1 +lon_0=2 +lat_1=3 +lat_2=4 +x_0=5 +y_0=6 +k_0=7");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Lambert Conic Conformal (2SP Michigan)\",\n"
--  "    METHOD[\"Lambert Conic Conformal (2SP Michigan)\",\n"
--  "        ID[\"EPSG\",1051]],\n"
--  "    PARAMETER[\"Latitude of false origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8821]],\n"
--  "    PARAMETER[\"Longitude of false origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8822]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Latitude of 2nd standard parallel\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8824]],\n"
--  "    PARAMETER[\"Easting at false origin\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8826]],\n"
--  "    PARAMETER[\"Northing at false origin\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8827]],\n"
--  "    PARAMETER[\"Ellipsoid scaling factor\",7,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",1038]]]");
--  
--  EXPECT_THROW(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  FormattingException);      
   end operation_lcc2sp_michigan_export;

   procedure operation_lcc2sp_belgium_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLambertConicConformal_2SP_Belgium(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Length(5),
--  Length(6));
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=lcc +lat_0=1 +lon_0=2 +lat_1=3 +lat_2=4 +x_0=5 +y_0=6");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Lambert Conic Conformal (2SP Belgium)\",\n"
--  "    METHOD[\"Lambert Conic Conformal (2SP Belgium)\",\n"
--  "        ID[\"EPSG\",9803]],\n"
--  "    PARAMETER[\"Latitude of false origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8821]],\n"
--  "    PARAMETER[\"Longitude of false origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8822]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Latitude of 2nd standard parallel\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8824]],\n"
--  "    PARAMETER[\"Easting at false origin\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8826]],\n"
--  "    PARAMETER[\"Northing at false origin\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8827]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Lambert_Conformal_Conic_2SP_Belgium\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"standard_parallel_1\",3],\n"
--  "PARAMETER[\"standard_parallel_2\",4],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_lcc2sp_belgium_export;

   procedure operation_cassini_soldner_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createCassiniSoldner(
--  PropertyMap(), Angle(1), Angle(2), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=cass +lat_0=1 +lon_0=2 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Cassini-Soldner\",\n"
--  "    METHOD[\"Cassini-Soldner\",\n"
--  "        ID[\"EPSG\",9806]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Cassini_Soldner\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_cassini_soldner_export;

   procedure operation_equidistant_conic_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createEquidistantConic(PropertyMap(), Angle(1),
--  Angle(2), Angle(3), Angle(4),
--  Length(5), Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=eqdc +lat_0=1 +lon_0=2 +lat_1=3 +lat_2=4 +x_0=5 +y_0=6");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Equidistant Conic\",\n"
--  "    METHOD[\"Equidistant Conic\"],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Latitude of 2nd standard parallel\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8824]],\n"
--  "    PARAMETER[\"False easting\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Equidistant_Conic\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"standard_parallel_1\",3],\n"
--  "PARAMETER[\"standard_parallel_2\",4],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_equidistant_conic_export;

   procedure operation_eckert_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  std::vector<std::string> numbers{"", "1", "2", "3", "4", "5", "6"};
--  std::vector<std::string> latinNumbers{"",   "I", "II", "III",
--  "IV", "V", "VI"};
--  
--  for (int i = 1; i <= 6; i++) {
--  auto conv =
--  (i == 1)
--  ? Conversion::createEckertI(PropertyMap(), Angle(1), Length(2),
--  Length(3))
--  : (i == 2)
--  ? Conversion::createEckertII(PropertyMap(), Angle(1),
--  Length(2), Length(3))
--  : (i == 3)
--  ? Conversion::createEckertIII(
--  PropertyMap(), Angle(1), Length(2), Length(3))
--  : (i == 4) ? Conversion::createEckertIV(
--  PropertyMap(), Angle(1), Length(2),
--  Length(3))
--  : (i == 5) ? Conversion::createEckertV(
--  PropertyMap(), Angle(1),
--  Length(2), Length(3))
--  :
--  
--  Conversion::createEckertVI(
--  PropertyMap(), Angle(1),
--  Length(2), Length(3));
--  
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=eck" + numbers[i] + " +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Eckert " + latinNumbers[i] +
--  "\",\n"
--  "    METHOD[\"Eckert " +
--  latinNumbers[i] +
--  "\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL)
--  .get()),
--  "PROJECTION[\"Eckert_" + latinNumbers[i] +
--  "\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");
--  }      
   end operation_eckert_export;

   procedure operation_createEquidistantCylindrical (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createEquidistantCylindrical(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=eqc +lat_ts=1 +lat_0=0 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Equidistant Cylindrical\",\n"
--  "    METHOD[\"Equidistant Cylindrical\",\n"
--  "        ID[\"EPSG\",1028]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Equirectangular\"],\n"
--  "PARAMETER[\"standard_parallel_1\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_createEquidistantCylindrical;

   procedure operation_createEquidistantCylindricalSpherical (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createEquidistantCylindricalSpherical(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=eqc +lat_ts=1 +lat_0=0 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Equidistant Cylindrical (Spherical)\",\n"
--  "    METHOD[\"Equidistant Cylindrical (Spherical)\",\n"
--  "        ID[\"EPSG\",1029]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Equirectangular\"],\n"
--  "PARAMETER[\"standard_parallel_1\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_createEquidistantCylindricalSpherical;

   procedure operation_equidistant_cylindrical_lat_0 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=eqc +ellps=sphere +lat_0=-2 +lat_ts=1 +lon_0=-10 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto wkt = crs->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Latitude of natural origin\",-2") !=
--  std::string::npos)
--  << wkt;
--  
--  auto projString = crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get());
--  EXPECT_EQ(projString,
--  "+proj=eqc +lat_ts=1 +lat_0=-2 +lon_0=-10 +x_0=0 +y_0=0 "
--  "+ellps=sphere +units=m +no_defs +type=crs");      
   end operation_equidistant_cylindrical_lat_0;

   procedure operation_gall_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv =
--  Conversion::createGall(PropertyMap(), Angle(1), Length(2), Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=gall +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Gall Stereographic\",\n"
--  "    METHOD[\"Gall Stereographic\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Gall_Stereographic\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");      
   end operation_gall_export;

   procedure operation_goode_homolosine_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createGoodeHomolosine(PropertyMap(), Angle(1),
--  Length(2), Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=goode +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Goode Homolosine\",\n"
--  "    METHOD[\"Goode Homolosine\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Goode_Homolosine\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");      
   end operation_goode_homolosine_export;

   procedure operation_interrupted_goode_homolosine_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createInterruptedGoodeHomolosine(
--  PropertyMap(), Angle(1), Length(2), Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=igh +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Interrupted Goode Homolosine\",\n"
--  "    METHOD[\"Interrupted Goode Homolosine\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Interrupted_Goode_Homolosine\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");      
   end operation_interrupted_goode_homolosine_export;

   procedure operation_geostationary_satellite_sweep_x_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createGeostationarySatelliteSweepX(
--  PropertyMap(), Angle(1), Length(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=geos +sweep=x +lon_0=1 +h=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Geostationary Satellite (Sweep X)\",\n"
--  "    METHOD[\"Geostationary Satellite (Sweep X)\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Satellite Height\",2,\n"
--  "        LENGTHUNIT[\"metre\",1,\n"
--  "            ID[\"EPSG\",9001]]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  auto crs = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326, conv,
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto wkt1 = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  EXPECT_TRUE(wkt1.find("PROJECTION[\"Geostationary_Satellite\"]") !=
--  std::string::npos)
--  << wkt1;
--  EXPECT_TRUE(wkt1.find("EXTENSION[\"PROJ4\",\"+proj=geos +sweep=x +lon_0=1 "
--  "+h=2 +x_0=3 +y_0=4 +datum=WGS84 +units=m "
--  "+no_defs\"]]") != std::string::npos)
--  << wkt1;      
   end operation_geostationary_satellite_sweep_x_export;

   procedure operation_geostationary_satellite_sweep_y_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createGeostationarySatelliteSweepY(
--  PropertyMap(), Angle(1), Length(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=geos +lon_0=1 +h=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Geostationary Satellite (Sweep Y)\",\n"
--  "    METHOD[\"Geostationary Satellite (Sweep Y)\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Satellite Height\",2,\n"
--  "        LENGTHUNIT[\"metre\",1,\n"
--  "            ID[\"EPSG\",9001]]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Geostationary_Satellite\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"satellite_height\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_geostationary_satellite_sweep_y_export;

   procedure operation_gnomonic_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createGnomonic(PropertyMap(), Angle(1), Angle(2),
--  Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=gnom +lat_0=1 +lon_0=2 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Gnomonic\",\n"
--  "    METHOD[\"Gnomonic\"],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Gnomonic\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_gnomonic_export;

   procedure operation_hotine_oblique_mercator_variant_A_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createHotineObliqueMercatorVariantA(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Scale(5),
--  Length(6), Length(7));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=omerc +no_uoff +lat_0=1 +lonc=2 +alpha=3 +gamma=4 +k=5 "
--  "+x_0=6 +y_0=7");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Hotine Oblique Mercator (variant A)\",\n"
--  "    METHOD[\"Hotine Oblique Mercator (variant A)\",\n"
--  "        ID[\"EPSG\",9812]],\n"
--  "    PARAMETER[\"Latitude of projection centre\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8811]],\n"
--  "    PARAMETER[\"Longitude of projection centre\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8812]],\n"
--  "    PARAMETER[\"Azimuth of initial line\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8813]],\n"
--  "    PARAMETER[\"Angle from Rectified to Skew Grid\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8814]],\n"
--  "    PARAMETER[\"Scale factor on initial line\",5,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8815]],\n"
--  "    PARAMETER[\"False easting\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",7,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Hotine_Oblique_Mercator\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"azimuth\",3],\n"
--  "PARAMETER[\"rectified_grid_angle\",4],\n"
--  "PARAMETER[\"scale_factor\",5],\n"
--  "PARAMETER[\"false_easting\",6],\n"
--  "PARAMETER[\"false_northing\",7]");      
   end operation_hotine_oblique_mercator_variant_A_export;

   procedure operation_hotine_oblique_mercator_variant_A_export_swiss_mercator (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createHotineObliqueMercatorVariantA(
--  PropertyMap(), Angle(1), Angle(2), Angle(90), Angle(90), Scale(5),
--  Length(6), Length(7));
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=somerc +lat_0=1 +lon_0=2 +k_0=5 "
--  "+x_0=6 +y_0=7");      
   end operation_hotine_oblique_mercator_variant_A_export_swiss_mercator;

   procedure operation_hotine_oblique_mercator_variant_B_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createHotineObliqueMercatorVariantB(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Scale(5),
--  Length(6), Length(7));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=omerc +lat_0=1 +lonc=2 +alpha=3 +gamma=4 +k=5 "
--  "+x_0=6 +y_0=7");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Hotine Oblique Mercator (variant B)\",\n"
--  "    METHOD[\"Hotine Oblique Mercator (variant B)\",\n"
--  "        ID[\"EPSG\",9815]],\n"
--  "    PARAMETER[\"Latitude of projection centre\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8811]],\n"
--  "    PARAMETER[\"Longitude of projection centre\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8812]],\n"
--  "    PARAMETER[\"Azimuth of initial line\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8813]],\n"
--  "    PARAMETER[\"Angle from Rectified to Skew Grid\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8814]],\n"
--  "    PARAMETER[\"Scale factor on initial line\",5,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8815]],\n"
--  "    PARAMETER[\"Easting at projection centre\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8816]],\n"
--  "    PARAMETER[\"Northing at projection centre\",7,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8817]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Hotine_Oblique_Mercator_Azimuth_Center\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"azimuth\",3],\n"
--  "PARAMETER[\"rectified_grid_angle\",4],\n"
--  "PARAMETER[\"scale_factor\",5],\n"
--  "PARAMETER[\"false_easting\",6],\n"
--  "PARAMETER[\"false_northing\",7]");      
   end operation_hotine_oblique_mercator_variant_B_export;

   procedure operation_hotine_oblique_mercator_variant_B_export_swiss_mercator (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createHotineObliqueMercatorVariantB(
--  PropertyMap(), Angle(1), Angle(2), Angle(90), Angle(90), Scale(5),
--  Length(6), Length(7));
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=somerc +lat_0=1 +lon_0=2 +k_0=5 "
--  "+x_0=6 +y_0=7");      
   end operation_hotine_oblique_mercator_variant_B_export_swiss_mercator;

   procedure operation_hotine_oblique_mercator_two_point_natural_origin_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createHotineObliqueMercatorTwoPointNaturalOrigin(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Angle(5),
--  Scale(6), Length(7), Length(8));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=omerc +lat_0=1 +lat_1=2 +lon_1=3 +lat_2=4 +lon_2=5 +k=6 "
--  "+x_0=7 +y_0=8");
--  
--  auto formatter = WKTFormatter::create();
--  formatter->simulCurNodeHasId();
--  EXPECT_EQ(
--  conv->exportToWKT(formatter.get()),
--  "CONVERSION[\"Hotine Oblique Mercator Two Point Natural Origin\",\n"
--  "    METHOD[\"Hotine Oblique Mercator Two Point Natural Origin\"],\n"
--  "    PARAMETER[\"Latitude of projection centre\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8811]],\n"
--  "    PARAMETER[\"Latitude of 1st point\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Longitude of 1st point\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Latitude of 2nd point\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Longitude of 2nd point\",5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Scale factor on initial line\",6,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8815]],\n"
--  "    PARAMETER[\"Easting at projection centre\",7,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8816]],\n"
--  "    PARAMETER[\"Northing at projection centre\",8,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8817]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Hotine_Oblique_Mercator_Two_Point_Natural_Origin\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"latitude_of_point_1\",2],\n"
--  "PARAMETER[\"longitude_of_point_1\",3],\n"
--  "PARAMETER[\"latitude_of_point_2\",4],\n"
--  "PARAMETER[\"longitude_of_point_2\",5],\n"
--  "PARAMETER[\"scale_factor\",6],\n"
--  "PARAMETER[\"false_easting\",7],\n"
--  "PARAMETER[\"false_northing\",8]");      
   end operation_hotine_oblique_mercator_two_point_natural_origin_export;

   procedure operation_laborde_oblique_mercator_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLabordeObliqueMercator(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Scale(4), Length(5),
--  Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=labrd +lat_0=1 +lon_0=2 +azi=3 +k=4 +x_0=5 +y_0=6");
--  
--  auto formatter = WKTFormatter::create();
--  formatter->simulCurNodeHasId();
--  EXPECT_EQ(conv->exportToWKT(formatter.get()),
--  "CONVERSION[\"Laborde Oblique Mercator\",\n"
--  "    METHOD[\"Laborde Oblique Mercator\",\n"
--  "        ID[\"EPSG\",9813]],\n"
--  "    PARAMETER[\"Latitude of projection centre\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8811]],\n"
--  "    PARAMETER[\"Longitude of projection centre\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8812]],\n"
--  "    PARAMETER[\"Azimuth of initial line\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8813]],\n"
--  "    PARAMETER[\"Scale factor on initial line\",4,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8815]],\n"
--  "    PARAMETER[\"False easting\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Laborde_Oblique_Mercator\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"azimuth\",3],\n"
--  "PARAMETER[\"scale_factor\",4],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_laborde_oblique_mercator_export;

   procedure operation_imw_polyconic_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createInternationalMapWorldPolyconic(
--  PropertyMap(), Angle(1), Angle(3), Angle(4), Length(5), Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=imw_p +lon_0=1 +lat_1=3 +lat_2=4 +x_0=5 +y_0=6");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"International Map of the World Polyconic\",\n"
--  "    METHOD[\"International Map of the World Polyconic\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Latitude of 1st point\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "            ID[\"EPSG\",9122]]],\n"
--  "    PARAMETER[\"Latitude of 2nd point\",4,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "            ID[\"EPSG\",9122]]],\n"
--  "    PARAMETER[\"False easting\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"International_Map_of_the_World_Polyconic\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"Latitude_Of_1st_Point\",3],\n"
--  "PARAMETER[\"Latitude_Of_2nd_Point\",4],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_imw_polyconic_export;

   procedure operation_krovak_north_oriented_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createKrovakNorthOriented(
--  PropertyMap(), Angle(49.5), Angle(42.5), Angle(30.28813972222222),
--  Angle(78.5), Scale(0.9999), Length(5), Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=krovak +lat_0=49.5 +lon_0=42.5 +alpha=30.2881397222222 "
--  "+k=0.9999 +x_0=5 +y_0=6");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Krovak (North Orientated)\",\n"
--  "    METHOD[\"Krovak (North Orientated)\",\n"
--  "        ID[\"EPSG\",1041]],\n"
--  "    PARAMETER[\"Latitude of projection centre\",49.5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8811]],\n"
--  "    PARAMETER[\"Longitude of origin\",42.5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8833]],\n"
--  "    PARAMETER[\"Co-latitude of cone axis\",30.2881397222222,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",1036]],\n"
--  "    PARAMETER[\"Latitude of pseudo standard parallel\",78.5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8818]],\n"
--  "    PARAMETER[\"Scale factor on pseudo standard parallel\",0.9999,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8819]],\n"
--  "    PARAMETER[\"False easting\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Krovak\"],\n"
--  "PARAMETER[\"latitude_of_center\",49.5],\n"
--  "PARAMETER[\"longitude_of_center\",42.5],\n"
--  "PARAMETER[\"azimuth\",30.2881397222222],\n"
--  "PARAMETER[\"pseudo_standard_parallel_1\",78.5],\n"
--  "PARAMETER[\"scale_factor\",0.9999],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_krovak_north_oriented_export;

   procedure operation_krovak_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createKrovak(
--  PropertyMap(), Angle(49.5), Angle(42.5), Angle(30.28813972222222),
--  Angle(78.5), Scale(0.9999), Length(5), Length(6));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=krovak +axis=swu +lat_0=49.5 +lon_0=42.5 "
--  "+alpha=30.2881397222222 +k=0.9999 +x_0=5 "
--  "+y_0=6");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Krovak\",\n"
--  "    METHOD[\"Krovak\",\n"
--  "        ID[\"EPSG\",9819]],\n"
--  "    PARAMETER[\"Latitude of projection centre\",49.5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8811]],\n"
--  "    PARAMETER[\"Longitude of origin\",42.5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8833]],\n"
--  "    PARAMETER[\"Co-latitude of cone axis\",30.2881397222222,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",1036]],\n"
--  "    PARAMETER[\"Latitude of pseudo standard parallel\",78.5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8818]],\n"
--  "    PARAMETER[\"Scale factor on pseudo standard parallel\",0.9999,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8819]],\n"
--  "    PARAMETER[\"False easting\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Krovak\"],\n"
--  "PARAMETER[\"latitude_of_center\",49.5],\n"
--  "PARAMETER[\"longitude_of_center\",42.5],\n"
--  "PARAMETER[\"azimuth\",30.2881397222222],\n"
--  "PARAMETER[\"pseudo_standard_parallel_1\",78.5],\n"
--  "PARAMETER[\"scale_factor\",0.9999],\n"
--  "PARAMETER[\"false_easting\",5],\n"
--  "PARAMETER[\"false_northing\",6]");      
   end operation_krovak_export;

   procedure operation_lambert_azimuthal_equal_area_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createLambertAzimuthalEqualArea(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=laea +lat_0=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Lambert Azimuthal Equal Area\",\n"
--  "    METHOD[\"Lambert Azimuthal Equal Area\",\n"
--  "        ID[\"EPSG\",9820]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Lambert_Azimuthal_Equal_Area\"],\n"
--  "PARAMETER[\"latitude_of_center\",1],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_lambert_azimuthal_equal_area_export;

   procedure operation_miller_cylindrical_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createMillerCylindrical(PropertyMap(), Angle(2),
--  Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=mill +R_A +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Miller Cylindrical\",\n"
--  "    METHOD[\"Miller Cylindrical\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Miller_Cylindrical\"],\n"
--  "PARAMETER[\"longitude_of_center\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_miller_cylindrical_export;

   procedure operation_mercator_variant_A_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createMercatorVariantA(
--  PropertyMap(), Angle(0), Angle(1), Scale(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc +lon_0=1 +k=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Mercator (variant A)\",\n"
--  "    METHOD[\"Mercator (variant A)\",\n"
--  "        ID[\"EPSG\",9804]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",2,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Mercator_1SP\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"scale_factor\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_mercator_variant_A_export;

   procedure operation_mercator_variant_A_export_latitude_origin_non_zero (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createMercatorVariantA(
--  PropertyMap(), Angle(10), Angle(1), Scale(2), Length(3), Length(4));
--  
--  EXPECT_THROW(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  FormattingException);      
   end operation_mercator_variant_A_export_latitude_origin_non_zero;

   procedure operation_wkt1_import_mercator_variant_A (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"central_meridian\",1],\n"
--  "    PARAMETER[\"scale_factor\",2],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto conversion = crs->derivingConversion();
--  auto convRef = Conversion::createMercatorVariantA(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "unnamed"), Angle(0),
--  Angle(1), Scale(2), Length(3), Length(4));
--  
--  EXPECT_EQ(conversion->exportToWKT(WKTFormatter::create().get()),
--  convRef->exportToWKT(WKTFormatter::create().get()));      
   end operation_wkt1_import_mercator_variant_A;

   procedure operation_wkt1_import_mercator_variant_A_that_is_variant_B (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // Adresses https://trac.osgeo.org/gdal/ticket/3026
--  auto wkt = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-1],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto conversion = crs->derivingConversion();
--  auto convRef = Conversion::createMercatorVariantB(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "unnamed"), Angle(-1),
--  Angle(2), Length(3), Length(4));
--  
--  EXPECT_TRUE(conversion->isEquivalentTo(convRef.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end operation_wkt1_import_mercator_variant_A_that_is_variant_B;

   procedure operation_mercator_variant_B_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createMercatorVariantB(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc +lat_ts=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Mercator (variant B)\",\n"
--  "    METHOD[\"Mercator (variant B)\",\n"
--  "        ID[\"EPSG\",9805]],\n"
--  "    PARAMETER[\"Latitude of 1st standard parallel\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8823]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Mercator_2SP\"],\n"
--  "PARAMETER[\"standard_parallel_1\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_mercator_variant_B_export;

   procedure operation_odd_mercator_1sp_with_non_null_latitude (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "PROJCS[\"unnamed\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"4326\"]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",30],\n"
--  "    PARAMETER[\"central_meridian\",0],\n"
--  "    PARAMETER[\"scale_factor\",0.99],\n"
--  "    PARAMETER[\"false_easting\",0],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"metre\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH]]");
--  
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_THROW(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  FormattingException);      
   end operation_odd_mercator_1sp_with_non_null_latitude;

   procedure operation_odd_mercator_2sp_with_latitude_of_origin (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "PROJCS[\"unnamed\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"4326\"]],\n"
--  "    PROJECTION[\"Mercator_2SP\"],\n"
--  "    PARAMETER[\"standard_parallel_1\",30],\n"
--  "    PARAMETER[\"latitude_of_origin\",40],\n"
--  "    PARAMETER[\"central_meridian\",0],\n"
--  "    PARAMETER[\"false_easting\",0],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"metre\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH]]");
--  
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_THROW(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  FormattingException);      
   end operation_odd_mercator_2sp_with_latitude_of_origin;

   procedure operation_webmerc_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createPopularVisualisationPseudoMercator(
--  PropertyMap(), Angle(0), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=webmerc +lat_0=0 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Popular Visualisation Pseudo Mercator\",\n"
--  "    METHOD[\"Popular Visualisation Pseudo Mercator\",\n"
--  "        ID[\"EPSG\",1024]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Pseudo-Mercator"),
--  GeographicCRS::EPSG_4326, conv,
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  EXPECT_EQ(
--  projCRS->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJCS[\"Pseudo-Mercator\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"4326\"]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH],\n"
--  "    EXTENSION[\"PROJ4\",\"+proj=merc "
--  "+a=6378137 +b=6378137 +lat_ts=0 +lon_0=2 "
--  "+x_0=3 +y_0=4 +k=1 +units=m "
--  "+nadgrids=@null +wktext +no_defs\"]]");
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, projCRS);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=webmerc "
--  "+lat_0=0 +lon_0=2 +x_0=3 +y_0=4 +ellps=WGS84");
--  
--  EXPECT_EQ(
--  projCRS->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc +a=6378137 +b=6378137 +lat_ts=0 +lon_0=2 +x_0=3 "
--  "+y_0=4 +k=1 +units=m +nadgrids=@null +wktext +no_defs +type=crs");      
   end operation_webmerc_export;

   procedure operation_webmerc_import_from_GDAL_wkt1 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Pseudo-Mercator"),
--  GeographicCRS::EPSG_4326,
--  Conversion::createPopularVisualisationPseudoMercator(
--  PropertyMap(), Angle(0), Angle(0), Length(0), Length(0)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto wkt1 = projCRS->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  auto obj = WKTParser().createFromWKT(wkt1);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto convGot = crs->derivingConversion();
--  
--  EXPECT_EQ(convGot->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"unnamed\",\n"
--  "    METHOD[\"Popular Visualisation Pseudo Mercator\",\n"
--  "        ID[\"EPSG\",1024]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",0,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",0,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");      
   end operation_webmerc_import_from_GDAL_wkt1;

   procedure operation_webmerc_import_from_GDAL_wkt1_with_EPSG_code (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap()
--  .set(IdentifiedObject::NAME_KEY, "Pseudo-Mercator")
--  .set(Identifier::CODESPACE_KEY, "EPSG")
--  .set(Identifier::CODE_KEY, "3857"),
--  GeographicCRS::EPSG_4326,
--  Conversion::createPopularVisualisationPseudoMercator(
--  PropertyMap(), Angle(0), Angle(0), Length(0), Length(0)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto wkt1 = projCRS->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  EXPECT_TRUE(wkt1.find("3857") != std::string::npos) << wkt1;
--  auto obj = WKTParser().createFromWKT(wkt1);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->identifiers().size(), 1U);      
   end operation_webmerc_import_from_GDAL_wkt1_with_EPSG_code;

   procedure operation_webmerc_import_from_GDAL_wkt1_EPSG_3785_deprecated (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt1 =
--  "PROJCS[\"Popular Visualisation CRS / Mercator (deprecated)\","
--  "    GEOGCS[\"Popular Visualisation CRS\","
--  "        DATUM[\"Popular_Visualisation_Datum\","
--  "            SPHEROID[\"Popular Visualisation Sphere\",6378137,0,"
--  "                AUTHORITY[\"EPSG\",\"7059\"]],"
--  "            TOWGS84[0,0,0,0,0,0,0],"
--  "            AUTHORITY[\"EPSG\",\"6055\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],"
--  "        AUTHORITY[\"EPSG\",\"4055\"]],"
--  "    PROJECTION[\"Mercator_1SP\"],"
--  "    PARAMETER[\"central_meridian\",0],"
--  "    PARAMETER[\"scale_factor\",1],"
--  "    PARAMETER[\"false_easting\",0],"
--  "    PARAMETER[\"false_northing\",0],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"X\",EAST],"
--  "    AXIS[\"Y\",NORTH],"
--  "    EXTENSION[\"PROJ4\",\"+proj=merc +a=6378137 +b=6378137 "
--  "+lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m "
--  "+nadgrids=@null +wktext  +no_defs\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt1);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc +a=6378137 +b=6378137 +lat_ts=0 +lon_0=0 +x_0=0 "
--  "+y_0=0 +k=1 +units=m +nadgrids=@null +wktext +no_defs +type=crs");
--  
--  auto convGot = crs->derivingConversion();
--  
--  EXPECT_EQ(convGot->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"unnamed\",\n"
--  "    METHOD[\"Popular Visualisation Pseudo Mercator\",\n"
--  "        ID[\"EPSG\",1024]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",0,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",0,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");      
   end operation_webmerc_import_from_GDAL_wkt1_EPSG_3785_deprecated;

   procedure operation_webmerc_import_from_WKT2_EPSG_3785_deprecated (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt2 =
--  "PROJCRS[\"Popular Visualisation CRS / Mercator\",\n"
--  "    BASEGEODCRS[\"Popular Visualisation CRS\",\n"
--  "        DATUM[\"Popular Visualisation Datum\",\n"
--  "            ELLIPSOID[\"Popular Visualisation Sphere\",6378137,0,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    CONVERSION[\"Popular Visualisation Mercator\",\n"
--  "        METHOD[\"Mercator (1SP) (Spherical)\",\n"
--  "            ID[\"EPSG\",9841]],\n"
--  "        PARAMETER[\"Latitude of natural origin\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8801]],\n"
--  "        PARAMETER[\"Longitude of natural origin\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8802]],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",1,\n"
--  "            SCALEUNIT[\"unity\",1],\n"
--  "            ID[\"EPSG\",8805]],\n"
--  "        PARAMETER[\"False easting\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8807]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"easting (X)\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        AXIS[\"northing (Y)\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt2);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc +a=6378137 +b=6378137 +lat_ts=0 +lon_0=0 +x_0=0 "
--  "+y_0=0 +k=1 +units=m +nadgrids=@null +wktext +no_defs +type=crs");
--  
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2015).get()),
--  wkt2);
--  
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL,
--  DatabaseContext::create())
--  .get()),
--  "PROJCS[\"Popular Visualisation CRS / Mercator\",\n"
--  "    GEOGCS[\"Popular Visualisation CRS\",\n"
--  "        DATUM[\"Popular_Visualisation_Datum\",\n"
--  "            SPHEROID[\"Popular Visualisation Sphere\",6378137,0],\n"
--  "            TOWGS84[0,0,0,0,0,0,0]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"central_meridian\",0],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",0],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"metre\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH],\n"
--  "    EXTENSION[\"PROJ4\",\"+proj=merc +a=6378137 +b=6378137 +lat_ts=0 "
--  "+lon_0=0 +x_0=0 +y_0=0 +k=1 +units=m +nadgrids=@null +wktext "
--  "+no_defs\"]]");      
   end operation_webmerc_import_from_WKT2_EPSG_3785_deprecated;

   procedure operation_webmerc_import_from_broken_esri_WGS_84_Pseudo_Mercator (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  // Likely the result of a broken export of GDAL morphToESRI()
--  auto wkt1 = "PROJCS[\"WGS_84_Pseudo_Mercator\",GEOGCS[\"GCS_WGS_1984\","
--  "DATUM[\"D_WGS_1984\",SPHEROID[\"WGS_1984\","
--  "6378137,298.257223563]],PRIMEM[\"Greenwich\",0],"
--  "UNIT[\"Degree\",0.017453292519943295]],"
--  "PROJECTION[\"Mercator\"],PARAMETER[\"central_meridian\",0],"
--  "PARAMETER[\"false_easting\",0],"
--  "PARAMETER[\"false_northing\",0],UNIT[\"Meter\",1],"
--  "PARAMETER[\"standard_parallel_1\",0.0]]";
--  
--  auto obj = WKTParser().setStrict(false).createFromWKT(wkt1);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto convGot = crs->derivingConversion();
--  
--  EXPECT_EQ(convGot->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"unnamed\",\n"
--  "    METHOD[\"Popular Visualisation Pseudo Mercator\",\n"
--  "        ID[\"EPSG\",1024]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",0,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",0,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");      
   end operation_webmerc_import_from_broken_esri_WGS_84_Pseudo_Mercator;

   procedure operation_mollweide_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createMollweide(PropertyMap(), Angle(1), Length(2),
--  Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=moll +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Mollweide\",\n"
--  "    METHOD[\"Mollweide\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Mollweide\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");      
   end operation_mollweide_export;

   procedure operation_nzmg_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createNewZealandMappingGrid(
--  PropertyMap(), Angle(1), Angle(2), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=nzmg +lat_0=1 +lon_0=2 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"New Zealand Map Grid\",\n"
--  "    METHOD[\"New Zealand Map Grid\",\n"
--  "        ID[\"EPSG\",9811]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"New_Zealand_Map_Grid\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_nzmg_export;

   procedure operation_oblique_stereographic_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createObliqueStereographic(
--  PropertyMap(), Angle(1), Angle(2), Scale(3), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=sterea +lat_0=1 +lon_0=2 +k=3 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Oblique Stereographic\",\n"
--  "    METHOD[\"Oblique Stereographic\",\n"
--  "        ID[\"EPSG\",9809]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Oblique_Stereographic\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"scale_factor\",3],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_oblique_stereographic_export;

   procedure operation_orthographic_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createOrthographic(PropertyMap(), Angle(1),
--  Angle(2), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=ortho +lat_0=1 +lon_0=2 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Orthographic\",\n"
--  "    METHOD[\"Orthographic\",\n"
--  "        ID[\"EPSG\",9840]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Orthographic\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_orthographic_export;

   procedure operation_american_polyconic_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createAmericanPolyconic(
--  PropertyMap(), Angle(1), Angle(2), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=poly +lat_0=1 +lon_0=2 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"American Polyconic\",\n"
--  "    METHOD[\"American Polyconic\",\n"
--  "        ID[\"EPSG\",9818]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Polyconic\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_american_polyconic_export;

   procedure operation_polar_stereographic_variant_A_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createPolarStereographicVariantA(
--  PropertyMap(), Angle(90), Angle(2), Scale(3), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=stere +lat_0=90 +lon_0=2 +k=3 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Polar Stereographic (variant A)\",\n"
--  "    METHOD[\"Polar Stereographic (variant A)\",\n"
--  "        ID[\"EPSG\",9810]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",90,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Polar_Stereographic\"],\n"
--  "PARAMETER[\"latitude_of_origin\",90],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"scale_factor\",3],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_polar_stereographic_variant_A_export;

   procedure operation_polar_stereographic_variant_B_export_positive_lat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createPolarStereographicVariantB(
--  PropertyMap(), Angle(70), Angle(2), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=stere +lat_0=90 +lat_ts=70 +lon_0=2 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Polar Stereographic (variant B)\",\n"
--  "    METHOD[\"Polar Stereographic (variant B)\",\n"
--  "        ID[\"EPSG\",9829]],\n"
--  "    PARAMETER[\"Latitude of standard parallel\",70,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8832]],\n"
--  "    PARAMETER[\"Longitude of origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8833]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Polar_Stereographic\"],\n"
--  "PARAMETER[\"latitude_of_origin\",70],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_polar_stereographic_variant_B_export_positive_lat;

   procedure operation_polar_stereographic_variant_B_export_negative_lat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createPolarStereographicVariantB(
--  PropertyMap(), Angle(-70), Angle(2), Length(4), Length(5));
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=stere +lat_0=-90 +lat_ts=-70 +lon_0=2 +x_0=4 +y_0=5");      
   end operation_polar_stereographic_variant_B_export_negative_lat;

   procedure operation_wkt1_import_polar_stereographic_variantA (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-90],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",3],\n"
--  "    PARAMETER[\"false_easting\",4],\n"
--  "    PARAMETER[\"false_northing\",5],\n"
--  "    UNIT[\"metre\",1]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto conversion = crs->derivingConversion();
--  auto convRef = Conversion::createPolarStereographicVariantA(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "unnamed"), Angle(-90),
--  Angle(2), Scale(3), Length(4), Length(5));
--  
--  EXPECT_EQ(conversion->exportToWKT(WKTFormatter::create().get()),
--  convRef->exportToWKT(WKTFormatter::create().get()));      
   end operation_wkt1_import_polar_stereographic_variantA;

   procedure operation_wkt1_import_polar_stereographic_variantB (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-70],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",4],\n"
--  "    PARAMETER[\"false_northing\",5],\n"
--  "    UNIT[\"metre\",1]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto conversion = crs->derivingConversion();
--  auto convRef = Conversion::createPolarStereographicVariantB(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "unnamed"), Angle(-70),
--  Angle(2), Length(4), Length(5));
--  
--  EXPECT_EQ(conversion->exportToWKT(WKTFormatter::create().get()),
--  convRef->exportToWKT(WKTFormatter::create().get()));      
   end operation_wkt1_import_polar_stereographic_variantB;

   procedure operation_wkt1_import_polar_stereographic_ambiguous (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-70],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",3],\n"
--  "    PARAMETER[\"false_easting\",4],\n"
--  "    PARAMETER[\"false_northing\",5],\n"
--  "    UNIT[\"metre\",1]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto conversion = crs->derivingConversion();
--  EXPECT_EQ(conversion->method()->nameStr(), "Polar_Stereographic");      
   end operation_wkt1_import_polar_stereographic_ambiguous;

   procedure operation_wkt1_import_equivalent_parameters (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Hotine Oblique Mercator Two Point Natural "
--  "Origin\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",1],\n"
--  "    PARAMETER[\"Latitude_Of_1st_Point\",2],\n"
--  "    PARAMETER[\"Longitude_Of_1st_Point\",3],\n"
--  "    PARAMETER[\"Latitude_Of_2nd_Point\",4],\n"
--  "    PARAMETER[\"Longitude_Of 2nd_Point\",5],\n"
--  "    PARAMETER[\"scale_factor\",6],\n"
--  "    PARAMETER[\"false_easting\",7],\n"
--  "    PARAMETER[\"false_northing\",8],\n"
--  "    UNIT[\"metre\",1]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto conversion = crs->derivingConversion();
--  auto convRef = Conversion::createHotineObliqueMercatorTwoPointNaturalOrigin(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Angle(4), Angle(5),
--  Scale(6), Length(7), Length(8));
--  
--  EXPECT_EQ(
--  conversion->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  convRef->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()));      
   end operation_wkt1_import_equivalent_parameters;

   procedure operation_robinson_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createRobinson(PropertyMap(), Angle(1), Length(2),
--  Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=robin +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Robinson\",\n"
--  "    METHOD[\"Robinson\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Robinson\"],\n"
--  "PARAMETER[\"longitude_of_center\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");      
   end operation_robinson_export;

   procedure operation_sinusoidal_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createSinusoidal(PropertyMap(), Angle(1), Length(2),
--  Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=sinu +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Sinusoidal\",\n"
--  "    METHOD[\"Sinusoidal\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Sinusoidal\"],\n"
--  "PARAMETER[\"longitude_of_center\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");      
   end operation_sinusoidal_export;

   procedure operation_stereographic_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createStereographic(
--  PropertyMap(), Angle(1), Angle(2), Scale(3), Length(4), Length(5));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=stere +lat_0=1 +lon_0=2 +k=3 +x_0=4 +y_0=5");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Stereographic\",\n"
--  "    METHOD[\"Stereographic\"],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Stereographic\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"scale_factor\",3],\n"
--  "PARAMETER[\"false_easting\",4],\n"
--  "PARAMETER[\"false_northing\",5]");      
   end operation_stereographic_export;

   procedure operation_vandergrinten_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createVanDerGrinten(PropertyMap(), Angle(1),
--  Length(2), Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=vandg +R_A +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Van Der Grinten\",\n"
--  "    METHOD[\"Van Der Grinten\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"VanDerGrinten\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");      
   end operation_vandergrinten_export;

   procedure operation_wagner_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  std::vector<std::string> numbers{"", "1", "2", "3", "4", "5", "6", "7"};
--  std::vector<std::string> latinNumbers{"",   "I", "II", "III",
--  "IV", "V", "VI", "VII"};
--  
--  for (int i = 1; i <= 7; i++) {
--  if (i == 3)
--  continue;
--  auto conv =
--  (i == 1)
--  ? Conversion::createWagnerI(PropertyMap(), Angle(1), Length(2),
--  Length(3))
--  : (i == 2)
--  ? Conversion::createWagnerII(PropertyMap(), Angle(1),
--  Length(2), Length(3))
--  : (i == 4)
--  ? Conversion::createWagnerIV(
--  PropertyMap(), Angle(1), Length(2), Length(3))
--  : (i == 5) ? Conversion::createWagnerV(
--  PropertyMap(), Angle(1), Length(2),
--  Length(3))
--  : (i == 6) ?
--  
--  Conversion::createWagnerVI(
--  PropertyMap(), Angle(1),
--  Length(2), Length(3))
--  :
--  
--  Conversion::createWagnerVII(
--  PropertyMap(), Angle(1),
--  Length(2), Length(3));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=wag" + numbers[i] + " +lon_0=1 +x_0=2 +y_0=3");
--  
--  auto formatter = WKTFormatter::create();
--  formatter->simulCurNodeHasId();
--  EXPECT_EQ(conv->exportToWKT(formatter.get()),
--  "CONVERSION[\"Wagner " + latinNumbers[i] +
--  "\",\n"
--  "    METHOD[\"Wagner " +
--  latinNumbers[i] +
--  "\"],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL)
--  .get()),
--  "PROJECTION[\"Wagner_" + latinNumbers[i] +
--  "\"],\n"
--  "PARAMETER[\"central_meridian\",1],\n"
--  "PARAMETER[\"false_easting\",2],\n"
--  "PARAMETER[\"false_northing\",3]");
--  }      
   end operation_wagner_export;

   procedure operation_wagnerIII_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createWagnerIII(PropertyMap(), Angle(1), Angle(2),
--  Length(3), Length(4));
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=wag3 +lat_ts=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  auto formatter = WKTFormatter::create();
--  formatter->simulCurNodeHasId();
--  EXPECT_EQ(conv->exportToWKT(formatter.get()),
--  "CONVERSION[\"Wagner III\",\n"
--  "    METHOD[\"Wagner III\"],\n"
--  "    PARAMETER[\"Latitude of true scale\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Wagner_III\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_wagnerIII_export;

   procedure operation_qsc_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createQuadrilateralizedSphericalCube(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=qsc +lat_0=1 +lon_0=2 +x_0=3 +y_0=4");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Quadrilateralized Spherical Cube\",\n"
--  "    METHOD[\"Quadrilateralized Spherical Cube\"],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Quadrilateralized_Spherical_Cube\"],\n"
--  "PARAMETER[\"latitude_of_origin\",1],\n"
--  "PARAMETER[\"central_meridian\",2],\n"
--  "PARAMETER[\"false_easting\",3],\n"
--  "PARAMETER[\"false_northing\",4]");      
   end operation_qsc_export;

   procedure operation_sch_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createSphericalCrossTrackHeight(
--  PropertyMap(), Angle(1), Angle(2), Angle(3), Length(4));
--  EXPECT_TRUE(conv->validateParameters().empty());
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=sch +plat_0=1 +plon_0=2 +phdg_0=3 +h_0=4");
--  
--  auto formatter = WKTFormatter::create();
--  formatter->simulCurNodeHasId();
--  EXPECT_EQ(conv->exportToWKT(formatter.get()),
--  "CONVERSION[\"Spherical Cross-Track Height\",\n"
--  "    METHOD[\"Spherical Cross-Track Height\"],\n"
--  "    PARAMETER[\"Peg point latitude\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Peg point longitude\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Peg point heading\",3,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    PARAMETER[\"Peg point height\",4,\n"
--  "        LENGTHUNIT[\"metre\",1]]]");
--  
--  EXPECT_EQ(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  "PROJECTION[\"Spherical_Cross_Track_Height\"],\n"
--  "PARAMETER[\"peg_point_latitude\",1],\n"
--  "PARAMETER[\"peg_point_longitude\",2],\n"
--  "PARAMETER[\"peg_point_heading\",3],\n"
--  "PARAMETER[\"peg_point_height\",4]");      
   end operation_sch_export;

   procedure operation_conversion_inverse (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createTransverseMercator(
--  PropertyMap(), Angle(1), Angle(2), Scale(3), Length(4), Length(5));
--  auto inv = conv->inverse();
--  EXPECT_EQ(inv->inverse(), conv);
--  EXPECT_EQ(inv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Inverse of Transverse Mercator\",\n"
--  "    METHOD[\"Inverse of Transverse Mercator\",\n"
--  "        ID[\"INVERSE(EPSG)\",9807]],\n"
--  "    PARAMETER[\"Latitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8801]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"Scale factor at natural origin\",3,\n"
--  "        SCALEUNIT[\"unity\",1],\n"
--  "        ID[\"EPSG\",8805]],\n"
--  "    PARAMETER[\"False easting\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");
--  
--  EXPECT_EQ(inv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=tmerc +lat_0=1 +lon_0=2 +k=3 "
--  "+x_0=4 +y_0=5");
--  
--  EXPECT_TRUE(inv->isEquivalentTo(inv.get()));
--  EXPECT_FALSE(inv->isEquivalentTo(createUnrelatedObject().get()));
--  
--  EXPECT_TRUE(
--  conv->isEquivalentTo(conv->CoordinateOperation::shallowClone().get()));
--  EXPECT_TRUE(
--  inv->isEquivalentTo(inv->CoordinateOperation::shallowClone().get()));      
   end operation_conversion_inverse;

   procedure operation_eqearth_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createEqualEarth(PropertyMap(), Angle(1), Length(2),
--  Length(3));
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=eqearth +lon_0=1 +x_0=2 +y_0=3");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Equal Earth\",\n"
--  "    METHOD[\"Equal Earth\",\n"
--  "        ID[\"EPSG\",1078]],\n"
--  "    PARAMETER[\"Longitude of natural origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8802]],\n"
--  "    PARAMETER[\"False easting\",2,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");      
   end operation_eqearth_export;

   procedure operation_vertical_perspective_export (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto conv = Conversion::createVerticalPerspective(
--  PropertyMap(), Angle(1), Angle(2), Length(3), Length(4), Length(5),
--  Length(6));
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=nsper +lat_0=1 +lon_0=2 +h=4 +x_0=5 +y_0=6");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"Vertical Perspective\",\n"
--  "    METHOD[\"Vertical Perspective\",\n"
--  "        ID[\"EPSG\",9838]],\n"
--  "    PARAMETER[\"Latitude of topocentric origin\",1,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8834]],\n"
--  "    PARAMETER[\"Longitude of topocentric origin\",2,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8835]],\n"
--  "    PARAMETER[\"Ellipsoidal height of topocentric origin\",3,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8836]],\n"
--  "    PARAMETER[\"Viewpoint height\",4,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8840]],\n"
--  "    PARAMETER[\"False easting\",5,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8806]],\n"
--  "    PARAMETER[\"False northing\",6,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",8807]]]");      
   end operation_vertical_perspective_export;

   procedure operation_laborde_oblique_mercator (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  // Content of EPSG:29701 "Tananarive (Paris) / Laborde Grid"
--  auto projString = "+proj=labrd +lat_0=-18.9 +lon_0=44.1 +azi=18.9 "
--  "+k=0.9995 +x_0=400000 +y_0=800000 +ellps=intl +pm=paris "
--  "+units=m +no_defs +type=crs";
--  auto obj = PROJStringParser().createFromPROJString(projString);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  projString);      
   end operation_laborde_oblique_mercator;

   procedure operation_PROJ_based (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = SingleOperation::createPROJBased(PropertyMap(), "+proj=merc",
--  nullptr, nullptr);
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"PROJ-based coordinate operation\",\n"
--  "    METHOD[\"PROJ-based operation method: +proj=merc\"]]");
--  
--  EXPECT_EQ(conv->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=merc");
--  
--  auto str = "+proj=pipeline +step +proj=unitconvert +xy_in=grad +xy_out=rad "
--  "+step +proj=axisswap +order=2,1 +step +proj=longlat "
--  "+ellps=clrk80ign +pm=paris +step +proj=axisswap +order=2,1";
--  EXPECT_EQ(
--  SingleOperation::createPROJBased(PropertyMap(), str, nullptr, nullptr)
--  ->exportToPROJString(PROJStringFormatter::create().get()),
--  str);
--  
--  EXPECT_THROW(SingleOperation::createPROJBased(
--  PropertyMap(), "+proj=pipeline +step +proj=pipeline",
--  nullptr, nullptr)
--  ->exportToPROJString(PROJStringFormatter::create().get()),
--  FormattingException);      
   end operation_PROJ_based;

   procedure operation_PROJ_based_empty (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv =
--  SingleOperation::createPROJBased(PropertyMap(), "", nullptr, nullptr);
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");
--  
--  EXPECT_EQ(conv->exportToWKT(WKTFormatter::create().get()),
--  "CONVERSION[\"PROJ-based coordinate operation\",\n"
--  "    METHOD[\"PROJ-based operation method: \"]]");
--  
--  EXPECT_THROW(
--  conv->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  FormattingException);
--  
--  EXPECT_EQ(conv->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=noop");      
   end operation_PROJ_based_empty;

   procedure operation_PROJ_based_with_global_parameters (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = SingleOperation::createPROJBased(
--  PropertyMap(), "+proj=pipeline +ellps=WGS84 +step +proj=longlat",
--  nullptr, nullptr);
--  
--  EXPECT_EQ(conv->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +ellps=WGS84 +step +proj=longlat");      
   end operation_PROJ_based_with_global_parameters;

   procedure operation_geogCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4807, GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(
--  op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv +proj=longlat "
--  "+ellps=clrk80ign +pm=paris +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_geogCRS_to_geogCRS;

   procedure operation_geogCRS_to_geogCRS_context_default (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setAllowUseIntermediateCRS(
--  CoordinateOperationContext::IntermediateCRSUse::NEVER);
--  
--  // Directly found in database
--  {
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4179"), // Pulkovo 42
--  authFactory->createCoordinateReferenceSystem("4258"), // ETRS89
--  ctxt);
--  ASSERT_EQ(list.size(), 3U);
--  // Romania has a larger area than Poland (given our approx formula)
--  EXPECT_EQ(list[0]->getEPSGCode(), 15994); // Romania - 3m
--  EXPECT_EQ(list[1]->getEPSGCode(), 1644);  // Poland - 1m
--  EXPECT_EQ(list[2]->nameStr(),
--  "Ballpark geographic offset from Pulkovo 1942(58) to ETRS89");
--  
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=krass +step +proj=helmert +x=2.3287 "
--  "+y=-147.0425 +z=-92.0802 +rx=0.3092483 +ry=-0.32482185 "
--  "+rz=-0.49729934 +s=5.68906266 +convention=coordinate_frame +step "
--  "+inv +proj=cart +ellps=GRS80 +step +proj=pop +v_3 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");
--  }
--  
--  // Reverse case
--  {
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4258"),
--  authFactory->createCoordinateReferenceSystem("4179"), ctxt);
--  ASSERT_EQ(list.size(), 3U);
--  // Romania has a larger area than Poland (given our approx formula)
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of Pulkovo 1942(58) to ETRS89 (4)"); // Romania - 3m
--  
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=GRS80 +step +inv +proj=helmert +x=2.3287 "
--  "+y=-147.0425 +z=-92.0802 +rx=0.3092483 +ry=-0.32482185 "
--  "+rz=-0.49729934 +s=5.68906266 +convention=coordinate_frame +step "
--  "+inv +proj=cart +ellps=krass +step +proj=pop +v_3 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");
--  }      
   end operation_geogCRS_to_geogCRS_context_default;

   procedure operation_geogCRS_to_geogCRS_context_match_by_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setAllowUseIntermediateCRS(
--  CoordinateOperationContext::IntermediateCRSUse::NEVER);
--  auto NAD27 = GeographicCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY,
--  GeographicCRS::EPSG_4267->nameStr()),
--  GeographicCRS::EPSG_4267->datum(),
--  GeographicCRS::EPSG_4267->datumEnsemble(),
--  GeographicCRS::EPSG_4267->coordinateSystem());
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  NAD27, GeographicCRS::EPSG_4326, ctxt);
--  auto listInv = CoordinateOperationFactory::create()->createOperations(
--  GeographicCRS::EPSG_4326, NAD27, ctxt);
--  auto listRef = CoordinateOperationFactory::create()->createOperations(
--  GeographicCRS::EPSG_4267, GeographicCRS::EPSG_4326, ctxt);
--  EXPECT_EQ(list.size(), listRef.size());
--  EXPECT_EQ(listInv.size(), listRef.size());
--  EXPECT_GE(listRef.size(), 2U);      
   end operation_geogCRS_to_geogCRS_context_match_by_name;

   procedure operation_geogCRS_to_geogCRS_context_filter_accuracy (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 1.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4179"),
--  authFactory->createCoordinateReferenceSystem("4258"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->getEPSGCode(), 1644); // Poland - 1m
--  }
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.9);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4179"),
--  authFactory->createCoordinateReferenceSystem("4258"), ctxt);
--  ASSERT_EQ(list.size(), 0U);
--  }      
   end operation_geogCRS_to_geogCRS_context_filter_accuracy;

   procedure operation_geogCRS_to_geogCRS_context_filter_bbox (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  // INSERT INTO "area" VALUES('EPSG','1197','Romania','Romania - onshore and
--  // offshore.',43.44,48.27,20.26,31.41,0);
--  {
--  auto ctxt = CoordinateOperationContext::create(
--  authFactory, Extent::createFromBBOX(20.26, 43.44, 31.41, 48.27),
--  0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4179"),
--  authFactory->createCoordinateReferenceSystem("4258"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->getEPSGCode(), 15994); // Romania - 3m
--  }
--  {
--  auto ctxt = CoordinateOperationContext::create(
--  authFactory, Extent::createFromBBOX(20.26 + .1, 43.44 + .1,
--  31.41 - .1, 48.27 - .1),
--  0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4179"),
--  authFactory->createCoordinateReferenceSystem("4258"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->getEPSGCode(), 15994); // Romania - 3m
--  }
--  {
--  auto ctxt = CoordinateOperationContext::create(
--  authFactory, Extent::createFromBBOX(20.26 - .1, 43.44 - .1,
--  31.41 + .1, 48.27 + .1),
--  0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4179"),
--  authFactory->createCoordinateReferenceSystem("4258"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");
--  }      
   end operation_geogCRS_to_geogCRS_context_filter_bbox;

   procedure operation_geogCRS_to_geogCRS_context_incompatible_area (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4267"), // NAD27
--  authFactory->createCoordinateReferenceSystem("4258"), // ETRS 89
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");      
   end operation_geogCRS_to_geogCRS_context_incompatible_area;

   procedure operation_geogCRS_to_geogCRS_context_inverse_needed (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  ctxt->setUsePROJAlternativeGridNames(false);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4275"), // NTF
--  authFactory->createCoordinateReferenceSystem("4258"), // ETRS89
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk80ign +step +proj=helmert +x=-168 "
--  "+y=-60 +z=320 +step +inv +proj=cart +ellps=GRS80 +step +proj=pop "
--  "+v_3 +step +proj=unitconvert +xy_in=rad +xy_out=deg +step "
--  "+proj=axisswap +order=2,1");
--  EXPECT_EQ(list[1]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step "
--  "+proj=hgridshift +grids=fr_ign_ntf_r93.tif +step "
--  "+proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");
--  }
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4275"), // NTF
--  authFactory->createCoordinateReferenceSystem("4258"), // ETRS89
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step "
--  "+proj=hgridshift +grids=fr_ign_ntf_r93.tif +step "
--  "+proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");
--  }
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4258"), // ETRS89
--  authFactory->createCoordinateReferenceSystem("4275"), // NTF
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +inv "
--  "+proj=hgridshift +grids=fr_ign_ntf_r93.tif +step "
--  "+proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");
--  }      
   end operation_geogCRS_to_geogCRS_context_inverse_needed;

   procedure operation_geogCRS_to_geogCRS_context_ntv1_ntv2_ctable2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4267"), // NAD27
--  authFactory->createCoordinateReferenceSystem("4269"), // NAD83
--  ctxt);
--  ASSERT_EQ(list.size(), 10U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=hgridshift "
--  "+grids=ca_nrc_ntv1_can.tif +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  EXPECT_EQ(list[1]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=hgridshift "
--  "+grids=ca_nrc_ntv2_0.tif +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  EXPECT_EQ(list[2]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=hgridshift "
--  "+grids=us_noaa_conus.tif +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg "
--  "+step +proj=axisswap +order=2,1");      
   end operation_geogCRS_to_geogCRS_context_ntv1_ntv2_ctable2;

   procedure operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4267"), // NAD27
--  authFactory->createCoordinateReferenceSystem("4326"), // WGS84
--  ctxt);
--  ASSERT_EQ(list.size(), 78U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "NAD27 to WGS 84 (33)"); // 1.0 m, Canada - NAD27
--  EXPECT_EQ(list[1]->nameStr(),
--  "NAD27 to WGS 84 (3)"); // 20.0 m, Canada - NAD27
--  EXPECT_EQ(list[2]->nameStr(),
--  "NAD27 to WGS 84 (79)"); // 5.0 m, USA - CONUS including EEZ
--  EXPECT_EQ(list[3]->nameStr(),
--  "NAD27 to WGS 84 (4)"); // 10.0 m, USA - CONUS - onshore      
   end operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84;

   procedure operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84_G1762 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  
--  auto authFactoryEPSG =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NAD27
--  authFactoryEPSG->createCoordinateReferenceSystem("4267"),
--  // WGS84 (G1762)
--  authFactoryEPSG->createCoordinateReferenceSystem("9057"), ctxt);
--  ASSERT_GE(list.size(), 78U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "NAD27 to WGS 84 (33) + WGS 84 to WGS 84 (G1762)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=ca_nrc_ntv2_0.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  EXPECT_EQ(list[1]->nameStr(),
--  "NAD27 to WGS 84 (3) + WGS 84 to WGS 84 (G1762)");
--  EXPECT_EQ(list[2]->nameStr(),
--  "NAD27 to WGS 84 (79) + WGS 84 to WGS 84 (G1762)");
--  EXPECT_EQ(list[3]->nameStr(),
--  "NAD27 to WGS 84 (4) + WGS 84 to WGS 84 (G1762)");      
   end operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84_G1762;

   procedure operation_geogCRS_to_geogCRS_context_WGS84_G1674_to_WGS84_G1762 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // Check that particular behaviour with WGS 84 (Gxxx) related to
--  // 'geodetic_datum_preferred_hub' table and custom no-op transformations
--  // between WGS 84 and WGS 84 (Gxxx) doesn't affect direct transformations
--  // to those realizations.
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  
--  auto authFactoryEPSG =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // WGS84 (G1674)
--  authFactoryEPSG->createCoordinateReferenceSystem("9056"),
--  // WGS84 (G1762)
--  authFactoryEPSG->createCoordinateReferenceSystem("9057"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=cart +ellps=WGS84 "
--  "+step +proj=helmert +x=-0.004 +y=0.003 +z=0.004 +rx=0.00027 "
--  "+ry=-0.00027 +rz=0.00038 +s=-0.0069 "
--  "+convention=coordinate_frame "
--  "+step +inv +proj=cart +ellps=WGS84 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");      
   end operation_geogCRS_to_geogCRS_context_WGS84_G1674_to_WGS84_G1762;

   procedure operation_geogCRS_to_geogCRS_context_EPSG_4240_Indian1975_to_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4240"), // Indian 1975
--  authFactory->createCoordinateReferenceSystem("4326"), ctxt);
--  ASSERT_EQ(list.size(), 3U);
--  
--  // Indian 1975 to WGS 84 (4), 3.0 m, Thailand - onshore
--  EXPECT_EQ(list[0]->getEPSGCode(), 1812);
--  
--  // The following is the one we want to see. It has a lesser accuracy than
--  // the above one and the same bbox, but the name of its area of use is
--  // slightly different
--  // Indian 1975 to WGS 84 (2), 5.0 m, Thailand - onshore and Gulf of Thailand
--  EXPECT_EQ(list[1]->getEPSGCode(), 1304);
--  
--  // Indian 1975 to WGS 84 (3), 1.0 m, Thailand - Bongkot field
--  EXPECT_EQ(list[2]->getEPSGCode(), 1537);      
   end operation_geogCRS_to_geogCRS_context_EPSG_4240_Indian1975_to_EPSG_4326;

   procedure operation_vertCRS_to_geogCRS_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setUsePROJAlternativeGridNames(false);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem(
--  "3855"), // EGM2008 height
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  EXPECT_EQ(list[1]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=vgridshift +grids=us_nga_egm08_25.tif +multiplier=1");
--  }
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem(
--  "3855"), // EGM2008 height
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=vgridshift +grids=us_nga_egm08_25.tif +multiplier=1");
--  }
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84
--  authFactory->createCoordinateReferenceSystem(
--  "3855"), // EGM2008 height
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=vgridshift "
--  "+grids=us_nga_egm08_25.tif "
--  "+multiplier=1");
--  }
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NGVD29 depth (ftUS)
--  authFactory->createCoordinateReferenceSystem("6359"),
--  authFactory->createCoordinateReferenceSystem("4326"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=affine +s33=-0.304800609601219");
--  }
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NZVD2016 height
--  authFactory->createCoordinateReferenceSystem("7839"),
--  // NZGD2000
--  authFactory->createCoordinateReferenceSystem("4959"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=vgridshift +grids=nz_linz_nzgeoid2016.tif +multiplier=1");
--  }      
   end operation_vertCRS_to_geogCRS_context;

   procedure operation_geogCRS_to_geogCRS_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->nameStr(), "Null geographic offset from WGS 84 to WGS 84");
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");
--  EXPECT_EQ(op->inverse()->nameStr(), op->nameStr());      
   end operation_geogCRS_to_geogCRS_noop;

   procedure operation_geogCRS_to_geogCRS_longitude_rotation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto src = GeographicCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "A"),
--  GeodeticReferenceFrame::create(PropertyMap(), Ellipsoid::WGS84,
--  optional<std::string>(),
--  PrimeMeridian::GREENWICH),
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE));
--  auto dest = GeographicCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "B"),
--  GeodeticReferenceFrame::create(PropertyMap(), Ellipsoid::WGS84,
--  optional<std::string>(),
--  PrimeMeridian::PARIS),
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE));
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(src, dest);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=longlat "
--  "+ellps=WGS84 +pm=paris +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  EXPECT_EQ(op->inverse()->exportToWKT(WKTFormatter::create().get()),
--  CoordinateOperationFactory::create()
--  ->createOperation(dest, src)
--  ->exportToWKT(WKTFormatter::create().get()));
--  EXPECT_TRUE(
--  op->inverse()->isEquivalentTo(CoordinateOperationFactory::create()
--  ->createOperation(dest, src)
--  .get()));      
   end operation_geogCRS_to_geogCRS_longitude_rotation;

   procedure operation_geogCRS_to_geogCRS_longitude_rotation_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4807"), // NTF(Paris)
--  authFactory->createCoordinateReferenceSystem("4275"), // NTF
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  EXPECT_EQ(list[0]->nameStr(), "NTF (Paris) to NTF (1)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=clrk80ign +pm=paris +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");
--  EXPECT_EQ(list[1]->nameStr(), "NTF (Paris) to NTF (2)");
--  EXPECT_EQ(list[1]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=clrk80ign +pm=2.33720833333333 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_geogCRS_to_geogCRS_longitude_rotation_context;

   procedure operation_geogCRS_to_geogCRS_context_concatenated_operation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  ctxt->setAllowUseIntermediateCRS(
--  CoordinateOperationContext::IntermediateCRSUse::ALWAYS);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4807"), // NTF(Paris)
--  authFactory->createCoordinateReferenceSystem("4171"), // RGF93
--  ctxt);
--  ASSERT_EQ(list.size(), 5U);
--  EXPECT_EQ(list[0]->nameStr(), "NTF (Paris) to RGF93 (2)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=clrk80ign +pm=paris +step +proj=hgridshift "
--  "+grids=fr_ign_ntf_r93.tif +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  
--  EXPECT_EQ(list[1]->nameStr(), "NTF (Paris) to NTF (1) + NTF to RGF93 (1)");
--  EXPECT_EQ(list[1]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=grad +xy_out=rad "
--  "+step +inv +proj=longlat +ellps=clrk80ign +pm=paris "
--  "+step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk80ign "
--  "+step +proj=xyzgridshift +grids=fr_ign_gr3df97a.tif "
--  "+grid_ref=output_crs +ellps=GRS80 "
--  "+step +inv +proj=cart +ellps=GRS80 "
--  "+step +proj=pop +v_3 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  
--  EXPECT_TRUE(nn_dynamic_pointer_cast<ConcatenatedOperation>(list[0]) !=
--  nullptr);
--  auto grids = list[0]->gridsNeeded(DatabaseContext::create(), false);
--  EXPECT_EQ(grids.size(), 1U);      
   end operation_geogCRS_to_geogCRS_context_concatenated_operation;

   procedure operation_geogCRS_to_geogCRS_context_ED50_to_WGS72_no_NTF_intermediate (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4230"), // ED50
--  authFactory->createCoordinateReferenceSystem("4322"), // WGS 72
--  ctxt);
--  ASSERT_GE(list.size(), 2U);
--  // We should not use the ancient NTF as an intermediate when looking for
--  // ED50 -> WGS 72 operations.
--  for (const auto &op : list) {
--  EXPECT_TRUE(op->nameStr().find("NTF") == std::string::npos)
--  << op->nameStr();
--  }      
   end operation_geogCRS_to_geogCRS_context_ED50_to_WGS72_no_NTF_intermediate;

   procedure operation_geogCRS_to_geogCRS_context_same_grid_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4314"), // DHDN
--  authFactory->createCoordinateReferenceSystem("4258"), // ETRS89
--  ctxt);
--  ASSERT_TRUE(!list.empty());
--  EXPECT_EQ(list[0]->nameStr(), "DHDN to ETRS89 (8)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=hgridshift "
--  "+grids=de_adv_BETA2007.tif +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_geogCRS_to_geogCRS_context_same_grid_name;

   procedure operation_geogCRS_to_geogCRS_geographic_offset_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4120"), // NTF(Paris)
--  authFactory->createCoordinateReferenceSystem("4121"), // NTF
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(), "Greek to GGRS87 (1)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=geogoffset "
--  "+dlat=-5.86 +dlon=0.28 +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_geogCRS_to_geogCRS_geographic_offset_context;

   procedure operation_geogCRS_to_geogCRS_CH1903_to_CH1903plus_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setAllowUseIntermediateCRS(
--  CoordinateOperationContext::IntermediateCRSUse::ALWAYS);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4149"), // CH1903
--  authFactory->createCoordinateReferenceSystem("4150"), // CH1903+
--  ctxt);
--  ASSERT_TRUE(list.size() == 2U || list.size() == 3U);
--  
--  EXPECT_EQ(list[0]->nameStr(), "CH1903 to CH1903+ (1)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=ch_swisstopo_CHENyx06a.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  
--  if (list.size() == 2U) {
--  // Grids not there
--  EXPECT_EQ(list[1]->nameStr(),
--  "CH1903 to ETRS89 (1) + Inverse of CH1903+ to ETRS89 (1)");
--  EXPECT_EQ(
--  list[1]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");
--  } else {
--  // Grids available
--  EXPECT_EQ(list[1]->nameStr(),
--  "CH1903 to ETRS89 (2) + Inverse of CH1903+ to ETRS89 (1)");
--  
--  EXPECT_EQ(list[2]->nameStr(),
--  "CH1903 to ETRS89 (1) + Inverse of CH1903+ to ETRS89 (1)");
--  EXPECT_EQ(
--  list[2]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");
--  }      
   end operation_geogCRS_to_geogCRS_CH1903_to_CH1903plus_context;

   procedure operation_geogCRS_to_geogCRS_init_IGNF_to_init_IGNF_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto dbContext = DatabaseContext::create();
--  
--  auto sourceCRS_obj = PROJStringParser()
--  .attachDatabaseContext(dbContext)
--  .setUsePROJ4InitRules(true)
--  .createFromPROJString("+init=IGNF:NTFG");
--  auto sourceCRS = nn_dynamic_pointer_cast<CRS>(sourceCRS_obj);
--  ASSERT_TRUE(sourceCRS != nullptr);
--  
--  auto targetCRS_obj = PROJStringParser()
--  .attachDatabaseContext(dbContext)
--  .setUsePROJ4InitRules(true)
--  .createFromPROJString("+init=IGNF:RGF93G");
--  auto targetCRS = nn_dynamic_pointer_cast<CRS>(targetCRS_obj);
--  ASSERT_TRUE(targetCRS != nullptr);
--  
--  auto authFactory = AuthorityFactory::create(dbContext, std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  NN_CHECK_ASSERT(sourceCRS), NN_CHECK_ASSERT(targetCRS), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  
--  EXPECT_EQ(list[0]->nameStr(),
--  "NOUVELLE TRIANGULATION DE LA FRANCE (NTF) vers RGF93 (ETRS89)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=fr_ign_ntf_r93.tif +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg");      
   end operation_geogCRS_to_geogCRS_init_IGNF_to_init_IGNF_context;

   procedure operation_geogCRS_to_geogCRS_3D (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto geogcrs_m_obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +vunits=m +type=crs");
--  auto geogcrs_m = nn_dynamic_pointer_cast<CRS>(geogcrs_m_obj);
--  ASSERT_TRUE(geogcrs_m != nullptr);
--  
--  auto geogcrs_ft_obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +vunits=ft +type=crs");
--  auto geogcrs_ft = nn_dynamic_pointer_cast<CRS>(geogcrs_ft_obj);
--  ASSERT_TRUE(geogcrs_ft != nullptr);
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(geogcrs_m), NN_CHECK_ASSERT(geogcrs_ft));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=unitconvert +z_in=m +z_out=ft");
--  }
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(geogcrs_ft), NN_CHECK_ASSERT(geogcrs_m));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=unitconvert +z_in=ft +z_out=m");
--  }
--  
--  auto geogcrs_m_with_pm_obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +pm=paris +vunits=m +type=crs");
--  auto geogcrs_m_with_pm =
--  nn_dynamic_pointer_cast<CRS>(geogcrs_m_with_pm_obj);
--  ASSERT_TRUE(geogcrs_m_with_pm != nullptr);
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(geogcrs_m_with_pm), NN_CHECK_ASSERT(geogcrs_ft));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=deg +z_in=m "
--  "+xy_out=rad +z_out=m +step +inv +proj=longlat +ellps=WGS84 "
--  "+pm=paris +step +proj=unitconvert +xy_in=rad +z_in=m "
--  "+xy_out=deg +z_out=ft");
--  }      
   end operation_geogCRS_to_geogCRS_3D;

   procedure operation_geogCRS_3D_lat_long_non_metre_to_geogCRS_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt = "GEOGCRS[\"my CRS\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563],\n"
--  "        ID[\"EPSG\",6326]],\n"
--  "    CS[ellipsoidal,3],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"ellipsoidal height\",up,\n"
--  "            LENGTHUNIT[\"my_vunit\",0.3]]]";
--  auto srcCRS_obj = WKTParser().createFromWKT(wkt);
--  auto srcCRS = nn_dynamic_pointer_cast<CRS>(srcCRS_obj);
--  ASSERT_TRUE(srcCRS != nullptr);
--  
--  auto dstCRS_obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=WGS84 +type=crs");
--  auto dstCRS = nn_dynamic_pointer_cast<CRS>(dstCRS_obj);
--  ASSERT_TRUE(dstCRS != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(srcCRS), NN_CHECK_ASSERT(dstCRS));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +z_in=0.3 +z_out=m");      
   end operation_geogCRS_3D_lat_long_non_metre_to_geogCRS_longlat;

   procedure operation_geogCRS_without_id_to_geogCRS_3D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto src =
--  authFactory->createCoordinateReferenceSystem("4289"); // Amersfoort
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("4937"); // ETRS89 3D
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_GE(list.size(), 1U);
--  auto wkt2 = "GEOGCRS[\"unnamed\",\n"
--  "    DATUM[\"Amersfoort\",\n"
--  "        ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"geodetic latitude (Lat)\",north,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"geodetic longitude (Lon)\",east,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    USAGE[\n"
--  "        SCOPE[\"unknown\"],\n"
--  "        AREA[\"Netherlands - onshore\"],\n"
--  "        BBOX[50.75,3.2,53.7,7.22]]]\n";
--  
--  auto obj = WKTParser().createFromWKT(wkt2);
--  auto src_from_wkt2 = nn_dynamic_pointer_cast<CRS>(obj);
--  ASSERT_TRUE(src_from_wkt2 != nullptr);
--  auto list2 = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(src_from_wkt2), dst, ctxt);
--  ASSERT_GE(list.size(), list2.size());
--  for (size_t i = 0; i < list.size(); i++) {
--  const auto &op = list[i];
--  const auto &op2 = list2[i];
--  EXPECT_TRUE(
--  op->isEquivalentTo(op2.get(), IComparable::Criterion::EQUIVALENT))
--  << op->nameStr() << " " << op2->nameStr();
--  }      
   end operation_geogCRS_without_id_to_geogCRS_3D_context;

   procedure operation_geocentricCRS_to_geogCRS_same_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createGeocentricDatumWGS84(), GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=cart +ellps=WGS84 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_geocentricCRS_to_geogCRS_same_datum;

   procedure operation_geocentricCRS_to_geogCRS_different_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createGeocentricDatumWGS84(), GeographicCRS::EPSG_4269);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->nameStr(),
--  "Ballpark geocentric translation from WGS 84 to NAD83 "
--  "(geocentric) + Conversion from NAD83 "
--  "(geocentric) to NAD83");
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=cart +ellps=GRS80 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_geocentricCRS_to_geogCRS_different_datum;

   procedure operation_geogCRS_to_geocentricCRS_different_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4269, createGeocentricDatumWGS84());
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->nameStr(), "Conversion from NAD83 to NAD83 (geocentric) + "
--  "Ballpark geocentric translation from NAD83 "
--  "(geocentric) to WGS 84");
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=cart "
--  "+ellps=GRS80");      
   end operation_geogCRS_to_geocentricCRS_different_datum;

   procedure operation_geocentricCRS_to_geocentricCRS_same_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createGeocentricDatumWGS84(), createGeocentricDatumWGS84());
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->nameStr(),
--  "Null geocentric translation from WGS 84 to WGS 84");
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");
--  EXPECT_EQ(op->inverse()->nameStr(), op->nameStr());      
   end operation_geocentricCRS_to_geocentricCRS_same_noop;

   procedure operation_geocentricCRS_to_geocentricCRS_different_ballpark (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  PropertyMap propertiesCRS;
--  propertiesCRS.set(Identifier::CODESPACE_KEY, "EPSG")
--  .set(Identifier::CODE_KEY, 4328)
--  .set(IdentifiedObject::NAME_KEY, "unknown");
--  auto otherGeocentricCRS = GeodeticCRS::create(
--  propertiesCRS, GeodeticReferenceFrame::EPSG_6269,
--  CartesianCS::createGeocentric(UnitOfMeasure::METRE));
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createGeocentricKM(), otherGeocentricCRS);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(
--  op->nameStr(),
--  "Ballpark geocentric translation from Based on WGS 84 to unknown");
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=unitconvert +xy_in=km +z_in=km +xy_out=m +z_out=m");      
   end operation_geocentricCRS_to_geocentricCRS_different_ballpark;

   procedure operation_geocentricCRS_to_geogCRS_same_datum_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("4326"),
--  // WGS84 geocentric
--  authFactory->createCoordinateReferenceSystem("4978"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  
--  EXPECT_EQ(list[0]->nameStr(),
--  "Conversion from WGS 84 (geog2D) to WGS 84 (geocentric)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=cart "
--  "+ellps=WGS84");
--  
--  EXPECT_EQ(list[0]->inverse()->nameStr(),
--  "Conversion from WGS 84 (geocentric) to WGS 84 (geog2D)");
--  EXPECT_EQ(list[0]->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=cart +ellps=WGS84 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_geocentricCRS_to_geogCRS_same_datum_context;

   procedure operation_geocentricCRS_to_geogCRS_same_datum_context_all_auth (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // This is to check we don't use OGC:CRS84 as a pivot
--  auto authFactoryEPSG =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto authFactoryAll =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt =
--  CoordinateOperationContext::create(authFactoryAll, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactoryEPSG->createCoordinateReferenceSystem("4326"),
--  // WGS84 geocentric
--  authFactoryEPSG->createCoordinateReferenceSystem("4978"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  
--  EXPECT_EQ(list[0]->nameStr(),
--  "Conversion from WGS 84 (geog2D) to WGS 84 (geocentric)");      
   end operation_geocentricCRS_to_geogCRS_same_datum_context_all_auth;

   procedure operation_geocentricCRS_to_geocentricCRS_different_datum_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // ITRF2000 (geocentric)
--  authFactory->createCoordinateReferenceSystem("4919"),
--  // ITRF2005 (geocentric)
--  authFactory->createCoordinateReferenceSystem("4896"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(), "ITRF2000 to ITRF2005 (1)");
--  EXPECT_PRED_FORMAT2(
--  ComparePROJString,
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=helmert +x=-0.0001 "
--  "+y=0.0008 +z=0.0058 +rx=0 +ry=0 +rz=0 +s=-0.0004 +dx=0.0002 "
--  "+dy=-0.0001 +dz=0.0018 +drx=0 +dry=0 +drz=0 +ds=-8e-05 "
--  "+t_epoch=2000 +convention=position_vector");      
   end operation_geocentricCRS_to_geocentricCRS_different_datum_context;

   procedure operation_geogCRS_geocentricCRS_same_datum_to_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // WGS84 geocentric
--  authFactory->createCoordinateReferenceSystem("4978"),
--  authFactory->createCoordinateReferenceSystem("4326"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "Conversion from WGS 84 (geocentric) to WGS 84 (geog2D)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=cart +ellps=WGS84 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_geogCRS_geocentricCRS_same_datum_to_context;

   procedure operation_geogCRS_to_geocentricCRS_different_datum_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // ITRF2000 (geog3D)
--  authFactory->createCoordinateReferenceSystem("7909"),
--  // ITRF2005 (geocentric)
--  authFactory->createCoordinateReferenceSystem("4896"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "Conversion from ITRF2000 (geog3D) to ITRF2000 (geocentric) + "
--  "ITRF2000 to ITRF2005 (1)");
--  EXPECT_PRED_FORMAT2(
--  ComparePROJString,
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +z_in=m +xy_out=rad +z_out=m "
--  "+step +proj=cart +ellps=GRS80 +step +proj=helmert +x=-0.0001 "
--  "+y=0.0008 +z=0.0058 +rx=0 +ry=0 +rz=0 +s=-0.0004 +dx=0.0002 "
--  "+dy=-0.0001 +dz=0.0018 +drx=0 +dry=0 +drz=0 +ds=-8e-05 "
--  "+t_epoch=2000 +convention=position_vector");      
   end operation_geogCRS_to_geocentricCRS_different_datum_context;

   procedure operation_geocentricCRS_to_geogCRS_different_datum_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // ITRF2000 (geocentric)
--  authFactory->createCoordinateReferenceSystem("4919"),
--  // ITRF2005 (geog3D)
--  authFactory->createCoordinateReferenceSystem("7910"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "ITRF2000 to ITRF2005 (1) + "
--  "Conversion from ITRF2005 (geocentric) to ITRF2005 (geog3D)");
--  EXPECT_PRED_FORMAT2(
--  ComparePROJString,
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=helmert +x=-0.0001 "
--  "+y=0.0008 +z=0.0058 +rx=0 +ry=0 +rz=0 +s=-0.0004 +dx=0.0002 "
--  "+dy=-0.0001 +dz=0.0018 +drx=0 +dry=0 +drz=0 +ds=-8e-05 "
--  "+t_epoch=2000 +convention=position_vector +step +inv "
--  "+proj=cart +ellps=GRS80 +step +proj=unitconvert +xy_in=rad "
--  "+z_in=m +xy_out=deg +z_out=m +step +proj=axisswap +order=2,1");      
   end operation_geocentricCRS_to_geogCRS_different_datum_context;

   procedure operation_esri_projectedCRS_to_geogCRS_with_ITRF_intermediate_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto dbContext = DatabaseContext::create();
--  auto authFactoryEPSG = AuthorityFactory::create(dbContext, "EPSG");
--  auto authFactoryESRI = AuthorityFactory::create(dbContext, "ESRI");
--  auto ctxt =
--  CoordinateOperationContext::create(authFactoryEPSG, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NAD_1983_CORS96_StatePlane_North_Carolina_FIPS_3200_Ft_US (projected)
--  authFactoryESRI->createCoordinateReferenceSystem("103501"),
--  // ITRF2005 (geog3D)
--  authFactoryEPSG->createCoordinateReferenceSystem("7910"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of NAD_1983_CORS96_StatePlane_North_Carolina_"
--  "FIPS_3200_Ft_US + "
--  "Conversion from NAD83(CORS96) (geog2D) to NAD83(CORS96) "
--  "(geocentric) + Inverse of ITRF2000 to NAD83(CORS96) (1) + "
--  "ITRF2000 to ITRF2005 (1) + "
--  "Conversion from ITRF2005 (geocentric) to ITRF2005 (geog3D)");
--  EXPECT_PRED_FORMAT2(
--  ComparePROJString,
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=us-ft "
--  "+xy_out=m +step +inv +proj=lcc +lat_0=33.75 +lon_0=-79 "
--  "+lat_1=34.3333333333333 +lat_2=36.1666666666667 "
--  "+x_0=609601.219202438 +y_0=0 +ellps=GRS80 +step +proj=cart "
--  "+ellps=GRS80 +step +inv +proj=helmert +x=0.9956 +y=-1.9013 "
--  "+z=-0.5215 +rx=0.025915 +ry=0.009426 +rz=0.011599 +s=0.00062 "
--  "+dx=0.0007 +dy=-0.0007 +dz=0.0005 +drx=6.7e-05 +dry=-0.000757 "
--  "+drz=-5.1e-05 +ds=-0.00018 +t_epoch=1997 "
--  "+convention=coordinate_frame +step +proj=helmert +x=-0.0001 "
--  "+y=0.0008 +z=0.0058 +rx=0 +ry=0 +rz=0 +s=-0.0004 +dx=0.0002 "
--  "+dy=-0.0001 +dz=0.0018 +drx=0 +dry=0 +drz=0 +ds=-8e-05 "
--  "+t_epoch=2000 +convention=position_vector +step +inv +proj=cart "
--  "+ellps=GRS80 +step +proj=unitconvert +xy_in=rad +z_in=m "
--  "+xy_out=deg +z_out=m +step +proj=axisswap +order=2,1");      
   end operation_esri_projectedCRS_to_geogCRS_with_ITRF_intermediate_context;

   procedure operation_geogCRS_to_projCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, createUTM31_WGS84());
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_TRUE(std::dynamic_pointer_cast<Conversion>(op) != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=utm "
--  "+zone=31 +ellps=WGS84");      
   end operation_geogCRS_to_projCRS;

   procedure operation_geogCRS_longlat_to_geogCS_latlong (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto sourceCRS = GeographicCRS::OGC_CRS84;
--  auto targetCRS = GeographicCRS::EPSG_4326;
--  auto op = CoordinateOperationFactory::create()->createOperation(sourceCRS,
--  targetCRS);
--  ASSERT_TRUE(op != nullptr);
--  auto conv = std::dynamic_pointer_cast<Conversion>(op);
--  ASSERT_TRUE(conv != nullptr);
--  EXPECT_TRUE(op->sourceCRS() &&
--  op->sourceCRS()->isEquivalentTo(sourceCRS.get()));
--  EXPECT_TRUE(op->targetCRS() &&
--  op->targetCRS()->isEquivalentTo(targetCRS.get()));
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=2,1");
--  auto convInverse = nn_dynamic_pointer_cast<Conversion>(conv->inverse());
--  ASSERT_TRUE(convInverse != nullptr);
--  EXPECT_TRUE(convInverse->sourceCRS() &&
--  convInverse->sourceCRS()->isEquivalentTo(targetCRS.get()));
--  EXPECT_TRUE(convInverse->targetCRS() &&
--  convInverse->targetCRS()->isEquivalentTo(sourceCRS.get()));
--  EXPECT_EQ(conv->method()->exportToWKT(WKTFormatter::create().get()),
--  convInverse->method()->exportToWKT(WKTFormatter::create().get()));
--  EXPECT_TRUE(conv->method()->isEquivalentTo(convInverse->method().get()));      
   end operation_geogCRS_longlat_to_geogCS_latlong;

   procedure operation_geogCRS_longlat_to_geogCS_latlong_database (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  AuthorityFactory::create(DatabaseContext::create(), "OGC")
--  ->createCoordinateReferenceSystem("CRS84"),
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  ->createCoordinateReferenceSystem("4326"),
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=2,1");      
   end operation_geogCRS_longlat_to_geogCS_latlong_database;

   procedure operation_geogCRS_longlat_to_projCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::OGC_CRS84, createUTM31_WGS84());
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=utm +zone=31 +ellps=WGS84");      
   end operation_geogCRS_longlat_to_projCRS;

   procedure operation_geogCRS_different_from_baseCRS_to_projCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4807, createUTM31_WGS84());
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(
--  op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv +proj=longlat "
--  "+ellps=clrk80ign +pm=paris +step +proj=utm +zone=31 "
--  "+ellps=WGS84");      
   end operation_geogCRS_different_from_baseCRS_to_projCRS;

   procedure operation_geocentricCRS_to_projCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createGeocentricDatumWGS84(), createUTM31_WGS84());
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=cart +ellps=WGS84 +step "
--  "+proj=utm +zone=31 +ellps=WGS84");      
   end operation_geocentricCRS_to_projCRS;

   procedure operation_projCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createUTM31_WGS84(), GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=31 +ellps=WGS84 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_projCRS_to_geogCRS;

   procedure operation_projCRS_no_id_to_geogCRS_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto src = authFactory->createCoordinateReferenceSystem(
--  "28992"); // Amersfoort / RD New
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("4258"); // ETRS89 2D
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_GE(list.size(), 1U);
--  auto wkt2 =
--  "PROJCRS[\"unknown\",\n"
--  "    BASEGEOGCRS[\"Amersfoort\",\n"
--  "       DATUM[\"Amersfoort\",\n"
--  "            ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128]]],\n"
--  "    CONVERSION[\"unknown\",\n"
--  "        METHOD[\"Oblique Stereographic\"],\n"
--  "        PARAMETER[\"Latitude of natural origin\",52.1561605555556],\n"
--  "        PARAMETER[\"Longitude of natural origin\",5.38763888888889],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",0.9999079],\n"
--  "        PARAMETER[\"False easting\",155000],\n"
--  "        PARAMETER[\"False northing\",463000]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "    LENGTHUNIT[\"metre\",1],\n"
--  "    ID[\"EPSG\",28992]]";
--  auto obj = WKTParser().createFromWKT(wkt2);
--  auto src_from_wkt2 = nn_dynamic_pointer_cast<CRS>(obj);
--  ASSERT_TRUE(src_from_wkt2 != nullptr);
--  auto list2 = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(src_from_wkt2), dst, ctxt);
--  ASSERT_GE(list.size(), list2.size() - 1);
--  for (size_t i = 0; i < list.size(); i++) {
--  const auto &op = list[i];
--  const auto &op2 = list2[i];
--  EXPECT_TRUE(
--  op->isEquivalentTo(op2.get(), IComparable::Criterion::EQUIVALENT));
--  }      
   end operation_projCRS_no_id_to_geogCRS_context;

   procedure operation_projCRS_3D_to_geogCRS_3D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  auto wkt = "PROJCRS[\"NAD83(HARN) / Oregon GIC Lambert (ft)\",\n"
--  "    BASEGEOGCRS[\"NAD83(HARN)\",\n"
--  "        DATUM[\"NAD83 (High Accuracy Reference Network)\",\n"
--  "            ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        ID[\"EPSG\",4957]],\n"
--  "    CONVERSION[\"unnamed\",\n"
--  "        METHOD[\"Lambert Conic Conformal (2SP)\",\n"
--  "            ID[\"EPSG\",9802]],\n"
--  "        PARAMETER[\"Latitude of false origin\",41.75,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8821]],\n"
--  "        PARAMETER[\"Longitude of false origin\",-120.5,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8822]],\n"
--  "        PARAMETER[\"Latitude of 1st standard parallel\",43,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8823]],\n"
--  "        PARAMETER[\"Latitude of 2nd standard parallel\",45.5,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8824]],\n"
--  "        PARAMETER[\"Easting at false origin\",1312335.958,\n"
--  "            LENGTHUNIT[\"foot\",0.3048],\n"
--  "            ID[\"EPSG\",8826]],\n"
--  "        PARAMETER[\"Northing at false origin\",0,\n"
--  "            LENGTHUNIT[\"foot\",0.3048],\n"
--  "            ID[\"EPSG\",8827]]],\n"
--  "    CS[Cartesian,3],\n"
--  "        AXIS[\"easting\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"foot\",0.3048]],\n"
--  "        AXIS[\"northing\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"foot\",0.3048]],\n"
--  "        AXIS[\"ellipsoidal height (h)\",up,\n"
--  "            ORDER[3],\n"
--  "            LENGTHUNIT[\"foot\",0.3048]]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto src = NN_CHECK_ASSERT(nn_dynamic_pointer_cast<CRS>(obj));
--  auto dst = authFactory->createCoordinateReferenceSystem(
--  "4957"); // NAD83(HARN) (3D)
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  // Check that z ft->m conversion is done (and just once)
--  "+step +proj=unitconvert +xy_in=ft +z_in=ft +xy_out=m +z_out=m "
--  "+step +inv +proj=lcc +lat_0=41.75 +lon_0=-120.5 +lat_1=43 "
--  "+lat_2=45.5 +x_0=399999.9999984 +y_0=0 +ellps=GRS80 "
--  "+step +proj=unitconvert +xy_in=rad +z_in=m +xy_out=deg +z_out=m "
--  "+step +proj=axisswap +order=2,1");      
   end operation_projCRS_3D_to_geogCRS_3D_context;

   procedure operation_projCRS_3D_to_projCRS_2D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  auto wkt =
--  "PROJCRS[\"Projected 3d CRS\",\n"
--  "    BASEGEOGCRS[\"JGD2000\",\n"
--  "        DATUM[\"Japanese Geodetic Datum 2000\",\n"
--  "            ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        ID[\"EPSG\",4947]],\n" // the code is what triggered the bug
--  "    CONVERSION[\"Japan Plane Rectangular CS zone VII\",\n"
--  "        METHOD[\"Transverse Mercator\",\n"
--  "            ID[\"EPSG\",9807]],\n"
--  "        PARAMETER[\"Latitude of natural origin\",36,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8801]],\n"
--  "        PARAMETER[\"Longitude of natural origin\",137.166666666667,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8802]],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",0.9999,\n"
--  "            SCALEUNIT[\"unity\",1],\n"
--  "            ID[\"EPSG\",8805]],\n"
--  "        PARAMETER[\"False easting\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8807]],\n"
--  "        ID[\"EPSG\",17807]],\n"
--  "    CS[Cartesian,3],\n"
--  "        AXIS[\"northing (X)\",north,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"easting (Y)\",east,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"ellipsoidal height (h)\",up,\n"
--  "            ORDER[3],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto src = NN_CHECK_ASSERT(nn_dynamic_pointer_cast<CRS>(obj));
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("32653"); // WGS 84 UTM 53
--  // We just want to check that we don't get inconsistent chaining exception
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_GE(list.size(), 1U);      
   end operation_projCRS_3D_to_projCRS_2D_context;

   procedure operation_geogCRS_3D_to_projCRS_with_2D_geocentric_translation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto src =
--  authFactory->createCoordinateReferenceSystem("4979"); // WGS 84 3D
--  
--  // Azores Central 1948 / UTM zone 26N
--  auto dst = authFactory->createCoordinateReferenceSystem("2189");
--  
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_GE(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +z_in=m +xy_out=rad +z_out=m "
--  "+step +proj=push +v_3 " // this is what we check
--  "+step +proj=cart +ellps=WGS84 "
--  "+step +proj=helmert +x=104 +y=-167 +z=38 "
--  "+step +inv +proj=cart +ellps=intl "
--  "+step +proj=pop +v_3 " // this is what we check
--  "+step +proj=utm +zone=26 +ellps=intl");
--  
--  auto listReverse =
--  CoordinateOperationFactory::create()->createOperations(dst, src, ctxt);
--  ASSERT_GE(listReverse.size(), 1U);
--  EXPECT_EQ(
--  listReverse[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +inv +proj=utm +zone=26 +ellps=intl "
--  "+step +proj=push +v_3 " // this is what we check
--  "+step +proj=cart +ellps=intl "
--  "+step +proj=helmert +x=-104 +y=167 +z=-38 "
--  "+step +inv +proj=cart +ellps=WGS84 "
--  "+step +proj=pop +v_3 " // this is what we check
--  "+step +proj=unitconvert +xy_in=rad +z_in=m +xy_out=deg +z_out=m "
--  "+step +proj=axisswap +order=2,1");      
   end operation_geogCRS_3D_to_projCRS_with_2D_geocentric_translation;

   procedure operation_projCRS_to_projCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createUTM31_WGS84(), createUTM32_WGS84());
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=31 +ellps=WGS84 +step "
--  "+proj=utm +zone=32 +ellps=WGS84");      
   end operation_projCRS_to_projCRS;

   procedure operation_projCRS_to_projCRS_different_baseCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto utm32 = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4807,
--  Conversion::createUTM(PropertyMap(), 32, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  createUTM31_WGS84(), utm32);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=31 +ellps=WGS84 +step "
--  "+proj=utm +zone=32 +ellps=clrk80ign +pm=paris");      
   end operation_projCRS_to_projCRS_different_baseCRS;

   procedure operation_projCRS_to_projCRS_context_compatible_area (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("32634"), // UTM 34
--  authFactory->createCoordinateReferenceSystem(
--  "2171"), // Pulkovo 42 Poland I
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of UTM zone 34N + Inverse of Pulkovo 1942(58) to WGS 84 "
--  "(1) + Poland zone I");
--  ASSERT_EQ(list[0]->coordinateOperationAccuracies().size(), 1U);
--  EXPECT_EQ(list[0]->coordinateOperationAccuracies()[0]->value(), "1");      
   end operation_projCRS_to_projCRS_context_compatible_area;

   procedure operation_projCRS_to_projCRS_context_compatible_area_bis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem(
--  "3844"), // Pulkovo 42 Stereo 70 (Romania)
--  authFactory->createCoordinateReferenceSystem("32634"), // UTM 34
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(), "Inverse of Stereo 70 + "
--  "Pulkovo 1942(58) to WGS 84 "
--  "(19) + UTM zone 34N");
--  ASSERT_EQ(list[0]->coordinateOperationAccuracies().size(), 1U);
--  EXPECT_EQ(list[0]->coordinateOperationAccuracies()[0]->value(), "3");      
   end operation_projCRS_to_projCRS_context_compatible_area_bis;

   procedure operation_projCRS_to_projCRS_context_one_incompatible_area (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("32631"), // UTM 31
--  authFactory->createCoordinateReferenceSystem(
--  "2171"), // Pulkovo 42 Poland I
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of UTM zone 31N + Inverse of Pulkovo 1942(58) to WGS 84 "
--  "(1) + Poland zone I");
--  ASSERT_EQ(list[0]->coordinateOperationAccuracies().size(), 1U);
--  EXPECT_EQ(list[0]->coordinateOperationAccuracies()[0]->value(), "1");      
   end operation_projCRS_to_projCRS_context_one_incompatible_area;

   procedure operation_projCRS_to_projCRS_context_incompatible_areas (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("32631"), // UTM 31
--  authFactory->createCoordinateReferenceSystem("32633"), // UTM 33
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(), "Inverse of UTM zone 31N + UTM zone 33N");
--  ASSERT_EQ(list[0]->coordinateOperationAccuracies().size(), 1U);
--  EXPECT_EQ(list[0]->coordinateOperationAccuracies()[0]->value(), "0");      
   end operation_projCRS_to_projCRS_context_incompatible_areas;

   procedure operation_projCRS_to_projCRS_context_incompatible_areas_ballpark (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("26711"), // UTM 11 NAD27
--  authFactory->createCoordinateReferenceSystem(
--  "3034"), // ETRS89 / LCC Europe
--  ctxt);
--  ASSERT_GE(list.size(), 1U);
--  EXPECT_TRUE(list[0]->hasBallparkTransformation());      
   end operation_projCRS_to_projCRS_context_incompatible_areas_ballpark;

   procedure operation_projCRS_to_projCRS_north_pole_inverted_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  ->createCoordinateReferenceSystem("32661"),
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  ->createCoordinateReferenceSystem("5041"),
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=2,1");      
   end operation_projCRS_to_projCRS_north_pole_inverted_axis;

   procedure operation_projCRS_to_projCRS_south_pole_inverted_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  ->createCoordinateReferenceSystem("32761"),
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  ->createCoordinateReferenceSystem("5042"),
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=2,1");      
   end operation_projCRS_to_projCRS_south_pole_inverted_axis;

   procedure operation_projCRS_to_projCRS_through_geog3D (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // Check that when going from projCRS to projCRS, using
--  // geog2D-->geog3D-->geog3D-->geog2D we do not have issues with
--  // inconsistent CRS chaining, due to how we 'hack' a bit some intermediate
--  // steps
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem("5367"), // CR05 / CRTM05
--  authFactory->createCoordinateReferenceSystem(
--  "8908"), // CR-SIRGAS / CRTM05
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +inv +proj=tmerc +lat_0=0 +lon_0=-84 +k=0.9999 "
--  "+x_0=500000 +y_0=0 +ellps=WGS84 "
--  "+step +proj=push +v_3 "
--  "+step +proj=cart +ellps=WGS84 "
--  "+step +proj=helmert +x=-0.16959 +y=0.35312 +z=0.51846 "
--  "+rx=-0.03385 +ry=0.16325 +rz=-0.03446 +s=0.03693 "
--  "+convention=position_vector "
--  "+step +inv +proj=cart +ellps=GRS80 "
--  "+step +proj=pop +v_3 "
--  "+step +proj=tmerc +lat_0=0 +lon_0=-84 +k=0.9999 +x_0=500000 "
--  "+y_0=0 +ellps=GRS80");      
   end operation_projCRS_to_projCRS_through_geog3D;

   procedure operation_boundCRS_of_geogCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  boundCRS, GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=clrk80ign +pm=paris +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk80ign +step +proj=helmert +x=1 +y=2 "
--  "+z=3 +rx=4 +ry=5 +rz=6 +s=7 +convention=position_vector +step "
--  "+inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_boundCRS_of_geogCRS_to_geogCRS;

   procedure operation_boundCRS_of_geogCRS_to_geogCRS_with_area (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4267, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  boundCRS, authFactory->createCoordinateReferenceSystem("4326"));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk66 +step +proj=helmert +x=1 +y=2 "
--  "+z=3 +rx=4 +ry=5 +rz=6 +s=7 +convention=position_vector +step "
--  "+inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_boundCRS_of_geogCRS_to_geogCRS_with_area;

   procedure operation_boundCRS_of_geogCRS_to_unrelated_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  boundCRS, GeographicCRS::EPSG_4269);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  CoordinateOperationFactory::create()
--  ->createOperation(GeographicCRS::EPSG_4807,
--  GeographicCRS::EPSG_4269)
--  ->exportToPROJString(PROJStringFormatter::create().get()));      
   end operation_boundCRS_of_geogCRS_to_unrelated_geogCRS;

   procedure operation_createOperation_boundCRS_identified_by_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=WGS84 +type=crs");
--  auto src = nn_dynamic_pointer_cast<GeographicCRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  
--  auto objDest = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=32 +a=6378249.2 +b=6356515 "
--  "+towgs84=-263.0,6.0,431.0 +no_defs +type=crs");
--  auto dest = nn_dynamic_pointer_cast<BoundCRS>(objDest);
--  ASSERT_TRUE(dest != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dest));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=push +v_3 +step +proj=cart +ellps=WGS84 +step "
--  "+proj=helmert +x=263 +y=-6 +z=-431 +step +inv +proj=cart "
--  "+ellps=clrk80ign +step +proj=pop +v_3 +step +proj=utm +zone=32 "
--  "+ellps=clrk80ign");
--  
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dest), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_TRUE(list[0]->isEquivalentTo(op.get()));      
   end operation_createOperation_boundCRS_identified_by_datum;

   procedure operation_boundCRS_of_clrk_66_geogCRS_to_nad83_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=latlong +ellps=clrk66 +nadgrids=ntv1_can.dat,conus +type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  
--  auto objDest = PROJStringParser().createFromPROJString(
--  "+proj=latlong +datum=NAD83 +type=crs");
--  auto dest = nn_dynamic_pointer_cast<CRS>(objDest);
--  ASSERT_TRUE(dest != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dest));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=ntv1_can.dat,conus "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");      
   end operation_boundCRS_of_clrk_66_geogCRS_to_nad83_geogCRS;

   procedure operation_boundCRS_of_clrk_66_projCRS_to_nad83_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=17 +ellps=clrk66 +nadgrids=ntv1_can.dat,conus "
--  "+type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  
--  auto objDest = PROJStringParser().createFromPROJString(
--  "+proj=latlong +datum=NAD83 +type=crs");
--  auto dest = nn_dynamic_pointer_cast<CRS>(objDest);
--  ASSERT_TRUE(dest != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dest));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=17 +ellps=clrk66 "
--  "+step +proj=hgridshift +grids=ntv1_can.dat,conus "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");      
   end operation_boundCRS_of_clrk_66_projCRS_to_nad83_geogCRS;

   procedure operation_boundCRS_of_projCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto utm31 = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4807,
--  Conversion::createUTM(PropertyMap(), 31, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto boundCRS = BoundCRS::createFromTOWGS84(
--  utm31, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  boundCRS, GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=31 +ellps=clrk80ign "
--  "+pm=paris +step +proj=push +v_3 +step +proj=cart "
--  "+ellps=clrk80ign +step +proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 "
--  "+rz=6 +s=7 +convention=position_vector +step +inv +proj=cart "
--  "+ellps=WGS84 +step +proj=pop +v_3 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_boundCRS_of_projCRS_to_geogCRS;

   procedure operation_boundCRS_of_geogCRS_to_projCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto utm31 = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createUTM(PropertyMap(), 31, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto op =
--  CoordinateOperationFactory::create()->createOperation(boundCRS, utm31);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=clrk80ign +pm=paris +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk80ign +step +proj=helmert +x=1 +y=2 "
--  "+z=3 +rx=4 +ry=5 +rz=6 +s=7 +convention=position_vector +step "
--  "+inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 +step "
--  "+proj=utm +zone=31 +ellps=WGS84");      
   end operation_boundCRS_of_geogCRS_to_projCRS;

   procedure operation_boundCRS_of_geogCRS_to_unrelated_geogCRS_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  // ETRS89
--  auto dst = authFactory->createCoordinateReferenceSystem("4258");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  // Check with it is a concatenated operation, since it doesn't particularly
--  // show up in the PROJ string
--  EXPECT_TRUE(dynamic_cast<ConcatenatedOperation *>(list[0].get()) !=
--  nullptr);
--  EXPECT_EQ(list[0]->nameStr(), "Transformation from NTF (Paris) to WGS84 + "
--  "Inverse of ETRS89 to WGS 84 (1)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=grad +xy_out=rad "
--  "+step +inv +proj=longlat +ellps=clrk80ign +pm=paris "
--  "+step +proj=push +v_3 +step +proj=cart +ellps=clrk80ign "
--  "+step +proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 +rz=6 +s=7 "
--  "+convention=position_vector "
--  "+step +inv +proj=cart +ellps=GRS80 +step +proj=pop +v_3 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");      
   end operation_boundCRS_of_geogCRS_to_unrelated_geogCRS_context;

   procedure operation_geogCRS_to_boundCRS_of_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, boundCRS);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=WGS84 +step +inv +proj=helmert +x=1 "
--  "+y=2 +z=3 +rx=4 +ry=5 +rz=6 +s=7 +convention=position_vector "
--  "+step +inv +proj=cart +ellps=clrk80ign +step +proj=pop +v_3 "
--  "+step +proj=longlat +ellps=clrk80ign +pm=paris +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=grad +step +proj=axisswap "
--  "+order=2,1");      
   end operation_geogCRS_to_boundCRS_of_geogCRS;

   procedure operation_boundCRS_to_boundCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto utm31 = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4807,
--  Conversion::createUTM(PropertyMap(), 31, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto utm32 = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4269,
--  Conversion::createUTM(PropertyMap(), 32, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto boundCRS1 = BoundCRS::createFromTOWGS84(
--  utm31, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto boundCRS2 = BoundCRS::createFromTOWGS84(
--  utm32, std::vector<double>{8, 9, 10, 11, 12, 13, 14});
--  auto op = CoordinateOperationFactory::create()->createOperation(boundCRS1,
--  boundCRS2);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=31 +ellps=clrk80ign "
--  "+pm=paris +step +proj=push +v_3 +step +proj=cart "
--  "+ellps=clrk80ign +step +proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 "
--  "+rz=6 +s=7 +convention=position_vector +step +inv +proj=helmert "
--  "+x=8 +y=9 +z=10 +rx=11 +ry=12 +rz=13 +s=14 "
--  "+convention=position_vector +step +inv +proj=cart +ellps=GRS80 "
--  "+step +proj=pop +v_3 +step +proj=utm +zone=32 +ellps=GRS80");      
   end operation_boundCRS_to_boundCRS;

   procedure operation_boundCRS_to_boundCRS_noop_for_TOWGS84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS1 = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto boundCRS2 = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4269, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto op = CoordinateOperationFactory::create()->createOperation(boundCRS1,
--  boundCRS2);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=clrk80ign +pm=paris +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk80ign +step +inv +proj=cart "
--  "+ellps=GRS80 +step +proj=pop +v_3 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_boundCRS_to_boundCRS_noop_for_TOWGS84;

   procedure operation_boundCRS_to_boundCRS_unralated_hub (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS1 = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto boundCRS2 = BoundCRS::create(
--  GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4979,
--  Transformation::createGeocentricTranslations(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4979,
--  1.0, 2.0, 3.0, std::vector<PositionalAccuracyNNPtr>()));
--  auto op = CoordinateOperationFactory::create()->createOperation(boundCRS1,
--  boundCRS2);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  CoordinateOperationFactory::create()
--  ->createOperation(boundCRS1->baseCRS(), boundCRS2->baseCRS())
--  ->exportToPROJString(PROJStringFormatter::create().get()));      
   end operation_boundCRS_to_boundCRS_unralated_hub;

   procedure operation_boundCRS_of_projCRS_towgs84_to_boundCRS_of_projCRS_nadgrids (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=15 +datum=NAD83 +units=m +no_defs +ellps=GRS80 "
--  "+towgs84=0,0,0 +type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=15 +datum=NAD27 +units=m +no_defs +ellps=clrk66 "
--  "+nadgrids=@conus,@alaska,@ntv2_0.gsb,@ntv1_can.dat +type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dst));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=15 +ellps=GRS80 +step "
--  "+inv +proj=hgridshift "
--  "+grids=@conus,@alaska,@ntv2_0.gsb,@ntv1_can.dat +step +proj=utm "
--  "+zone=15 +ellps=clrk66");      
   end operation_boundCRS_of_projCRS_towgs84_to_boundCRS_of_projCRS_nadgrids;

   procedure operation_boundCRS_with_basecrs_with_extent_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt =
--  "BOUNDCRS[\n"
--  "    SOURCECRS[\n"
--  "        PROJCRS[\"NAD83 / California zone 3 (ftUS)\",\n"
--  "            BASEGEODCRS[\"NAD83\",\n"
--  "                DATUM[\"North American Datum 1983\",\n"
--  "                    ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                        LENGTHUNIT[\"metre\",1]]],\n"
--  "                PRIMEM[\"Greenwich\",0,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "            CONVERSION[\"SPCS83 California zone 3 (US Survey "
--  "feet)\",\n"
--  "                METHOD[\"Lambert Conic Conformal (2SP)\",\n"
--  "                    ID[\"EPSG\",9802]],\n"
--  "                PARAMETER[\"Latitude of false origin\",36.5,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8821]],\n"
--  "                PARAMETER[\"Longitude of false origin\",-120.5,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8822]],\n"
--  "                PARAMETER[\"Latitude of 1st standard parallel\","
--  "                    38.4333333333333,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8823]],\n"
--  "                PARAMETER[\"Latitude of 2nd standard parallel\","
--  "                    37.0666666666667,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8824]],\n"
--  "                PARAMETER[\"Easting at false origin\",6561666.667,\n"
--  "                    LENGTHUNIT[\"US survey foot\","
--  "                    0.304800609601219],\n"
--  "                    ID[\"EPSG\",8826]],\n"
--  "                PARAMETER[\"Northing at false origin\",1640416.667,\n"
--  "                    LENGTHUNIT[\"US survey foot\","
--  "                    0.304800609601219],\n"
--  "                    ID[\"EPSG\",8827]]],\n"
--  "            CS[Cartesian,2],\n"
--  "                AXIS[\"easting (X)\",east,\n"
--  "                    ORDER[1],\n"
--  "                    LENGTHUNIT[\"US survey foot\","
--  "                    0.304800609601219]],\n"
--  "                AXIS[\"northing (Y)\",north,\n"
--  "                    ORDER[2],\n"
--  "                    LENGTHUNIT[\"US survey foot\","
--  "                    0.304800609601219]],\n"
--  "            SCOPE[\"unknown\"],\n"
--  "            AREA[\"USA - California - SPCS - 3\"],\n"
--  "            BBOX[36.73,-123.02,38.71,-117.83],\n"
--  "            ID[\"EPSG\",2227]]],\n"
--  "    TARGETCRS[\n"
--  "        GEODCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[ellipsoidal,2],\n"
--  "                AXIS[\"latitude\",north,\n"
--  "                    ORDER[1],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"longitude\",east,\n"
--  "                    ORDER[2],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            ID[\"EPSG\",4326]]],\n"
--  "    ABRIDGEDTRANSFORMATION[\"NAD83 to WGS 84 (1)\",\n"
--  "        METHOD[\"Geocentric translations (geog2D domain)\",\n"
--  "            ID[\"EPSG\",9603]],\n"
--  "        PARAMETER[\"X-axis translation\",0,\n"
--  "            ID[\"EPSG\",8605]],\n"
--  "        PARAMETER[\"Y-axis translation\",0,\n"
--  "            ID[\"EPSG\",8606]],\n"
--  "        PARAMETER[\"Z-axis translation\",0,\n"
--  "            ID[\"EPSG\",8607]],\n"
--  "        SCOPE[\"unknown\"],\n"
--  "        AREA[\"North America - Canada and USA (CONUS, Alaska "
--  "mainland)\"],\n"
--  "        BBOX[23.81,-172.54,86.46,-47.74],\n"
--  "        ID[\"EPSG\",1188]]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto boundCRS = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(boundCRS != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(boundCRS), GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->nameStr(), "Inverse of SPCS83 California zone 3 (US Survey "
--  "feet) + NAD83 to WGS 84 (1)");      
   end operation_boundCRS_with_basecrs_with_extent_to_geogCRS;

   procedure operation_ETRS89_3D_to_proj_string_with_geoidgrids_nadgrids (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  // ETRS89 3D
--  auto src = authFactory->createCoordinateReferenceSystem("4937");
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=sterea +lat_0=52.15616055555555 +lon_0=5.38763888888889 "
--  "+k=0.9999079 +x_0=155000 +y_0=463000 +ellps=bessel "
--  "+nadgrids=rdtrans2008.gsb +geoidgrids=naptrans2008.gtx +units=m "
--  "+type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  src, NN_NO_CHECK(dst), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +inv +proj=vgridshift +grids=naptrans2008.gtx "
--  "+multiplier=1 "
--  "+step +inv +proj=hgridshift +grids=rdtrans2008.gsb "
--  "+step +proj=sterea +lat_0=52.1561605555556 "
--  "+lon_0=5.38763888888889 +k=0.9999079 +x_0=155000 "
--  "+y_0=463000 +ellps=bessel");      
   end operation_ETRS89_3D_to_proj_string_with_geoidgrids_nadgrids;

   procedure operation_WGS84_G1762_to_compoundCRS_with_bound_vertCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactoryEPSG =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  // WGS 84 (G1762) 3D
--  auto src = authFactoryEPSG->createCoordinateReferenceSystem("7665");
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=NAD83 +geoidgrids=@foo.gtx +type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  src, NN_NO_CHECK(dst), ctxt);
--  ASSERT_GE(list.size(), 53U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of WGS 84 to WGS 84 (G1762) + "
--  "Inverse of unknown to WGS84 ellipsoidal height + "
--  "Inverse of NAD83 to WGS 84 (1) + "
--  "axis order change (2D)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +inv +proj=vgridshift +grids=@foo.gtx +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");      
   end operation_WGS84_G1762_to_compoundCRS_with_bound_vertCRS;

   procedure operation_compoundCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto compound = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{GeographicCRS::EPSG_4326, createVerticalCRS()});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  compound, GeographicCRS::EPSG_4807);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  CoordinateOperationFactory::create()
--  ->createOperation(GeographicCRS::EPSG_4326,
--  GeographicCRS::EPSG_4807)
--  ->exportToPROJString(PROJStringFormatter::create().get()));      
   end operation_compoundCRS_to_geogCRS;

   procedure operation_transformation_height_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto transf = createBoundVerticalCRS()->transformation();
--  EXPECT_EQ(transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=vgridshift +grids=us_nga_egm08_25.tif +multiplier=1");
--  
--  auto grids = transf->gridsNeeded(DatabaseContext::create(), false);
--  ASSERT_EQ(grids.size(), 1U);
--  auto gridDesc = *(grids.begin());
--  EXPECT_EQ(gridDesc.shortName, "us_nga_egm08_25.tif");
--  EXPECT_TRUE(gridDesc.packageName.empty());
--  EXPECT_EQ(gridDesc.url, "https://cdn.proj.org/us_nga_egm08_25.tif");
--  if (gridDesc.available) {
--  EXPECT_TRUE(!gridDesc.fullName.empty()) << gridDesc.fullName;
--  EXPECT_TRUE(gridDesc.fullName.find(gridDesc.shortName) !=
--  std::string::npos)
--  << gridDesc.fullName;
--  } else {
--  EXPECT_TRUE(gridDesc.fullName.empty()) << gridDesc.fullName;
--  }
--  EXPECT_EQ(gridDesc.directDownload, true);
--  EXPECT_EQ(gridDesc.openLicense, true);      
   end operation_transformation_height_to_PROJ_string;

   procedure operation_transformation_Geographic3D_to_GravityRelatedHeight_gtx (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "COORDINATEOPERATION[\"ETRS89 to NAP height (1)\",\n"
--  "    VERSION[\"RDNAP-Nld 2008\"],\n"
--  "    SOURCECRS[\n"
--  "        GEOGCRS[\"ETRS89\",\n"
--  "            DATUM[\"European Terrestrial Reference System 1989\",\n"
--  "                ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[ellipsoidal,3],\n"
--  "                AXIS[\"geodetic latitude (Lat)\",north,\n"
--  "                    ORDER[1],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"geodetic longitude (Lon)\",east,\n"
--  "                    ORDER[2],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"ellipsoidal height (h)\",up,\n"
--  "                    ORDER[3],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",4937]]],\n"
--  "    TARGETCRS[\n"
--  "        VERTCRS[\"NAP height\",\n"
--  "            VDATUM[\"Normaal Amsterdams Peil\"],\n"
--  "            CS[vertical,1],\n"
--  "                AXIS[\"gravity-related height (H)\",up,\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",5709]]],\n"
--  "    METHOD[\"Geographic3D to GravityRelatedHeight (US .gtx)\",\n"
--  "        ID[\"EPSG\",9665]],\n"
--  "    PARAMETERFILE[\"Geoid (height correction) model "
--  "file\",\"naptrans2008.gtx\"],\n"
--  "    OPERATIONACCURACY[0.01],\n"
--  "    USAGE[\n"
--  "        SCOPE[\"unknown\"],\n"
--  "        AREA[\"Netherlands - onshore\"],\n"
--  "        BBOX[50.75,3.2,53.7,7.22]],\n"
--  "    ID[\"EPSG\",7001]]";
--  ;
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto transf = nn_dynamic_pointer_cast<Transformation>(obj);
--  ASSERT_TRUE(transf != nullptr);
--  
--  // Check that we correctly inverse files in the case of
--  // "Geographic3D to GravityRelatedHeight (US .gtx)"
--  EXPECT_EQ(transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=vgridshift "
--  "+grids=naptrans2008.gtx +multiplier=1");      
   end operation_transformation_Geographic3D_to_GravityRelatedHeight_gtx;

   procedure operation_transformation_ntv2_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto transformation = Transformation::createNTv2(
--  PropertyMap(), GeographicCRS::EPSG_4807, GeographicCRS::EPSG_4326,
--  "foo.gsb", std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_EQ(
--  transformation->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step "
--  "+proj=hgridshift +grids=foo.gsb +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_transformation_ntv2_to_PROJ_string;

   procedure operation_transformation_VERTCON_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto verticalCRS1 = createVerticalCRS();
--  
--  auto verticalCRS2 = VerticalCRS::create(
--  PropertyMap(), VerticalReferenceFrame::create(PropertyMap()),
--  VerticalCS::createGravityRelatedHeight(UnitOfMeasure::METRE));
--  
--  // Use of this type of transformation is a bit of non-sense here
--  // since it should normally be used with NGVD29 and NAVD88 for VerticalCRS,
--  // and NAD27/NAD83 as horizontal CRS...
--  auto vtransformation = Transformation::createVERTCON(
--  PropertyMap(), verticalCRS1, verticalCRS2, "bla.gtx",
--  std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_EQ(vtransformation->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=vgridshift +grids=bla.gtx +multiplier=0.001");      
   end operation_transformation_VERTCON_to_PROJ_string;

   procedure operation_transformation_NZLVD_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto dbContext = DatabaseContext::create();
--  auto factory = AuthorityFactory::create(dbContext, "EPSG");
--  auto op = factory->createCoordinateOperation("7860", false);
--  EXPECT_EQ(op->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5, dbContext)
--  .get()),
--  "+proj=vgridshift +grids=nz_linz_auckht1946-nzvd2016.tif "
--  "+multiplier=1");      
   end operation_transformation_NZLVD_to_PROJ_string;

   procedure operation_transformation_longitude_rotation_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto src = GeographicCRS::create(
--  PropertyMap(), GeodeticReferenceFrame::create(
--  PropertyMap(), Ellipsoid::WGS84,
--  optional<std::string>(), PrimeMeridian::GREENWICH),
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE));
--  auto dest = GeographicCRS::create(
--  PropertyMap(), GeodeticReferenceFrame::create(
--  PropertyMap(), Ellipsoid::WGS84,
--  optional<std::string>(), PrimeMeridian::PARIS),
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE));
--  auto transformation = Transformation::createLongitudeRotation(
--  PropertyMap(), src, dest, Angle(10));
--  EXPECT_TRUE(transformation->validateParameters().empty());
--  EXPECT_EQ(
--  transformation->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=WGS84 +pm=10 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");
--  EXPECT_EQ(transformation->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +inv "
--  "+proj=longlat +ellps=WGS84 +pm=-10 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_transformation_longitude_rotation_to_PROJ_string;

   procedure operation_transformation_Geographic2D_offsets_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transformation = Transformation::createGeographic2DOffsets(
--  PropertyMap(), GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4326,
--  Angle(0.5), Angle(-1), {});
--  EXPECT_TRUE(transformation->validateParameters().empty());
--  
--  EXPECT_EQ(
--  transformation->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=geogoffset "
--  "+dlat=1800 +dlon=-3600 +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  EXPECT_EQ(transformation->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=geogoffset "
--  "+dlat=-1800 +dlon=3600 +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_transformation_Geographic2D_offsets_to_PROJ_string;

   procedure operation_transformation_Geographic3D_offsets_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transformation = Transformation::createGeographic3DOffsets(
--  PropertyMap(), GeographicCRS::EPSG_4326, GeographicCRS::EPSG_4326,
--  Angle(0.5), Angle(-1), Length(2), {});
--  EXPECT_TRUE(transformation->validateParameters().empty());
--  
--  EXPECT_EQ(
--  transformation->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=geogoffset "
--  "+dlat=1800 +dlon=-3600 +dh=2 +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  EXPECT_EQ(transformation->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=geogoffset "
--  "+dlat=-1800 +dlon=3600 +dh=-2 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_transformation_Geographic3D_offsets_to_PROJ_string;

   procedure operation_transformation_vertical_offset_to_PROJ_string (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transformation = Transformation::createVerticalOffset(
--  PropertyMap(), createVerticalCRS(), createVerticalCRS(), Length(1), {});
--  EXPECT_TRUE(transformation->validateParameters().empty());
--  
--  EXPECT_EQ(
--  transformation->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=geogoffset +dh=1");
--  EXPECT_EQ(transformation->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=geogoffset +dh=-1");      
   end operation_transformation_vertical_offset_to_PROJ_string;

   procedure operation_compoundCRS_with_boundVerticalCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto compound = CompoundCRS::create(
--  PropertyMap(), std::vector<CRSNNPtr>{GeographicCRS::EPSG_4326,
--  createBoundVerticalCRS()});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  compound, GeographicCRS::EPSG_4979);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(
--  op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=vgridshift "
--  "+grids=us_nga_egm08_25.tif +multiplier=1 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end operation_compoundCRS_with_boundVerticalCRS_to_geogCRS;

   procedure operation_compoundCRS_with_boundGeogCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto geogCRS = GeographicCRS::create(
--  PropertyMap(), GeodeticReferenceFrame::create(
--  PropertyMap(), Ellipsoid::WGS84,
--  optional<std::string>(), PrimeMeridian::GREENWICH),
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE));
--  auto horizBoundCRS = BoundCRS::createFromTOWGS84(
--  geogCRS, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto compound = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{horizBoundCRS, createVerticalCRS()});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  compound, GeographicCRS::EPSG_4979);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=WGS84 +step +proj=helmert +x=1 +y=2 "
--  "+z=3 +rx=4 +ry=5 +rz=6 +s=7 +convention=position_vector +step "
--  "+inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");      
   end operation_compoundCRS_with_boundGeogCRS_to_geogCRS;

   procedure operation_compoundCRS_with_boundGeogCRS_and_boundVerticalCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto horizBoundCRS = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4807, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto compound = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{horizBoundCRS, createBoundVerticalCRS()});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  compound, GeographicCRS::EPSG_4979);
--  ASSERT_TRUE(op != nullptr);
--  // Not completely sure the order of horizontal and vertical operations
--  // makes sense
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=grad +xy_out=rad "
--  "+step +inv +proj=longlat +ellps=clrk80ign +pm=paris "
--  "+step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk80ign "
--  "+step +proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 +rz=6 +s=7 "
--  "+convention=position_vector "
--  "+step +inv +proj=cart +ellps=WGS84 "
--  "+step +proj=pop +v_3 "
--  "+step +proj=vgridshift +grids=us_nga_egm08_25.tif +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  
--  auto grids = op->gridsNeeded(DatabaseContext::create(), false);
--  EXPECT_EQ(grids.size(), 1U);
--  
--  auto opInverse = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4979, compound);
--  ASSERT_TRUE(opInverse != nullptr);
--  EXPECT_TRUE(opInverse->inverse()->isEquivalentTo(op.get()));      
   end operation_compoundCRS_with_boundGeogCRS_and_boundVerticalCRS_to_geogCRS;

   procedure operation_compoundCRS_with_boundProjCRS_and_boundVerticalCRS_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto horizBoundCRS = BoundCRS::createFromTOWGS84(
--  ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4807,
--  Conversion::createUTM(PropertyMap(), 31, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE)),
--  std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto compound = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{horizBoundCRS, createBoundVerticalCRS()});
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  compound, GeographicCRS::EPSG_4979);
--  ASSERT_TRUE(op != nullptr);
--  // Not completely sure the order of horizontal and vertical operations
--  // makes sense
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +inv +proj=utm +zone=31 +ellps=clrk80ign +pm=paris "
--  "+step +proj=push +v_3 "
--  "+step +proj=cart +ellps=clrk80ign "
--  "+step +proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 +rz=6 +s=7 "
--  "+convention=position_vector "
--  "+step +inv +proj=cart +ellps=WGS84 "
--  "+step +proj=pop +v_3 "
--  "+step +proj=vgridshift +grids=us_nga_egm08_25.tif +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  
--  auto opInverse = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4979, compound);
--  ASSERT_TRUE(opInverse != nullptr);
--  EXPECT_TRUE(opInverse->inverse()->isEquivalentTo(op.get()));      
   end operation_compoundCRS_with_boundProjCRS_and_boundVerticalCRS_to_geogCRS;

   procedure operation_geocent_to_compoundCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=geocent +datum=WGS84 +units=m +type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS67 +nadgrids=@foo.gsb +geoidgrids=@foo.gtx "
--  "+type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dst));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=cart +ellps=WGS84 +step +inv "
--  "+proj=vgridshift +grids=@foo.gtx +multiplier=1 +step +inv "
--  "+proj=hgridshift +grids=@foo.gsb +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg");      
   end operation_geocent_to_compoundCRS;

   procedure operation_geocent_to_compoundCRS_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  // WGS84 geocentric
--  auto src = authFactory->createCoordinateReferenceSystem("4978");
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS67 +nadgrids=@foo.gsb +geoidgrids=@foo.gtx "
--  "+type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  src, NN_CHECK_ASSERT(dst), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=cart +ellps=WGS84 +step +inv "
--  "+proj=vgridshift +grids=@foo.gtx +multiplier=1 +step +inv "
--  "+proj=hgridshift +grids=@foo.gsb +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg");      
   end operation_geocent_to_compoundCRS_context;

   procedure operation_compoundCRS_to_compoundCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto compound1 = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{createUTM31_WGS84(), createVerticalCRS()});
--  auto compound2 = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{createUTM32_WGS84(), createVerticalCRS()});
--  auto op = CoordinateOperationFactory::create()->createOperation(compound1,
--  compound2);
--  ASSERT_TRUE(op != nullptr);
--  auto opRef = CoordinateOperationFactory::create()->createOperation(
--  createUTM31_WGS84(), createUTM32_WGS84());
--  ASSERT_TRUE(opRef != nullptr);
--  EXPECT_TRUE(op->isEquivalentTo(opRef.get()));      
   end operation_compoundCRS_to_compoundCRS;

   procedure operation_compoundCRS_to_compoundCRS_with_vertical_transform (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto verticalCRS1 = createVerticalCRS();
--  
--  auto verticalCRS2 = VerticalCRS::create(
--  PropertyMap(), VerticalReferenceFrame::create(PropertyMap()),
--  VerticalCS::createGravityRelatedHeight(UnitOfMeasure::METRE));
--  
--  // Use of this type of transformation is a bit of non-sense here
--  // since it should normally be used with NGVD29 and NAVD88 for VerticalCRS,
--  // and NAD27/NAD83 as horizontal CRS...
--  auto vtransformation = Transformation::createVERTCON(
--  PropertyMap(), verticalCRS1, verticalCRS2, "bla.gtx",
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  auto compound1 = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{
--  ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createTransverseMercator(PropertyMap(), Angle(1),
--  Angle(2), Scale(3),
--  Length(4), Length(5)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE)),
--  BoundCRS::create(verticalCRS1, verticalCRS2, vtransformation)});
--  auto compound2 = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{createUTM32_WGS84(), verticalCRS2});
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(compound1,
--  compound2);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=tmerc +lat_0=1 +lon_0=2 +k=3 "
--  "+x_0=4 +y_0=5 +ellps=WGS84 +step "
--  "+proj=vgridshift +grids=bla.gtx +multiplier=0.001 +step "
--  "+proj=utm +zone=32 "
--  "+ellps=WGS84");
--  {
--  auto formatter = PROJStringFormatter::create();
--  formatter->setUseApproxTMerc(true);
--  EXPECT_EQ(
--  op->exportToPROJString(formatter.get()),
--  "+proj=pipeline +step +inv +proj=tmerc +approx +lat_0=1 +lon_0=2 "
--  "+k=3 +x_0=4 +y_0=5 +ellps=WGS84 +step "
--  "+proj=vgridshift +grids=bla.gtx +multiplier=0.001 +step "
--  "+proj=utm +approx +zone=32 "
--  "+ellps=WGS84");
--  }
--  {
--  auto formatter = PROJStringFormatter::create();
--  formatter->setUseApproxTMerc(true);
--  EXPECT_EQ(
--  op->inverse()->exportToPROJString(formatter.get()),
--  "+proj=pipeline +step +inv +proj=utm +approx +zone=32 +ellps=WGS84 "
--  "+step +inv +proj=vgridshift +grids=bla.gtx "
--  "+multiplier=0.001 +step +proj=tmerc +approx +lat_0=1 +lon_0=2 "
--  "+k=3 +x_0=4 +y_0=5 +ellps=WGS84");
--  }
--  
--  auto opInverse = CoordinateOperationFactory::create()->createOperation(
--  compound2, compound1);
--  ASSERT_TRUE(opInverse != nullptr);
--  {
--  auto formatter = PROJStringFormatter::create();
--  auto formatter2 = PROJStringFormatter::create();
--  EXPECT_EQ(opInverse->inverse()->exportToPROJString(formatter.get()),
--  op->exportToPROJString(formatter2.get()));
--  }      
   end operation_compoundCRS_to_compoundCRS_with_vertical_transform;

   procedure operation_compoundCRS_to_compoundCRS_with_bound_crs_in_horiz_and_vert (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS67 +nadgrids=@foo.gsb +geoidgrids=@foo.gtx "
--  "+type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +nadgrids=@bar.gsb +geoidgrids=@bar.gtx "
--  "+type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dst));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=@foo.gsb "
--  "+step +proj=vgridshift +grids=@foo.gtx +multiplier=1 "
--  "+step +inv +proj=vgridshift +grids=@bar.gtx +multiplier=1 "
--  "+step +inv +proj=hgridshift +grids=@bar.gsb "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");      
   end operation_compoundCRS_to_compoundCRS_with_bound_crs_in_horiz_and_vert;

   procedure operation_compoundCRS_to_compoundCRS_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NAD27 + NGVD29 height (ftUS)
--  authFactory->createCoordinateReferenceSystem("7406"),
--  // NAD83(NSRS2007) + NAVD88 height
--  authFactory->createCoordinateReferenceSystem("5500"), ctxt);
--  // 152 or 155 depending if the VERTCON grids are there
--  ASSERT_GE(list.size(), 152U);
--  EXPECT_FALSE(list[0]->hasBallparkTransformation());
--  EXPECT_EQ(list[0]->nameStr(), "NGVD29 height (ftUS) to NAVD88 height (3) + "
--  "NAD27 to WGS 84 (79) + Inverse of "
--  "NAD83(NSRS2007) to WGS 84 (1)");
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +z_in=us-ft +xy_out=rad +z_out=m "
--  "+step +proj=vgridshift +grids=us_noaa_vertcone.tif +multiplier=1 "
--  "+step +proj=hgridshift +grids=us_noaa_conus.tif +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg +step +proj=axisswap "
--  "+order=2,1");
--  {
--  // Test that we can round-trip this through WKT and still get the same
--  // PROJ string.
--  auto wkt = list[0]->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto co = nn_dynamic_pointer_cast<CoordinateOperation>(obj);
--  ASSERT_TRUE(co != nullptr);
--  EXPECT_EQ(
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  co->exportToPROJString(PROJStringFormatter::create().get()));
--  }
--  
--  bool foundApprox = false;
--  for (size_t i = 0; i < list.size(); i++) {
--  auto projString =
--  list[i]->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_TRUE(
--  projString.find("+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +z_in=us-ft "
--  "+xy_out=rad +z_out=m") == 0)
--  << list[i]->nameStr();
--  if (list[i]->nameStr().find("Transformation from NGVD29 height (ftUS) "
--  "to NAVD88 height (ballpark vertical "
--  "transformation)") == 0) {
--  EXPECT_TRUE(list[i]->hasBallparkTransformation());
--  EXPECT_EQ(list[i]->nameStr(),
--  "Transformation from NGVD29 height (ftUS) to NAVD88 "
--  "height (ballpark vertical transformation) + NAD27 to "
--  "WGS 84 (79) + Inverse of NAD83(NSRS2007) to WGS 84 (1)");
--  EXPECT_EQ(
--  projString,
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +z_in=us-ft +xy_out=rad "
--  "+z_out=m +step +proj=hgridshift +grids=us_noaa_conus.tif "
--  "+step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  foundApprox = true;
--  break;
--  }
--  }
--  EXPECT_TRUE(foundApprox);      
   end operation_compoundCRS_to_compoundCRS_context;

   procedure operation_vertCRS_to_vertCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto vertcrs_m_obj = PROJStringParser().createFromPROJString("+vunits=m");
--  auto vertcrs_m = nn_dynamic_pointer_cast<VerticalCRS>(vertcrs_m_obj);
--  ASSERT_TRUE(vertcrs_m != nullptr);
--  
--  auto vertcrs_ft_obj = PROJStringParser().createFromPROJString("+vunits=ft");
--  auto vertcrs_ft = nn_dynamic_pointer_cast<VerticalCRS>(vertcrs_ft_obj);
--  ASSERT_TRUE(vertcrs_ft != nullptr);
--  
--  auto vertcrs_us_ft_obj =
--  PROJStringParser().createFromPROJString("+vunits=us-ft");
--  auto vertcrs_us_ft =
--  nn_dynamic_pointer_cast<VerticalCRS>(vertcrs_us_ft_obj);
--  ASSERT_TRUE(vertcrs_us_ft != nullptr);
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(vertcrs_m), NN_CHECK_ASSERT(vertcrs_ft));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=unitconvert +z_in=m +z_out=ft");
--  }
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(vertcrs_m), NN_CHECK_ASSERT(vertcrs_ft));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->inverse()->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=unitconvert +z_in=ft +z_out=m");
--  }
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(vertcrs_ft), NN_CHECK_ASSERT(vertcrs_m));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=unitconvert +z_in=ft +z_out=m");
--  }
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(vertcrs_ft), NN_CHECK_ASSERT(vertcrs_us_ft));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=affine +s33=0.999998");
--  }
--  
--  auto vertCRSMetreUp =
--  nn_dynamic_pointer_cast<VerticalCRS>(WKTParser().createFromWKT(
--  "VERTCRS[\"my height\",VDATUM[\"my datum\"],CS[vertical,1],"
--  "AXIS[\"gravity-related height (H)\",up,"
--  "LENGTHUNIT[\"metre\",1]]]"));
--  ASSERT_TRUE(vertCRSMetreUp != nullptr);
--  
--  auto vertCRSMetreDown =
--  nn_dynamic_pointer_cast<VerticalCRS>(WKTParser().createFromWKT(
--  "VERTCRS[\"my depth\",VDATUM[\"my datum\"],CS[vertical,1],"
--  "AXIS[\"depth (D)\",down,LENGTHUNIT[\"metre\",1]]]"));
--  ASSERT_TRUE(vertCRSMetreDown != nullptr);
--  
--  auto vertCRSMetreDownFtUS =
--  nn_dynamic_pointer_cast<VerticalCRS>(WKTParser().createFromWKT(
--  "VERTCRS[\"my depth (ftUS)\",VDATUM[\"my datum\"],CS[vertical,1],"
--  "AXIS[\"depth (D)\",down,LENGTHUNIT[\"US survey "
--  "foot\",0.304800609601219]]]"));
--  ASSERT_TRUE(vertCRSMetreDownFtUS != nullptr);
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(vertCRSMetreUp), NN_CHECK_ASSERT(vertCRSMetreDown));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=1,2,-3");
--  }
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(vertCRSMetreUp),
--  NN_CHECK_ASSERT(vertCRSMetreDownFtUS));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=affine +s33=-3.28083333333333");
--  }      
   end operation_vertCRS_to_vertCRS;

   procedure operation_vertCRS_to_vertCRS_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NGVD29 height (m)
--  authFactory->createCoordinateReferenceSystem("7968"),
--  // NAVD88 height (1)
--  authFactory->createCoordinateReferenceSystem("5703"), ctxt);
--  ASSERT_EQ(list.size(), 3U);
--  EXPECT_EQ(list[0]->nameStr(), "NGVD29 height (m) to NAVD88 height (3)");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=vgridshift +grids=us_noaa_vertcone.tif +multiplier=1");      
   end operation_vertCRS_to_vertCRS_context;

   procedure operation_vertCRS_to_vertCRS_New_Zealand_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NZVD2016 height
--  authFactory->createCoordinateReferenceSystem("7839"),
--  // Auckland 1946 height
--  authFactory->createCoordinateReferenceSystem("5759"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=vgridshift +grids=nz_linz_auckht1946-nzvd2016.tif "
--  "+multiplier=1");      
   end operation_vertCRS_to_vertCRS_New_Zealand_context;

   procedure operation_compoundCRS_to_geogCRS_3D (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto compoundcrs_ft_obj = PROJStringParser().createFromPROJString(
--  "+proj=merc +vunits=ft +type=crs");
--  auto compoundcrs_ft = nn_dynamic_pointer_cast<CRS>(compoundcrs_ft_obj);
--  ASSERT_TRUE(compoundcrs_ft != nullptr);
--  
--  auto geogcrs_m_obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +vunits=m +type=crs");
--  auto geogcrs_m = nn_dynamic_pointer_cast<CRS>(geogcrs_m_obj);
--  ASSERT_TRUE(geogcrs_m != nullptr);
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(compoundcrs_ft), NN_CHECK_ASSERT(geogcrs_m));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_TRUE(op->hasBallparkTransformation());
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=merc +lon_0=0 +k=1 +x_0=0 "
--  "+y_0=0 +ellps=WGS84 +step +proj=unitconvert +xy_in=rad "
--  "+z_in=ft +xy_out=deg +z_out=m");
--  }
--  
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(geogcrs_m), NN_CHECK_ASSERT(compoundcrs_ft));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_TRUE(op->hasBallparkTransformation());
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=unitconvert +xy_in=deg +z_in=m "
--  "+xy_out=rad +z_out=ft +step +proj=merc +lon_0=0 +k=1 +x_0=0 "
--  "+y_0=0 +ellps=WGS84");
--  }      
   end operation_compoundCRS_to_geogCRS_3D;

   procedure operation_compoundCRS_to_geogCRS_3D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  // CompoundCRS to Geog3DCRS, with vertical unit change, but without
--  // ellipsoid height <--> vertical height correction
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem(
--  "7406"), // NAD27 + NGVD29 height (ftUS)
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84
--  ctxt);
--  ASSERT_GE(list.size(), 1U);
--  EXPECT_TRUE(list[0]->hasBallparkTransformation());
--  EXPECT_EQ(list[0]->nameStr(),
--  "NAD27 to WGS 84 (79) + Transformation from NGVD29 height "
--  "(ftUS) to WGS 84 (ballpark vertical transformation, without "
--  "ellipsoid height to vertical height correction)");
--  EXPECT_EQ(list[0]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step "
--  "+proj=hgridshift +grids=us_noaa_conus.tif "
--  "+step +proj=unitconvert "
--  "+xy_in=rad +z_in=us-ft +xy_out=deg +z_out=m +step "
--  "+proj=axisswap +order=2,1");
--  }
--  
--  // CompoundCRS to Geog3DCRS, with same vertical unit, and with
--  // direct ellipsoid height <--> vertical height correction and
--  // direct horizontal transform (no-op here)
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  authFactory->createCoordinateReferenceSystem(
--  "5500"), // NAD83(NSRS2007) + NAVD88 height
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84
--  ctxt);
--  ASSERT_GE(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of NAD83(NSRS2007) to NAVD88 height (1) + "
--  "NAD83(NSRS2007) to WGS 84 (1)");
--  EXPECT_EQ(list[0]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=vgridshift +grids=us_noaa_geoid09_conus.tif "
--  "+multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  }
--  
--  // NAD83 + NAVD88 height --> WGS 84
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  // NAD83 + NAVD88 height
--  auto srcObj = createFromUserInput(
--  "EPSG:4269+5703", authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto nnSrc = NN_NO_CHECK(src);
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  nnSrc,
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84
--  ctxt);
--  ASSERT_GE(list.size(), 2U);
--  
--  EXPECT_EQ(list[0]->nameStr(),
--  "NAD83 to WGS 84 (1) + "
--  "Inverse of NAD83(NSRS2007) to WGS 84 (1) + "
--  "Inverse of NAD83(NSRS2007) to NAVD88 height (1) + "
--  "NAD83(NSRS2007) to WGS 84 (1)");
--  EXPECT_EQ(list[0]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=vgridshift +grids=us_noaa_geoid09_conus.tif "
--  "+multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  }
--  
--  // Another variation, but post horizontal adjustment is in two steps
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  // NAD83(2011) + NAVD88 height
--  auto srcObj = createFromUserInput(
--  "EPSG:6318+5703", authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto nnSrc = NN_NO_CHECK(src);
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  nnSrc,
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84
--  ctxt);
--  ASSERT_GE(list.size(), 2U);
--  
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of NAD83(2011) to NAVD88 height (3) + "
--  "Inverse of NAD83 to NAD83(2011) (1) + "
--  "NAD83 to WGS 84 (1)");
--  EXPECT_EQ(list[0]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=vgridshift +grids=us_noaa_g2018u0.tif "
--  "+multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  
--  // Shows vertical step, and then horizontal step
--  EXPECT_EQ(list[1]->nameStr(),
--  "Inverse of NAD83(2011) to NAVD88 height (3) + "
--  "Inverse of NAD83 to NAD83(2011) (1) + "
--  "NAD83 to WGS 84 (18)");
--  EXPECT_EQ(list[1]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=pipeline "
--  "+step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=vgridshift +grids=us_noaa_g2018u0.tif "
--  "+multiplier=1 "
--  "+step +proj=hgridshift +grids=us_noaa_FL.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  }      
   end operation_compoundCRS_to_geogCRS_3D_context;

   procedure operation_compoundCRS_to_geogCRS_2D_promote_to_3D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  // NAD83 + NAVD88 height
--  auto srcObj = createFromUserInput("EPSG:4269+5703",
--  authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto nnSrc = NN_NO_CHECK(src);
--  auto dst = authFactory->createCoordinateReferenceSystem("4269"); // NAD83
--  
--  auto listCompoundToGeog2D =
--  CoordinateOperationFactory::create()->createOperations(nnSrc, dst,
--  ctxt);
--  // The checked value is not that important, but in case this changes,
--  // likely due to a EPSG upgrade, worth checking
--  EXPECT_EQ(listCompoundToGeog2D.size(), 141U);
--  
--  auto listGeog2DToCompound =
--  CoordinateOperationFactory::create()->createOperations(dst, nnSrc,
--  ctxt);
--  EXPECT_EQ(listGeog2DToCompound.size(), listCompoundToGeog2D.size());
--  
--  auto listCompoundToGeog3D =
--  CoordinateOperationFactory::create()->createOperations(
--  nnSrc,
--  dst->promoteTo3D(std::string(), authFactory->databaseContext()),
--  ctxt);
--  EXPECT_EQ(listCompoundToGeog3D.size(), listCompoundToGeog2D.size());      
   end operation_compoundCRS_to_geogCRS_2D_promote_to_3D_context;

   procedure operation_compoundCRS_of_projCRS_to_geogCRS_2D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  // SPCS83 California zone 1 (US Survey feet) + NAVD88 height (ftUS)
--  auto srcObj = createFromUserInput("EPSG:2225+6360",
--  authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto nnSrc = NN_NO_CHECK(src);
--  auto dst = authFactory->createCoordinateReferenceSystem("4269"); // NAD83
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  nnSrc, dst, ctxt);
--  // The checked value is not that important, but in case this changes,
--  // likely due to a EPSG upgrade, worth checking
--  // We want to make sure that the horizontal adjustments before and after
--  // the vertical transformation are the reverse of each other, and there are
--  // not mixes with different alternative operations (like California grid
--  // forward and Nevada grid reverse)
--  ASSERT_EQ(list.size(), 14U);
--  
--  // Check that unit conversion is OK
--  auto op_proj =
--  list[0]->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_EQ(op_proj,
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=us-ft +xy_out=m "
--  "+step +inv +proj=lcc +lat_0=39.3333333333333 +lon_0=-122 "
--  "+lat_1=41.6666666666667 +lat_2=40 +x_0=2000000.0001016 "
--  "+y_0=500000.0001016 +ellps=GRS80 "
--  "+step +proj=unitconvert +z_in=us-ft +z_out=m "
--  "+step +proj=vgridshift +grids=us_noaa_geoid09_conus.tif "
--  "+multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");      
   end operation_compoundCRS_of_projCRS_to_geogCRS_2D_context;

   procedure operation_compoundCRS_from_wkt_without_id_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto wkt =
--  "COMPOUNDCRS[\"NAD83(2011) + NAVD88 height\",\n"
--  "    GEOGCRS[\"NAD83(2011)\",\n"
--  "        DATUM[\"NAD83 (National Spatial Reference System 2011)\",\n"
--  "            ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        CS[ellipsoidal,2],\n"
--  "            AXIS[\"geodetic latitude (Lat)\",north,\n"
--  "                ORDER[1],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            AXIS[\"geodetic longitude (Lon)\",east,\n"
--  "                ORDER[2],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    VERTCRS[\"NAVD88 height\",\n"
--  "        VDATUM[\"North American Vertical Datum 1988\"],\n"
--  "        CS[vertical,1],\n"
--  "            AXIS[\"gravity-related height (H)\",up,\n"
--  "                LENGTHUNIT[\"metre\",1]]]]";
--  auto srcObj =
--  createFromUserInput(wkt, authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("6319"); // NAD83(2011)
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(src), dst, ctxt);
--  // NAD83(2011) + NAVD88 height
--  auto srcRefObj = createFromUserInput("EPSG:6318+5703",
--  authFactory->databaseContext(), false);
--  auto srcRef = nn_dynamic_pointer_cast<CRS>(srcRefObj);
--  ASSERT_TRUE(srcRef != nullptr);
--  ASSERT_TRUE(
--  src->isEquivalentTo(srcRef.get(), IComparable::Criterion::EQUIVALENT));
--  auto listRef = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(srcRef), dst, ctxt);
--  
--  EXPECT_EQ(list.size(), listRef.size());      
   end operation_compoundCRS_from_wkt_without_id_to_geogCRS;

   procedure operation_compoundCRS_to_geogCRS_with_vertical_unit_change (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  // NAD83(2011) + NAVD88 height (ftUS)
--  auto srcObj = createFromUserInput("EPSG:6318+6360",
--  authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto nnSrc = NN_NO_CHECK(src);
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("6319"); // NAD83(2011) 3D
--  
--  auto listCompoundToGeog =
--  CoordinateOperationFactory::create()->createOperations(nnSrc, dst,
--  ctxt);
--  ASSERT_TRUE(!listCompoundToGeog.empty());
--  
--  // NAD83(2011) + NAVD88 height
--  auto srcObjCompoundVMetre = createFromUserInput(
--  "EPSG:6318+5703", authFactory->databaseContext(), false);
--  auto srcCompoundVMetre = nn_dynamic_pointer_cast<CRS>(srcObjCompoundVMetre);
--  ASSERT_TRUE(srcCompoundVMetre != nullptr);
--  auto listCompoundMetreToGeog =
--  CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(srcCompoundVMetre), dst, ctxt);
--  
--  // Check that we get the same and similar results whether we start from
--  // regular NAVD88 height or its ftUs variant
--  ASSERT_EQ(listCompoundToGeog.size(), listCompoundMetreToGeog.size());
--  
--  EXPECT_EQ(listCompoundToGeog[0]->nameStr(),
--  "Inverse of NAVD88 height to NAVD88 height (ftUS) + " +
--  listCompoundMetreToGeog[0]->nameStr());
--  EXPECT_EQ(
--  listCompoundToGeog[0]->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  replaceAll(listCompoundMetreToGeog[0]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad",
--  "+step +proj=unitconvert +xy_in=deg +z_in=us-ft +xy_out=rad "
--  "+z_out=m"));
--  
--  // Check reverse path
--  auto listGeogToCompound =
--  CoordinateOperationFactory::create()->createOperations(dst, nnSrc,
--  ctxt);
--  EXPECT_EQ(listGeogToCompound.size(), listCompoundToGeog.size());      
   end operation_compoundCRS_to_geogCRS_with_vertical_unit_change;

   procedure operation_compoundCRS_to_geogCRS_with_height_depth_reversal (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  // NAD83(2011) + NAVD88 depth
--  auto srcObj = createFromUserInput("EPSG:6318+6357",
--  authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto nnSrc = NN_NO_CHECK(src);
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("6319"); // NAD83(2011) 3D
--  
--  auto listCompoundToGeog =
--  CoordinateOperationFactory::create()->createOperations(nnSrc, dst,
--  ctxt);
--  ASSERT_TRUE(!listCompoundToGeog.empty());
--  
--  // NAD83(2011) + NAVD88 height
--  auto srcObjCompoundVMetre = createFromUserInput(
--  "EPSG:6318+5703", authFactory->databaseContext(), false);
--  auto srcCompoundVMetre = nn_dynamic_pointer_cast<CRS>(srcObjCompoundVMetre);
--  ASSERT_TRUE(srcCompoundVMetre != nullptr);
--  auto listCompoundMetreToGeog =
--  CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(srcCompoundVMetre), dst, ctxt);
--  
--  // Check that we get the same and similar results whether we start from
--  // regular NAVD88 height or its depth variant
--  ASSERT_EQ(listCompoundToGeog.size(), listCompoundMetreToGeog.size());
--  
--  EXPECT_EQ(listCompoundToGeog[0]->nameStr(),
--  "Inverse of NAVD88 height to NAVD88 depth + " +
--  listCompoundMetreToGeog[0]->nameStr());
--  EXPECT_EQ(
--  listCompoundToGeog[0]->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  replaceAll(listCompoundMetreToGeog[0]->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad",
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=axisswap +order=1,2,-3"));
--  
--  // Check reverse path
--  auto listGeogToCompound =
--  CoordinateOperationFactory::create()->createOperations(dst, nnSrc,
--  ctxt);
--  EXPECT_EQ(listGeogToCompound.size(), listCompoundToGeog.size());      
   end operation_compoundCRS_to_geogCRS_with_height_depth_reversal;

   procedure operation_compoundCRS_of_vertCRS_with_geoid_model_to_geogCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  auto wkt =
--  "COMPOUNDCRS[\"NAD83 / Pennsylvania South + NAVD88 height\",\n"
--  "    PROJCRS[\"NAD83 / Pennsylvania South\",\n"
--  "        BASEGEOGCRS[\"NAD83\",\n"
--  "            DATUM[\"North American Datum 1983\",\n"
--  "                ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "        CONVERSION[\"SPCS83 Pennsylvania South zone (meters)\",\n"
--  "            METHOD[\"Lambert Conic Conformal (2SP)\",\n"
--  "                ID[\"EPSG\",9802]],\n"
--  "            PARAMETER[\"Latitude of false origin\",39.3333333333333,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8821]],\n"
--  "            PARAMETER[\"Longitude of false origin\",-77.75,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8822]],\n"
--  "            PARAMETER[\"Latitude of 1st standard "
--  "parallel\",40.9666666666667,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8823]],\n"
--  "            PARAMETER[\"Latitude of 2nd standard "
--  "parallel\",39.9333333333333,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8824]],\n"
--  "            PARAMETER[\"Easting at false origin\",600000,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8826]],\n"
--  "            PARAMETER[\"Northing at false origin\",0,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8827]]],\n"
--  "        CS[Cartesian,2],\n"
--  "            AXIS[\"easting (X)\",east,\n"
--  "                ORDER[1],\n"
--  "                LENGTHUNIT[\"metre\",1]],\n"
--  "            AXIS[\"northing (Y)\",north,\n"
--  "                ORDER[2],\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "    VERTCRS[\"NAVD88 height\",\n"
--  "        VDATUM[\"North American Vertical Datum 1988\"],\n"
--  "        CS[vertical,1],\n"
--  "            AXIS[\"gravity-related height (H)\",up,\n"
--  "                LENGTHUNIT[\"metre\",1]],\n"
--  "        GEOIDMODEL[\"GEOID12B\"]]]";
--  auto srcObj =
--  createFromUserInput(wkt, authFactory->databaseContext(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(srcObj);
--  ASSERT_TRUE(src != nullptr);
--  auto dst = authFactory->createCoordinateReferenceSystem("4269"); // NAD83
--  
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(src), dst, ctxt);
--  ASSERT_TRUE(!list.empty());
--  EXPECT_EQ(list[0]->nameStr(),
--  "Inverse of SPCS83 Pennsylvania South zone (meters) + "
--  "Ballpark geographic offset from NAD83 to NAD83(2011) + "
--  "Inverse of NAD83(2011) to NAVD88 height (1) + "
--  "Ballpark geographic offset from NAD83(2011) to NAD83");
--  auto op_proj =
--  list[0]->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_EQ(
--  op_proj,
--  "+proj=pipeline "
--  "+step +inv +proj=lcc +lat_0=39.3333333333333 +lon_0=-77.75 "
--  "+lat_1=40.9666666666667 +lat_2=39.9333333333333 +x_0=600000 "
--  "+y_0=0 +ellps=GRS80 "
--  "+step +proj=vgridshift +grids=us_noaa_g2012bu0.tif +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");      
   end operation_compoundCRS_of_vertCRS_with_geoid_model_to_geogCRS;

   procedure operation_compoundCRS_from_WKT2_to_geogCRS_3D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto src = authFactory->createCoordinateReferenceSystem(
--  "7415"); // Amersfoort / RD New + NAP height
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("4937"); // ETRS89 3D
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_GE(list.size(), 1U);
--  auto wkt2 = src->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  auto obj = WKTParser().createFromWKT(wkt2);
--  auto src_from_wkt2 = nn_dynamic_pointer_cast<CRS>(obj);
--  ASSERT_TRUE(src_from_wkt2 != nullptr);
--  auto list2 = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(src_from_wkt2), dst, ctxt);
--  ASSERT_GE(list.size(), list2.size());
--  for (size_t i = 0; i < list.size(); i++) {
--  const auto &op = list[i];
--  const auto &op2 = list2[i];
--  EXPECT_TRUE(
--  op->isEquivalentTo(op2.get(), IComparable::Criterion::EQUIVALENT));
--  }      
   end operation_compoundCRS_from_WKT2_to_geogCRS_3D_context;

   procedure operation_compoundCRS_from_WKT2_no_id_to_geogCRS_3D_context (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  auto src = authFactory->createCoordinateReferenceSystem(
--  "7415"); // Amersfoort / RD New + NAP height
--  auto dst =
--  authFactory->createCoordinateReferenceSystem("4937"); // ETRS89 3D
--  auto list =
--  CoordinateOperationFactory::create()->createOperations(src, dst, ctxt);
--  ASSERT_GE(list.size(), 1U);
--  
--  {
--  auto op_proj =
--  list[0]->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_EQ(
--  op_proj,
--  "+proj=pipeline +step +inv +proj=sterea +lat_0=52.1561605555556 "
--  "+lon_0=5.38763888888889 +k=0.9999079 +x_0=155000 +y_0=463000 "
--  "+ellps=bessel "
--  "+step +proj=hgridshift +grids=nl_nsgi_rdtrans2018.tif "
--  "+step +proj=vgridshift +grids=nl_nsgi_nlgeo2018.tif +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1");
--  }
--  
--  auto wkt2 =
--  "COMPOUNDCRS[\"unknown\",\n"
--  "  PROJCRS[\"unknown\",\n"
--  "    BASEGEOGCRS[\"Amersfoort\",\n"
--  "            DATUM[\"Amersfoort\",\n"
--  "                ELLIPSOID[\"Bessel "
--  "1841\",6377397.155,299.1528128]]],\n"
--  "    CONVERSION[\"unknown\",\n"
--  "        METHOD[\"Oblique Stereographic\"],\n"
--  "        PARAMETER[\"Latitude of natural origin\",52.1561605555556],\n"
--  "        PARAMETER[\"Longitude of natural origin\",5.38763888888889],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",0.9999079],\n"
--  "        PARAMETER[\"False easting\",155000],\n"
--  "        PARAMETER[\"False northing\",463000]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "    LENGTHUNIT[\"metre\",1]],\n"
--  "  VERTCRS[\"NAP height\",\n"
--  "    VDATUM[\"Normaal Amsterdams Peil\"],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up,\n"
--  "            LENGTHUNIT[\"metre\",1]]]]";
--  auto obj = WKTParser().createFromWKT(wkt2);
--  auto src_from_wkt2 = nn_dynamic_pointer_cast<CRS>(obj);
--  ASSERT_TRUE(src_from_wkt2 != nullptr);
--  auto list2 = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(src_from_wkt2), dst, ctxt);
--  ASSERT_GE(list.size(), list2.size() - 1);
--  for (size_t i = 0; i < list.size(); i++) {
--  const auto &op = list[i];
--  const auto &op2 = list2[i];
--  auto op_proj =
--  op->exportToPROJString(PROJStringFormatter::create().get());
--  auto op2_proj =
--  op2->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_EQ(op_proj, op2_proj) << "op=" << op->nameStr()
--  << " op2=" << op2->nameStr();
--  }      
   end operation_compoundCRS_from_WKT2_no_id_to_geogCRS_3D_context;

   procedure operation_compoundCRS_with_non_meter_horiz_and_vertical_to_geog (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=31 +datum=WGS84 +units=us-ft +vunits=us-ft +type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  NN_NO_CHECK(src), authFactory->createCoordinateReferenceSystem("4326"),
--  ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  // Check that vertical unit conversion is done just once
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=us-ft +xy_out=m "
--  "+step +inv +proj=utm +zone=31 +ellps=WGS84 "
--  "+step +proj=unitconvert +xy_in=rad +z_in=us-ft "
--  "+xy_out=deg +z_out=m "
--  "+step +proj=axisswap +order=2,1");      
   end operation_compoundCRS_with_non_meter_horiz_and_vertical_to_geog;

   procedure operation_boundCRS_to_compoundCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS67 +nadgrids=@foo.gsb +type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +nadgrids=@bar.gsb +geoidgrids=@bar.gtx "
--  "+type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dst));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=@foo.gsb "
--  "+step +inv +proj=vgridshift +grids=@bar.gtx +multiplier=1 "
--  "+step +inv +proj=hgridshift +grids=@bar.gsb "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");
--  
--  auto opInverse = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(dst), NN_CHECK_ASSERT(src));
--  ASSERT_TRUE(opInverse != nullptr);
--  EXPECT_TRUE(opInverse->inverse()->_isEquivalentTo(op.get()));      
   end operation_boundCRS_to_compoundCRS;

   procedure operation_IGNF_LAMB1_TO_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), std::string());
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setGridAvailabilityUse(
--  CoordinateOperationContext::GridAvailabilityUse::
--  IGNORE_GRID_AVAILABILITY);
--  ctxt->setAllowUseIntermediateCRS(
--  CoordinateOperationContext::IntermediateCRSUse::ALWAYS);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  AuthorityFactory::create(DatabaseContext::create(), "IGNF")
--  ->createCoordinateReferenceSystem("LAMB1"),
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  ->createCoordinateReferenceSystem("4326"),
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  
--  EXPECT_FALSE(list[0]->hasBallparkTransformation());
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=lcc +lat_1=49.5 +lat_0=49.5 "
--  "+lon_0=0 +k_0=0.99987734 +x_0=600000 +y_0=200000 "
--  "+ellps=clrk80ign +pm=paris +step +proj=hgridshift "
--  "+grids=fr_ign_ntf_r93.tif +step +proj=unitconvert +xy_in=rad "
--  "+xy_out=deg +step +proj=axisswap +order=2,1");
--  
--  EXPECT_FALSE(list[1]->hasBallparkTransformation());
--  EXPECT_EQ(list[1]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=lcc +lat_1=49.5 +lat_0=49.5 "
--  "+lon_0=0 +k_0=0.99987734 +x_0=600000 +y_0=200000 "
--  "+ellps=clrk80ign +pm=paris +step +proj=push +v_3 +step "
--  "+proj=cart +ellps=clrk80ign +step +proj=helmert +x=-168 +y=-60 "
--  "+z=320 +step +inv +proj=cart +ellps=WGS84 +step +proj=pop +v_3 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg +step "
--  "+proj=axisswap +order=2,1");
--  
--  auto list2 = CoordinateOperationFactory::create()->createOperations(
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  // NTF (Paris) / Lambert Nord France equivalent to IGNF:LAMB1
--  ->createCoordinateReferenceSystem("27561"),
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG")
--  ->createCoordinateReferenceSystem("4326"),
--  ctxt);
--  ASSERT_GE(list2.size(), 3U);
--  
--  EXPECT_EQ(replaceAll(list2[0]->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "0.999877341", "0.99987734"),
--  list[0]->exportToPROJString(PROJStringFormatter::create().get()));
--  
--  // The second entry in list2 (list2[1]) uses the
--  // weird +pm=2.33720833333333 from "NTF (Paris) to NTF (2)"
--  // so skip to the 3th method
--  EXPECT_EQ(replaceAll(list2[2]->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "0.999877341", "0.99987734"),
--  list[1]->exportToPROJString(PROJStringFormatter::create().get()));      
   end operation_IGNF_LAMB1_TO_EPSG_4326;

   procedure operation_NAD83_to_projeted_CRS_based_on_NAD83_2011 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ctxt = CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setSpatialCriterion(
--  CoordinateOperationContext::SpatialCriterion::PARTIAL_INTERSECTION);
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  // NAD83
--  authFactory->createCoordinateReferenceSystem("4269"),
--  // NAD83(2011) / California Albers
--  authFactory->createCoordinateReferenceSystem("6414"), ctxt);
--  ASSERT_EQ(list.size(), 1U);
--  EXPECT_EQ(list[0]->nameStr(), "Ballpark geographic offset from NAD83 to "
--  "NAD83(2011) + California Albers");
--  EXPECT_EQ(list[0]->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=aea +lat_0=0 +lon_0=-120 +lat_1=34 "
--  "+lat_2=40.5 +x_0=0 +y_0=-4000000 +ellps=GRS80");      
   end operation_NAD83_to_projeted_CRS_based_on_NAD83_2011;

   procedure operation_isPROJInstantiable (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  {
--  auto transformation = Transformation::createGeocentricTranslations(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326,
--  1.0, 2.0, 3.0, {});
--  EXPECT_TRUE(transformation->isPROJInstantiable(
--  DatabaseContext::create(), false));
--  }
--  
--  // Missing grid
--  {
--  auto transformation = Transformation::createNTv2(
--  PropertyMap(), GeographicCRS::EPSG_4807, GeographicCRS::EPSG_4326,
--  "foo.gsb", std::vector<PositionalAccuracyNNPtr>());
--  EXPECT_FALSE(transformation->isPROJInstantiable(
--  DatabaseContext::create(), false));
--  }
--  
--  // Unsupported method
--  {
--  auto transformation = Transformation::create(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326,
--  nullptr, OperationMethod::create(
--  PropertyMap(), std::vector<OperationParameterNNPtr>{}),
--  std::vector<GeneralParameterValueNNPtr>{},
--  std::vector<PositionalAccuracyNNPtr>{});
--  EXPECT_FALSE(transformation->isPROJInstantiable(
--  DatabaseContext::create(), false));
--  }      
   end operation_isPROJInstantiable;

   procedure operation_createOperation_on_crs_with_canonical_bound_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto boundCRS = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4267, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto crs = boundCRS->baseCRSWithCanonicalBoundCRS();
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  crs, GeographicCRS::EPSG_4326);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_TRUE(op->isEquivalentTo(boundCRS->transformation().get()));
--  {
--  auto wkt1 = op->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019)
--  .get());
--  auto wkt2 = boundCRS->transformation()->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019)
--  .get());
--  EXPECT_EQ(wkt1, wkt2);
--  }
--  }
--  {
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, crs);
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_TRUE(
--  op->isEquivalentTo(boundCRS->transformation()->inverse().get()));
--  {
--  auto wkt1 = op->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019)
--  .get());
--  auto wkt2 = boundCRS->transformation()->inverse()->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019)
--  .get());
--  EXPECT_EQ(wkt1, wkt2);
--  }
--  }      
   end operation_createOperation_on_crs_with_canonical_bound_crs;

   procedure operation_createOperation_fallback_to_proj4_strings (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objDest = PROJStringParser().createFromPROJString(
--  "+proj=longlat +geoc +datum=WGS84 +type=crs");
--  auto dest = nn_dynamic_pointer_cast<GeographicCRS>(objDest);
--  ASSERT_TRUE(dest != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_CHECK_ASSERT(dest));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=longlat +geoc +datum=WGS84 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");      
   end operation_createOperation_fallback_to_proj4_strings;

   procedure operation_createOperation_on_crs_with_bound_crs_and_wktext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=55 +south +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 "
--  "+units=m +no_defs +nadgrids=@GDA94_GDA2020_conformal.gsb +ignored1 "
--  "+ignored2=val +wktext +type=crs");
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  
--  auto objDst = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=55 +south +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 "
--  "+units=m +no_defs +type=crs");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dst));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=55 +south "
--  "+ellps=GRS80 +step +proj=hgridshift "
--  "+grids=@GDA94_GDA2020_conformal.gsb +step +proj=utm +zone=55 "
--  "+south +ellps=GRS80");      
   end operation_createOperation_on_crs_with_bound_crs_and_wktext;

   procedure operation_createOperation_ossfuzz_18587 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto objSrc =
--  createFromUserInput("EPSG:4326", DatabaseContext::create(), false);
--  auto src = nn_dynamic_pointer_cast<CRS>(objSrc);
--  ASSERT_TRUE(src != nullptr);
--  
--  // Extremely weird string ! We should likely reject it
--  auto objDst = PROJStringParser().createFromPROJString(
--  "type=crs proj=pipeline step proj=merc vunits=m nadgrids=@x "
--  "proj=\"\nproj=pipeline step\n\"");
--  auto dst = nn_dynamic_pointer_cast<CRS>(objDst);
--  ASSERT_TRUE(dst != nullptr);
--  
--  // Just check that we don't go into an infinite recursion
--  try {
--  CoordinateOperationFactory::create()->createOperation(
--  NN_CHECK_ASSERT(src), NN_CHECK_ASSERT(dst));
--  } catch (const std::exception &) {
--  }      
   end operation_createOperation_ossfuzz_18587;

   procedure operation_mercator_variant_A_to_variant_B (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createMercatorVariantA(PropertyMap(), Angle(0), Angle(1),
--  Scale(0.9), Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto conv = projCRS->derivingConversion();
--  auto sameConv =
--  conv->convertToOtherMethod(EPSG_CODE_METHOD_MERCATOR_VARIANT_A);
--  ASSERT_TRUE(sameConv);
--  EXPECT_TRUE(sameConv->isEquivalentTo(conv.get()));
--  
--  auto targetConv =
--  conv->convertToOtherMethod(EPSG_CODE_METHOD_MERCATOR_VARIANT_B);
--  ASSERT_TRUE(targetConv);
--  
--  auto lat_1 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_1ST_STD_PARALLEL, UnitOfMeasure::DEGREE);
--  EXPECT_EQ(lat_1, 25.917499691810534) << lat_1;
--  
--  EXPECT_EQ(targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE),
--  1);
--  
--  EXPECT_EQ(targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_EASTING, UnitOfMeasure::METRE),
--  3);
--  
--  EXPECT_EQ(targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_NORTHING, UnitOfMeasure::METRE),
--  4);
--  
--  EXPECT_FALSE(
--  conv->isEquivalentTo(targetConv.get(), IComparable::Criterion::STRICT));
--  EXPECT_TRUE(conv->isEquivalentTo(targetConv.get(),
--  IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(targetConv->isEquivalentTo(conv.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end operation_mercator_variant_A_to_variant_B;

   procedure operation_mercator_variant_A_to_variant_B_scale_1 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createMercatorVariantA(PropertyMap(), Angle(0), Angle(1),
--  Scale(1.0), Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_MERCATOR_VARIANT_B);
--  ASSERT_TRUE(targetConv);
--  
--  auto lat_1 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_1ST_STD_PARALLEL, UnitOfMeasure::DEGREE);
--  EXPECT_EQ(lat_1, 0.0) << lat_1;      
   end operation_mercator_variant_A_to_variant_B_scale_1;

   procedure operation_mercator_variant_A_to_variant_B_no_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto targetConv =
--  Conversion::createMercatorVariantA(PropertyMap(), Angle(0), Angle(1),
--  Scale(1.0), Length(3), Length(4))
--  ->convertToOtherMethod(EPSG_CODE_METHOD_MERCATOR_VARIANT_B);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_mercator_variant_A_to_variant_B_no_crs;

   procedure operation_mercator_variant_A_to_variant_B_invalid_scale (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createMercatorVariantA(PropertyMap(), Angle(0), Angle(1),
--  Scale(0.0), Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_MERCATOR_VARIANT_B);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_mercator_variant_A_to_variant_B_invalid_scale;

   procedure operation_mercator_variant_A_to_variant_B_invalid_eccentricity (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), geographicCRSInvalidEccentricity(),
--  Conversion::createMercatorVariantA(PropertyMap(), Angle(0), Angle(1),
--  Scale(1.0), Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_MERCATOR_VARIANT_B);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_mercator_variant_A_to_variant_B_invalid_eccentricity;

   procedure operation_mercator_variant_B_to_variant_A (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createMercatorVariantB(PropertyMap(),
--  Angle(25.917499691810534), Angle(1),
--  Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_MERCATOR_VARIANT_A);
--  ASSERT_TRUE(targetConv);
--  
--  EXPECT_EQ(targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE),
--  0);
--  
--  EXPECT_EQ(targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE),
--  1);
--  
--  auto k_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_SCALE_FACTOR_AT_NATURAL_ORIGIN,
--  UnitOfMeasure::SCALE_UNITY);
--  EXPECT_EQ(k_0, 0.9) << k_0;
--  
--  EXPECT_EQ(targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_EASTING, UnitOfMeasure::METRE),
--  3);
--  
--  EXPECT_EQ(targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_NORTHING, UnitOfMeasure::METRE),
--  4);      
   end operation_mercator_variant_B_to_variant_A;

   procedure operation_mercator_variant_B_to_variant_A_invalid_std1 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createMercatorVariantB(PropertyMap(), Angle(100), Angle(1),
--  Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_MERCATOR_VARIANT_A);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_mercator_variant_B_to_variant_A_invalid_std1;

   procedure operation_mercator_variant_B_to_variant_A_invalid_eccentricity (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), geographicCRSInvalidEccentricity(),
--  Conversion::createMercatorVariantB(PropertyMap(), Angle(0), Angle(1),
--  Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_MERCATOR_VARIANT_A);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_mercator_variant_B_to_variant_A_invalid_eccentricity;

   procedure operation_lcc2sp_to_lcc1sp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // equivalent to EPSG:2154
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4269, // something using GRS80
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.5), Angle(3), Angle(49), Angle(44),
--  Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto conv = projCRS->derivingConversion();
--  auto targetConv = conv->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  ASSERT_TRUE(targetConv);
--  
--  {
--  auto lat_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_0, 46.519430223986866, 1e-12) << lat_0;
--  
--  auto lon_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lon_0, 3.0, 1e-15) << lon_0;
--  
--  auto k_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_SCALE_FACTOR_AT_NATURAL_ORIGIN,
--  UnitOfMeasure::SCALE_UNITY);
--  EXPECT_NEAR(k_0, 0.9990510286374692, 1e-15) << k_0;
--  
--  auto x_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_EASTING, UnitOfMeasure::METRE);
--  EXPECT_NEAR(x_0, 700000, 1e-15) << x_0;
--  
--  auto y_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_NORTHING, UnitOfMeasure::METRE);
--  EXPECT_NEAR(y_0, 6602157.8388103368, 1e-7) << y_0;
--  }
--  
--  auto _2sp_from_1sp = targetConv->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_2SP);
--  ASSERT_TRUE(_2sp_from_1sp);
--  
--  {
--  auto lat_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_FALSE_ORIGIN, UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_0, 46.5, 1e-15) << lat_0;
--  
--  auto lon_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_FALSE_ORIGIN, UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lon_0, 3, 1e-15) << lon_0;
--  
--  auto lat_1 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_1ST_STD_PARALLEL,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_1, 49, 1e-15) << lat_1;
--  
--  auto lat_2 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_2ND_STD_PARALLEL,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_2, 44, 1e-15) << lat_2;
--  
--  auto x_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_EASTING_FALSE_ORIGIN, UnitOfMeasure::METRE);
--  EXPECT_NEAR(x_0, 700000, 1e-15) << x_0;
--  
--  auto y_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_NORTHING_FALSE_ORIGIN, UnitOfMeasure::METRE);
--  EXPECT_NEAR(y_0, 6600000, 1e-15) << y_0;
--  }
--  
--  EXPECT_FALSE(
--  conv->isEquivalentTo(targetConv.get(), IComparable::Criterion::STRICT));
--  EXPECT_TRUE(conv->isEquivalentTo(targetConv.get(),
--  IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(targetConv->isEquivalentTo(conv.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end operation_lcc2sp_to_lcc1sp;

   procedure operation_lcc2sp_to_lcc1sp_phi0_eq_phi1_eq_phi2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4269, // something using GRS80
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.5), Angle(3), Angle(46.5), Angle(46.5),
--  Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto conv = projCRS->derivingConversion();
--  auto targetConv = conv->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  ASSERT_TRUE(targetConv);
--  
--  {
--  auto lat_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_0, 46.5, 1e-15) << lat_0;
--  
--  auto lon_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lon_0, 3.0, 1e-15) << lon_0;
--  
--  auto k_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_SCALE_FACTOR_AT_NATURAL_ORIGIN,
--  UnitOfMeasure::SCALE_UNITY);
--  EXPECT_NEAR(k_0, 1.0, 1e-15) << k_0;
--  
--  auto x_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_EASTING, UnitOfMeasure::METRE);
--  EXPECT_NEAR(x_0, 700000, 1e-15) << x_0;
--  
--  auto y_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_NORTHING, UnitOfMeasure::METRE);
--  EXPECT_NEAR(y_0, 6600000, 1e-15) << y_0;
--  }
--  
--  auto _2sp_from_1sp = targetConv->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_2SP);
--  ASSERT_TRUE(_2sp_from_1sp);
--  
--  {
--  auto lat_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_FALSE_ORIGIN, UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_0, 46.5, 1e-15) << lat_0;
--  
--  auto lon_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_FALSE_ORIGIN, UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lon_0, 3, 1e-15) << lon_0;
--  
--  auto lat_1 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_1ST_STD_PARALLEL,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_1, 46.5, 1e-15) << lat_1;
--  
--  auto lat_2 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_2ND_STD_PARALLEL,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_2, 46.5, 1e-15) << lat_2;
--  
--  auto x_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_EASTING_FALSE_ORIGIN, UnitOfMeasure::METRE);
--  EXPECT_NEAR(x_0, 700000, 1e-15) << x_0;
--  
--  auto y_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_NORTHING_FALSE_ORIGIN, UnitOfMeasure::METRE);
--  EXPECT_NEAR(y_0, 6600000, 1e-15) << y_0;
--  }
--  
--  EXPECT_TRUE(conv->isEquivalentTo(targetConv.get(),
--  IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(targetConv->isEquivalentTo(conv.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end operation_lcc2sp_to_lcc1sp_phi0_eq_phi1_eq_phi2;

   procedure operation_lcc2sp_to_lcc1sp_phi0_diff_phi1_and_phi1_eq_phi2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4269, // something using GRS80
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.123), Angle(3), Angle(46.4567),
--  Angle(46.4567), Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto conv = projCRS->derivingConversion();
--  auto targetConv = conv->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  ASSERT_TRUE(targetConv);
--  
--  {
--  auto lat_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_0, 46.4567, 1e-14) << lat_0;
--  
--  auto lon_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_OF_NATURAL_ORIGIN,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lon_0, 3.0, 1e-15) << lon_0;
--  
--  auto k_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_SCALE_FACTOR_AT_NATURAL_ORIGIN,
--  UnitOfMeasure::SCALE_UNITY);
--  EXPECT_NEAR(k_0, 1.0, 1e-15) << k_0;
--  
--  auto x_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_EASTING, UnitOfMeasure::METRE);
--  EXPECT_NEAR(x_0, 700000, 1e-15) << x_0;
--  
--  auto y_0 = targetConv->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_FALSE_NORTHING, UnitOfMeasure::METRE);
--  EXPECT_NEAR(y_0, 6637093.292952879, 1e-8) << y_0;
--  }
--  
--  auto _2sp_from_1sp = targetConv->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_2SP);
--  ASSERT_TRUE(_2sp_from_1sp);
--  
--  {
--  auto lat_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_FALSE_ORIGIN, UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_0, 46.4567, 1e-14) << lat_0;
--  
--  auto lon_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LONGITUDE_FALSE_ORIGIN, UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lon_0, 3, 1e-15) << lon_0;
--  
--  auto lat_1 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_1ST_STD_PARALLEL,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_1, 46.4567, 1e-14) << lat_1;
--  
--  auto lat_2 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_LATITUDE_2ND_STD_PARALLEL,
--  UnitOfMeasure::DEGREE);
--  EXPECT_NEAR(lat_2, 46.4567, 1e-14) << lat_2;
--  
--  auto x_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_EASTING_FALSE_ORIGIN, UnitOfMeasure::METRE);
--  EXPECT_NEAR(x_0, 700000, 1e-15) << x_0;
--  
--  auto y_0 = _2sp_from_1sp->parameterValueNumeric(
--  EPSG_CODE_PARAMETER_NORTHING_FALSE_ORIGIN, UnitOfMeasure::METRE);
--  EXPECT_NEAR(y_0, 6637093.292952879, 1e-8) << y_0;
--  }
--  
--  EXPECT_TRUE(conv->isEquivalentTo(targetConv.get(),
--  IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(targetConv->isEquivalentTo(conv.get(),
--  IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_TRUE(_2sp_from_1sp->isEquivalentTo(
--  targetConv.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(targetConv->isEquivalentTo(_2sp_from_1sp.get(),
--  IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_TRUE(conv->isEquivalentTo(_2sp_from_1sp.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end operation_lcc2sp_to_lcc1sp_phi0_diff_phi1_and_phi1_eq_phi2;

   procedure operation_lcc1sp_to_lcc2sp_invalid_eccentricity (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), geographicCRSInvalidEccentricity(),
--  Conversion::createLambertConicConformal_1SP(PropertyMap(), Angle(40),
--  Angle(1), Scale(0.99),
--  Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_2SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc1sp_to_lcc2sp_invalid_eccentricity;

   procedure operation_lcc1sp_to_lcc2sp_invalid_scale (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_1SP(
--  PropertyMap(), Angle(40), Angle(1), Scale(0), Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_2SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc1sp_to_lcc2sp_invalid_scale;

   procedure operation_lcc1sp_to_lcc2sp_invalid_lat0 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_1SP(PropertyMap(), Angle(100),
--  Angle(1), Scale(0.99),
--  Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_2SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc1sp_to_lcc2sp_invalid_lat0;

   procedure operation_lcc1sp_to_lcc2sp_null_lat0 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_1SP(PropertyMap(), Angle(0),
--  Angle(1), Scale(0.99),
--  Length(3), Length(4)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_2SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc1sp_to_lcc2sp_null_lat0;

   procedure operation_lcc2sp_to_lcc1sp_invalid_lat0 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(100), Angle(3), Angle(44), Angle(49),
--  Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc2sp_to_lcc1sp_invalid_lat0;

   procedure operation_lcc2sp_to_lcc1sp_invalid_lat1 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.5), Angle(3), Angle(100), Angle(49),
--  Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc2sp_to_lcc1sp_invalid_lat1;

   procedure operation_lcc2sp_to_lcc1sp_invalid_lat2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.5), Angle(3), Angle(44), Angle(100),
--  Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc2sp_to_lcc1sp_invalid_lat2;

   procedure operation_lcc2sp_to_lcc1sp_invalid_lat1_opposite_lat2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.5), Angle(3), Angle(-49), Angle(49),
--  Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc2sp_to_lcc1sp_invalid_lat1_opposite_lat2;

   procedure operation_lcc2sp_to_lcc1sp_invalid_lat1_and_lat2_close_to_zero (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), GeographicCRS::EPSG_4326,
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.5), Angle(3), Angle(.0000000000000001),
--  Angle(.0000000000000002), Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc2sp_to_lcc1sp_invalid_lat1_and_lat2_close_to_zero;

   procedure operation_lcc2sp_to_lcc1sp_invalid_eccentricity (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projCRS = ProjectedCRS::create(
--  PropertyMap(), geographicCRSInvalidEccentricity(),
--  Conversion::createLambertConicConformal_2SP(
--  PropertyMap(), Angle(46.5), Angle(3), Angle(44), Angle(49),
--  Length(700000), Length(6600000)),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  auto targetConv = projCRS->derivingConversion()->convertToOtherMethod(
--  EPSG_CODE_METHOD_LAMBERT_CONIC_CONFORMAL_1SP);
--  EXPECT_FALSE(targetConv != nullptr);      
   end operation_lcc2sp_to_lcc1sp_invalid_eccentricity;

   procedure operation_three_param_equivalent_to_seven_param (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto three_param = Transformation::createGeocentricTranslations(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, {});
--  
--  auto seven_param_pv = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 0.0, 0.0, 0.0, 0.0, {});
--  
--  auto seven_param_cf = Transformation::createCoordinateFrameRotation(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 0.0, 0.0, 0.0, 0.0, {});
--  
--  auto seven_param_non_eq = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 1.0, 0.0, 0.0, 0.0, {});
--  
--  EXPECT_TRUE(three_param->isEquivalentTo(
--  seven_param_pv.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_TRUE(three_param->isEquivalentTo(
--  seven_param_cf.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_TRUE(seven_param_cf->isEquivalentTo(
--  three_param.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_TRUE(seven_param_pv->isEquivalentTo(
--  three_param.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_FALSE(three_param->isEquivalentTo(
--  seven_param_non_eq.get(), IComparable::Criterion::EQUIVALENT));      
   end operation_three_param_equivalent_to_seven_param;

   procedure operation_position_vector_equivalent_coordinate_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto pv = Transformation::createPositionVector(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, {});
--  
--  auto cf = Transformation::createCoordinateFrameRotation(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, -4 + 1e-11, -5.0, -6.0, 7.0, {});
--  
--  auto cf_non_eq = Transformation::createCoordinateFrameRotation(
--  PropertyMap(), GeographicCRS::EPSG_4269, GeographicCRS::EPSG_4326, 1.0,
--  2.0, 3.0, 4.0, 5.0, 6.0, 7.0, {});
--  
--  EXPECT_TRUE(
--  pv->isEquivalentTo(cf.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_TRUE(
--  cf->isEquivalentTo(pv.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_FALSE(pv->isEquivalentTo(cf_non_eq.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end operation_position_vector_equivalent_coordinate_frame;

   procedure operation_conversion_missing_parameter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt1 = "PROJCS[\"NAD83(CSRS98) / UTM zone 20N (deprecated)\","
--  "    GEOGCS[\"NAD83(CSRS98)\","
--  "        DATUM[\"NAD83_Canadian_Spatial_Reference_System\","
--  "            SPHEROID[\"GRS 1980\",6378137,298.257222101,"
--  "                AUTHORITY[\"EPSG\",\"7019\"]],"
--  "            AUTHORITY[\"EPSG\",\"6140\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9108\"]],"
--  "        AUTHORITY[\"EPSG\",\"4140\"]],"
--  "    PROJECTION[\"Transverse_Mercator\"],"
--  "    PARAMETER[\"latitude_of_origin\",0],"
--  "    PARAMETER[\"central_meridian\",-63],"
--  "    PARAMETER[\"scale_factor\",0.9996],"
--  "    PARAMETER[\"false_easting\",500000],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"Easting\",EAST],"
--  "    AXIS[\"Northing\",NORTH],"
--  "    AUTHORITY[\"EPSG\",\"2038\"]]";
--  auto obj1 = WKTParser().createFromWKT(wkt1);
--  auto crs1 = nn_dynamic_pointer_cast<ProjectedCRS>(obj1);
--  ASSERT_TRUE(crs1 != nullptr);
--  
--  // Difference with wkt1: latitude_of_origin missing, but false_northing
--  // added to 0
--  auto wkt2 = "PROJCS[\"NAD83(CSRS98) / UTM zone 20N (deprecated)\","
--  "    GEOGCS[\"NAD83(CSRS98)\","
--  "        DATUM[\"NAD83_Canadian_Spatial_Reference_System\","
--  "            SPHEROID[\"GRS 1980\",6378137,298.257222101,"
--  "                AUTHORITY[\"EPSG\",\"7019\"]],"
--  "            AUTHORITY[\"EPSG\",\"6140\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9108\"]],"
--  "        AUTHORITY[\"EPSG\",\"4140\"]],"
--  "    PROJECTION[\"Transverse_Mercator\"],"
--  "    PARAMETER[\"central_meridian\",-63],"
--  "    PARAMETER[\"scale_factor\",0.9996],"
--  "    PARAMETER[\"false_easting\",500000],"
--  "    PARAMETER[\"false_northing\",0],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"Easting\",EAST],"
--  "    AXIS[\"Northing\",NORTH],"
--  "    AUTHORITY[\"EPSG\",\"2038\"]]";
--  auto obj2 = WKTParser().createFromWKT(wkt2);
--  auto crs2 = nn_dynamic_pointer_cast<ProjectedCRS>(obj2);
--  ASSERT_TRUE(crs2 != nullptr);
--  
--  // Difference with wkt1: false_northing added to 0
--  auto wkt3 = "PROJCS[\"NAD83(CSRS98) / UTM zone 20N (deprecated)\","
--  "    GEOGCS[\"NAD83(CSRS98)\","
--  "        DATUM[\"NAD83_Canadian_Spatial_Reference_System\","
--  "            SPHEROID[\"GRS 1980\",6378137,298.257222101,"
--  "                AUTHORITY[\"EPSG\",\"7019\"]],"
--  "            AUTHORITY[\"EPSG\",\"6140\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9108\"]],"
--  "        AUTHORITY[\"EPSG\",\"4140\"]],"
--  "    PROJECTION[\"Transverse_Mercator\"],"
--  "    PARAMETER[\"latitude_of_origin\",0],"
--  "    PARAMETER[\"central_meridian\",-63],"
--  "    PARAMETER[\"scale_factor\",0.9996],"
--  "    PARAMETER[\"false_easting\",500000],"
--  "    PARAMETER[\"false_northing\",0],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"Easting\",EAST],"
--  "    AXIS[\"Northing\",NORTH],"
--  "    AUTHORITY[\"EPSG\",\"2038\"]]";
--  auto obj3 = WKTParser().createFromWKT(wkt3);
--  auto crs3 = nn_dynamic_pointer_cast<ProjectedCRS>(obj3);
--  ASSERT_TRUE(crs3 != nullptr);
--  
--  // Difference with wkt1: UNKNOWN added to non-zero
--  auto wkt4 = "PROJCS[\"NAD83(CSRS98) / UTM zone 20N (deprecated)\","
--  "    GEOGCS[\"NAD83(CSRS98)\","
--  "        DATUM[\"NAD83_Canadian_Spatial_Reference_System\","
--  "            SPHEROID[\"GRS 1980\",6378137,298.257222101,"
--  "                AUTHORITY[\"EPSG\",\"7019\"]],"
--  "            AUTHORITY[\"EPSG\",\"6140\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9108\"]],"
--  "        AUTHORITY[\"EPSG\",\"4140\"]],"
--  "    PROJECTION[\"Transverse_Mercator\"],"
--  "    PARAMETER[\"latitude_of_origin\",0],"
--  "    PARAMETER[\"central_meridian\",-63],"
--  "    PARAMETER[\"scale_factor\",0.9996],"
--  "    PARAMETER[\"false_easting\",500000],"
--  "    PARAMETER[\"false_northing\",0],"
--  "    PARAMETER[\"UNKNOWN\",13],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"Easting\",EAST],"
--  "    AXIS[\"Northing\",NORTH],"
--  "    AUTHORITY[\"EPSG\",\"2038\"]]";
--  auto obj4 = WKTParser().createFromWKT(wkt4);
--  auto crs4 = nn_dynamic_pointer_cast<ProjectedCRS>(obj4);
--  ASSERT_TRUE(crs4 != nullptr);
--  
--  // Difference with wkt1: latitude_of_origin missing, but false_northing
--  // added to non-zero
--  auto wkt5 = "PROJCS[\"NAD83(CSRS98) / UTM zone 20N (deprecated)\","
--  "    GEOGCS[\"NAD83(CSRS98)\","
--  "        DATUM[\"NAD83_Canadian_Spatial_Reference_System\","
--  "            SPHEROID[\"GRS 1980\",6378137,298.257222101,"
--  "                AUTHORITY[\"EPSG\",\"7019\"]],"
--  "            AUTHORITY[\"EPSG\",\"6140\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9108\"]],"
--  "        AUTHORITY[\"EPSG\",\"4140\"]],"
--  "    PROJECTION[\"Transverse_Mercator\"],"
--  "    PARAMETER[\"central_meridian\",-63],"
--  "    PARAMETER[\"scale_factor\",0.9996],"
--  "    PARAMETER[\"false_easting\",500000],"
--  "    PARAMETER[\"false_northing\",-99999],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"Easting\",EAST],"
--  "    AXIS[\"Northing\",NORTH],"
--  "    AUTHORITY[\"EPSG\",\"2038\"]]";
--  auto obj5 = WKTParser().createFromWKT(wkt5);
--  auto crs5 = nn_dynamic_pointer_cast<ProjectedCRS>(obj5);
--  ASSERT_TRUE(crs5 != nullptr);
--  
--  EXPECT_TRUE(
--  crs1->isEquivalentTo(crs2.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs2->isEquivalentTo(crs1.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs1->isEquivalentTo(crs3.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs3->isEquivalentTo(crs1.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs2->isEquivalentTo(crs3.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs3->isEquivalentTo(crs2.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_FALSE(
--  crs1->isEquivalentTo(crs4.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(
--  crs4->isEquivalentTo(crs1.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_FALSE(
--  crs1->isEquivalentTo(crs5.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(
--  crs5->isEquivalentTo(crs1.get(), IComparable::Criterion::EQUIVALENT));      
   end operation_conversion_missing_parameter;

   procedure operation_conversion_missing_parameter_scale (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt1 = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-1],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1]]";
--  
--  auto obj1 = WKTParser().createFromWKT(wkt1);
--  auto crs1 = nn_dynamic_pointer_cast<ProjectedCRS>(obj1);
--  ASSERT_TRUE(crs1 != nullptr);
--  
--  // Difference with wkt1: scale_factor missing
--  auto wkt2 = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-1],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1]]";
--  
--  auto obj2 = WKTParser().createFromWKT(wkt2);
--  auto crs2 = nn_dynamic_pointer_cast<ProjectedCRS>(obj2);
--  ASSERT_TRUE(crs2 != nullptr);
--  
--  // Difference with wkt1: scale_factor set to non-1
--  auto wkt3 = "PROJCS[\"test\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS 1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-1],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",-1],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1]]";
--  auto obj3 = WKTParser().createFromWKT(wkt3);
--  auto crs3 = nn_dynamic_pointer_cast<ProjectedCRS>(obj3);
--  ASSERT_TRUE(crs3 != nullptr);
--  
--  EXPECT_TRUE(
--  crs1->isEquivalentTo(crs2.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs2->isEquivalentTo(crs1.get(), IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_FALSE(
--  crs1->isEquivalentTo(crs3.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(
--  crs3->isEquivalentTo(crs1.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(
--  crs2->isEquivalentTo(crs3.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_FALSE(
--  crs3->isEquivalentTo(crs2.get(), IComparable::Criterion::EQUIVALENT));      
   end operation_conversion_missing_parameter_scale;

   procedure operation_createChangeVerticalUnit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createChangeVerticalUnit(PropertyMap(), Scale(1));
--  EXPECT_TRUE(conv->validateParameters().empty());      
   end operation_createChangeVerticalUnit;

   procedure operation_createGeographicGeocentric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto conv = Conversion::createGeographicGeocentric(PropertyMap());
--  EXPECT_TRUE(conv->validateParameters().empty());      
   end operation_createGeographicGeocentric;

   procedure operation_validateParameters (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  {
--  auto conv = Conversion::create(
--  PropertyMap(),
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "unknown"), {}, {});
--  auto validation = conv->validateParameters();
--  EXPECT_EQ(validation, std::list<std::string>{"Unknown method unknown"});
--  }
--  
--  {
--  auto conv = Conversion::create(
--  PropertyMap(), PropertyMap().set(IdentifiedObject::NAME_KEY,
--  "change of vertical unit"),
--  {}, {});
--  auto validation = conv->validateParameters();
--  auto expected = std::list<std::string>{
--  "Method name change of vertical unit is equivalent to official "
--  "Change of Vertical Unit but not strictly equal",
--  "Cannot find expected parameter Unit conversion scalar"};
--  EXPECT_EQ(validation, expected);
--  }
--  
--  {
--  auto conv = Conversion::create(
--  PropertyMap(), PropertyMap()
--  .set(IdentifiedObject::NAME_KEY,
--  EPSG_NAME_METHOD_CHANGE_VERTICAL_UNIT)
--  .set(Identifier::CODESPACE_KEY, Identifier::EPSG)
--  .set(Identifier::CODE_KEY, "1234"),
--  {}, {});
--  auto validation = conv->validateParameters();
--  auto expected = std::list<std::string>{
--  "Method of EPSG code 1234 does not match official code (1069)",
--  "Cannot find expected parameter Unit conversion scalar"};
--  EXPECT_EQ(validation, expected);
--  }
--  
--  {
--  auto conv = Conversion::create(
--  PropertyMap(),
--  PropertyMap()
--  .set(IdentifiedObject::NAME_KEY, "some fancy name")
--  .set(Identifier::CODESPACE_KEY, Identifier::EPSG)
--  .set(Identifier::CODE_KEY,
--  EPSG_CODE_METHOD_CHANGE_VERTICAL_UNIT),
--  {}, {});
--  auto validation = conv->validateParameters();
--  auto expected = std::list<std::string>{
--  "Method name some fancy name, matched to Change of Vertical Unit, "
--  "through its EPSG code has not an equivalent name",
--  "Cannot find expected parameter Unit conversion scalar"};
--  EXPECT_EQ(validation, expected);
--  }
--  
--  {
--  auto conv = Conversion::create(
--  PropertyMap(),
--  PropertyMap().set(IdentifiedObject::NAME_KEY,
--  EPSG_NAME_METHOD_CHANGE_VERTICAL_UNIT),
--  {OperationParameter::create(PropertyMap().set(
--  IdentifiedObject::NAME_KEY, "unit conversion scalar"))},
--  {ParameterValue::create(Measure(1.0, UnitOfMeasure::SCALE_UNITY))});
--  auto validation = conv->validateParameters();
--  auto expected = std::list<std::string>{
--  "Parameter name unit conversion scalar is equivalent to official "
--  "Unit conversion scalar but not strictly equal"};
--  EXPECT_EQ(validation, expected);
--  }
--  
--  {
--  auto conv = Conversion::create(
--  PropertyMap(),
--  PropertyMap().set(IdentifiedObject::NAME_KEY,
--  EPSG_NAME_METHOD_CHANGE_VERTICAL_UNIT),
--  {OperationParameter::create(
--  PropertyMap()
--  .set(IdentifiedObject::NAME_KEY, "fancy name")
--  .set(Identifier::CODESPACE_KEY, Identifier::EPSG)
--  .set(Identifier::CODE_KEY,
--  EPSG_CODE_PARAMETER_UNIT_CONVERSION_SCALAR))},
--  {ParameterValue::create(Measure(1.0, UnitOfMeasure::SCALE_UNITY))});
--  auto validation = conv->validateParameters();
--  auto expected = std::list<std::string>{
--  "Parameter name fancy name, matched to Unit conversion scalar, "
--  "through its EPSG code has not an equivalent name"};
--  EXPECT_EQ(validation, expected);
--  }
--  
--  {
--  auto conv = Conversion::create(
--  PropertyMap(),
--  PropertyMap().set(IdentifiedObject::NAME_KEY,
--  EPSG_NAME_METHOD_CHANGE_VERTICAL_UNIT),
--  {OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "extra param"))},
--  {ParameterValue::create(Measure(1.0, UnitOfMeasure::SCALE_UNITY))});
--  auto validation = conv->validateParameters();
--  auto expected = std::list<std::string>{
--  "Cannot find expected parameter Unit conversion scalar",
--  "Parameter extra param found but not expected for this method"};
--  EXPECT_EQ(validation, expected);
--  }      
   end operation_validateParameters;

   procedure operation_normalizeForVisualization (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto authFactory =
--  AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  
--  // Source(geographic) must be inverted
--  {
--  auto src = authFactory->createCoordinateReferenceSystem("4326");
--  auto dst = authFactory->createCoordinateReferenceSystem("32631");
--  auto op =
--  CoordinateOperationFactory::create()->createOperation(src, dst);
--  ASSERT_TRUE(op != nullptr);
--  auto opNormalized = op->normalizeForVisualization();
--  EXPECT_FALSE(opNormalized->_isEquivalentTo(op.get()));
--  EXPECT_EQ(opNormalized->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=utm +zone=31 +ellps=WGS84");
--  }
--  
--  // Target(geographic) must be inverted
--  {
--  auto src = authFactory->createCoordinateReferenceSystem("32631");
--  auto dst = authFactory->createCoordinateReferenceSystem("4326");
--  auto op =
--  CoordinateOperationFactory::create()->createOperation(src, dst);
--  ASSERT_TRUE(op != nullptr);
--  auto opNormalized = op->normalizeForVisualization();
--  EXPECT_FALSE(opNormalized->_isEquivalentTo(op.get()));
--  EXPECT_EQ(opNormalized->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +inv +proj=utm +zone=31 +ellps=WGS84 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");
--  }
--  
--  // Source(geographic) and target(projected) must be inverted
--  {
--  auto src = authFactory->createCoordinateReferenceSystem("4326");
--  auto dst = authFactory->createCoordinateReferenceSystem("3040");
--  auto op =
--  CoordinateOperationFactory::create()->createOperation(src, dst);
--  ASSERT_TRUE(op != nullptr);
--  auto opNormalized = op->normalizeForVisualization();
--  EXPECT_FALSE(opNormalized->_isEquivalentTo(op.get()));
--  EXPECT_EQ(opNormalized->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=utm +zone=28 +ellps=GRS80");
--  }
--  
--  // No inversion
--  {
--  auto src = authFactory->createCoordinateReferenceSystem("32631");
--  auto dst = authFactory->createCoordinateReferenceSystem("32632");
--  auto op =
--  CoordinateOperationFactory::create()->createOperation(src, dst);
--  ASSERT_TRUE(op != nullptr);
--  auto opNormalized = op->normalizeForVisualization();
--  EXPECT_TRUE(opNormalized->_isEquivalentTo(op.get()));
--  }
--  
--  // Source(compoundCRS) and target(geographic 3D) must be inverted
--  {
--  auto ctxt =
--  CoordinateOperationContext::create(authFactory, nullptr, 0.0);
--  ctxt->setUsePROJAlternativeGridNames(false);
--  auto src = CompoundCRS::create(
--  PropertyMap(),
--  std::vector<CRSNNPtr>{
--  authFactory->createCoordinateReferenceSystem("4326"),
--  // EGM2008 height
--  authFactory->createCoordinateReferenceSystem("3855")});
--  auto list = CoordinateOperationFactory::create()->createOperations(
--  src,
--  authFactory->createCoordinateReferenceSystem("4979"), // WGS 84 3D
--  ctxt);
--  ASSERT_EQ(list.size(), 2U);
--  auto op = list[1];
--  auto opNormalized = op->normalizeForVisualization();
--  EXPECT_FALSE(opNormalized->_isEquivalentTo(op.get()));
--  EXPECT_EQ(
--  opNormalized->exportToPROJString(
--  PROJStringFormatter::create(
--  PROJStringFormatter::Convention::PROJ_5,
--  authFactory->databaseContext())
--  .get()),
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=vgridshift +grids=us_nga_egm08_25.tif +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");
--  }
--  
--  // Source(boundCRS) and target(geographic) must be inverted
--  {
--  auto src = BoundCRS::createFromTOWGS84(
--  GeographicCRS::EPSG_4269, std::vector<double>{1, 2, 3, 4, 5, 6, 7});
--  auto dst = authFactory->createCoordinateReferenceSystem("4326");
--  auto op =
--  CoordinateOperationFactory::create()->createOperation(src, dst);
--  ASSERT_TRUE(op != nullptr);
--  auto opNormalized = op->normalizeForVisualization();
--  EXPECT_FALSE(opNormalized->_isEquivalentTo(op.get()));
--  EXPECT_EQ(opNormalized->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=push +v_3 "
--  "+step +proj=cart +ellps=GRS80 "
--  "+step +proj=helmert +x=1 +y=2 +z=3 +rx=4 +ry=5 +rz=6 +s=7 "
--  "+convention=position_vector "
--  "+step +inv +proj=cart +ellps=WGS84 "
--  "+step +proj=pop +v_3 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg");
--  }      
   end operation_normalizeForVisualization;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, operation_method'Access, "operation_method");

      Registration.Register_Routine (Test, operation_method_parameter_different_order'Access, "operation_method_parameter_different_order");

      Registration.Register_Routine (Test, operation_ParameterValue'Access, "operation_ParameterValue");

      Registration.Register_Routine (Test, operation_OperationParameter'Access, "operation_OperationParameter");

      Registration.Register_Routine (Test, operation_OperationParameterValue'Access, "operation_OperationParameterValue");

      Registration.Register_Routine (Test, operation_SingleOperation'Access, "operation_SingleOperation");

      Registration.Register_Routine (Test, operation_SingleOperation_different_order'Access, "operation_SingleOperation_different_order");

      Registration.Register_Routine (Test, operation_transformation_to_wkt'Access, "operation_transformation_to_wkt");

      Registration.Register_Routine (Test, operation_concatenated_operation'Access, "operation_concatenated_operation");

      Registration.Register_Routine (Test, operation_transformation_createGeocentricTranslations'Access, "operation_transformation_createGeocentricTranslations");

      Registration.Register_Routine (Test, operation_transformation_createGeocentricTranslations_null'Access, "operation_transformation_createGeocentricTranslations_null");

      Registration.Register_Routine (Test, operation_transformation_createGeocentricTranslations_neg_zero'Access, "operation_transformation_createGeocentricTranslations_neg_zero");

      Registration.Register_Routine (Test, operation_transformation_createPositionVector'Access, "operation_transformation_createPositionVector");

      Registration.Register_Routine (Test, operation_transformation_createCoordinateFrameRotation'Access, "operation_transformation_createCoordinateFrameRotation");

      Registration.Register_Routine (Test, operation_transformation_createTimeDependentPositionVector'Access, "operation_transformation_createTimeDependentPositionVector");

      Registration.Register_Routine (Test, operation_transformation_createTimeDependentCoordinateFrameRotation'Access, "operation_transformation_createTimeDependentCoordinateFrameRotation");

      Registration.Register_Routine (Test, operation_transformation_successive_helmert_noop'Access, "operation_transformation_successive_helmert_noop");

      Registration.Register_Routine (Test, operation_transformation_successive_helmert_non_trivial_1'Access, "operation_transformation_successive_helmert_non_trivial_1");

      Registration.Register_Routine (Test, operation_transformation_successive_helmert_non_trivial_2'Access, "operation_transformation_successive_helmert_non_trivial_2");

      Registration.Register_Routine (Test, operation_transformation_createMolodensky'Access, "operation_transformation_createMolodensky");

      Registration.Register_Routine (Test, operation_transformation_createAbridgedMolodensky'Access, "operation_transformation_createAbridgedMolodensky");

      Registration.Register_Routine (Test, operation_transformation_inverse'Access, "operation_transformation_inverse");

      Registration.Register_Routine (Test, operation_transformation_createTOWGS84'Access, "operation_transformation_createTOWGS84");

      Registration.Register_Routine (Test, operation_createAxisOrderReversal'Access, "operation_createAxisOrderReversal");

      Registration.Register_Routine (Test, operation_utm_export'Access, "operation_utm_export");

      Registration.Register_Routine (Test, operation_tmerc_export'Access, "operation_tmerc_export");

      Registration.Register_Routine (Test, operation_gstmerc_export'Access, "operation_gstmerc_export");

      Registration.Register_Routine (Test, operation_tmerc_south_oriented_export'Access, "operation_tmerc_south_oriented_export");

      Registration.Register_Routine (Test, operation_tped_export'Access, "operation_tped_export");

      Registration.Register_Routine (Test, operation_tmg_export'Access, "operation_tmg_export");

      Registration.Register_Routine (Test, operation_aea_export'Access, "operation_aea_export");

      Registration.Register_Routine (Test, operation_azimuthal_equidistant_export'Access, "operation_azimuthal_equidistant_export");

      Registration.Register_Routine (Test, operation_guam_projection_export'Access, "operation_guam_projection_export");

      Registration.Register_Routine (Test, operation_bonne_export'Access, "operation_bonne_export");

      Registration.Register_Routine (Test, operation_lambert_cylindrical_equal_area_spherical_export'Access, "operation_lambert_cylindrical_equal_area_spherical_export");

      Registration.Register_Routine (Test, operation_lambert_cylindrical_equal_area_export'Access, "operation_lambert_cylindrical_equal_area_export");

      Registration.Register_Routine (Test, operation_lcc1sp_export'Access, "operation_lcc1sp_export");

      Registration.Register_Routine (Test, operation_lcc2sp_export'Access, "operation_lcc2sp_export");

      Registration.Register_Routine (Test, operation_lcc2sp_isEquivalentTo_parallels_switched'Access, "operation_lcc2sp_isEquivalentTo_parallels_switched");

      Registration.Register_Routine (Test, operation_lcc2sp_michigan_export'Access, "operation_lcc2sp_michigan_export");

      Registration.Register_Routine (Test, operation_lcc2sp_belgium_export'Access, "operation_lcc2sp_belgium_export");

      Registration.Register_Routine (Test, operation_cassini_soldner_export'Access, "operation_cassini_soldner_export");

      Registration.Register_Routine (Test, operation_equidistant_conic_export'Access, "operation_equidistant_conic_export");

      Registration.Register_Routine (Test, operation_eckert_export'Access, "operation_eckert_export");

      Registration.Register_Routine (Test, operation_createEquidistantCylindrical'Access, "operation_createEquidistantCylindrical");

      Registration.Register_Routine (Test, operation_createEquidistantCylindricalSpherical'Access, "operation_createEquidistantCylindricalSpherical");

      Registration.Register_Routine (Test, operation_equidistant_cylindrical_lat_0'Access, "operation_equidistant_cylindrical_lat_0");

      Registration.Register_Routine (Test, operation_gall_export'Access, "operation_gall_export");

      Registration.Register_Routine (Test, operation_goode_homolosine_export'Access, "operation_goode_homolosine_export");

      Registration.Register_Routine (Test, operation_interrupted_goode_homolosine_export'Access, "operation_interrupted_goode_homolosine_export");

      Registration.Register_Routine (Test, operation_geostationary_satellite_sweep_x_export'Access, "operation_geostationary_satellite_sweep_x_export");

      Registration.Register_Routine (Test, operation_geostationary_satellite_sweep_y_export'Access, "operation_geostationary_satellite_sweep_y_export");

      Registration.Register_Routine (Test, operation_gnomonic_export'Access, "operation_gnomonic_export");

      Registration.Register_Routine (Test, operation_hotine_oblique_mercator_variant_A_export'Access, "operation_hotine_oblique_mercator_variant_A_export");

      Registration.Register_Routine (Test, operation_hotine_oblique_mercator_variant_A_export_swiss_mercator'Access, "operation_hotine_oblique_mercator_variant_A_export_swiss_mercator");

      Registration.Register_Routine (Test, operation_hotine_oblique_mercator_variant_B_export'Access, "operation_hotine_oblique_mercator_variant_B_export");

      Registration.Register_Routine (Test, operation_hotine_oblique_mercator_variant_B_export_swiss_mercator'Access, "operation_hotine_oblique_mercator_variant_B_export_swiss_mercator");

      Registration.Register_Routine (Test, operation_hotine_oblique_mercator_two_point_natural_origin_export'Access, "operation_hotine_oblique_mercator_two_point_natural_origin_export");

      Registration.Register_Routine (Test, operation_laborde_oblique_mercator_export'Access, "operation_laborde_oblique_mercator_export");

      Registration.Register_Routine (Test, operation_imw_polyconic_export'Access, "operation_imw_polyconic_export");

      Registration.Register_Routine (Test, operation_krovak_north_oriented_export'Access, "operation_krovak_north_oriented_export");

      Registration.Register_Routine (Test, operation_krovak_export'Access, "operation_krovak_export");

      Registration.Register_Routine (Test, operation_lambert_azimuthal_equal_area_export'Access, "operation_lambert_azimuthal_equal_area_export");

      Registration.Register_Routine (Test, operation_miller_cylindrical_export'Access, "operation_miller_cylindrical_export");

      Registration.Register_Routine (Test, operation_mercator_variant_A_export'Access, "operation_mercator_variant_A_export");

      Registration.Register_Routine (Test, operation_mercator_variant_A_export_latitude_origin_non_zero'Access, "operation_mercator_variant_A_export_latitude_origin_non_zero");

      Registration.Register_Routine (Test, operation_wkt1_import_mercator_variant_A'Access, "operation_wkt1_import_mercator_variant_A");

      Registration.Register_Routine (Test, operation_wkt1_import_mercator_variant_A_that_is_variant_B'Access, "operation_wkt1_import_mercator_variant_A_that_is_variant_B");

      Registration.Register_Routine (Test, operation_mercator_variant_B_export'Access, "operation_mercator_variant_B_export");

      Registration.Register_Routine (Test, operation_odd_mercator_1sp_with_non_null_latitude'Access, "operation_odd_mercator_1sp_with_non_null_latitude");

      Registration.Register_Routine (Test, operation_odd_mercator_2sp_with_latitude_of_origin'Access, "operation_odd_mercator_2sp_with_latitude_of_origin");

      Registration.Register_Routine (Test, operation_webmerc_export'Access, "operation_webmerc_export");

      Registration.Register_Routine (Test, operation_webmerc_import_from_GDAL_wkt1'Access, "operation_webmerc_import_from_GDAL_wkt1");

      Registration.Register_Routine (Test, operation_webmerc_import_from_GDAL_wkt1_with_EPSG_code'Access, "operation_webmerc_import_from_GDAL_wkt1_with_EPSG_code");

      Registration.Register_Routine (Test, operation_webmerc_import_from_GDAL_wkt1_EPSG_3785_deprecated'Access, "operation_webmerc_import_from_GDAL_wkt1_EPSG_3785_deprecated");

      Registration.Register_Routine (Test, operation_webmerc_import_from_WKT2_EPSG_3785_deprecated'Access, "operation_webmerc_import_from_WKT2_EPSG_3785_deprecated");

      Registration.Register_Routine (Test, operation_webmerc_import_from_broken_esri_WGS_84_Pseudo_Mercator'Access, "operation_webmerc_import_from_broken_esri_WGS_84_Pseudo_Mercator");

      Registration.Register_Routine (Test, operation_mollweide_export'Access, "operation_mollweide_export");

      Registration.Register_Routine (Test, operation_nzmg_export'Access, "operation_nzmg_export");

      Registration.Register_Routine (Test, operation_oblique_stereographic_export'Access, "operation_oblique_stereographic_export");

      Registration.Register_Routine (Test, operation_orthographic_export'Access, "operation_orthographic_export");

      Registration.Register_Routine (Test, operation_american_polyconic_export'Access, "operation_american_polyconic_export");

      Registration.Register_Routine (Test, operation_polar_stereographic_variant_A_export'Access, "operation_polar_stereographic_variant_A_export");

      Registration.Register_Routine (Test, operation_polar_stereographic_variant_B_export_positive_lat'Access, "operation_polar_stereographic_variant_B_export_positive_lat");

      Registration.Register_Routine (Test, operation_polar_stereographic_variant_B_export_negative_lat'Access, "operation_polar_stereographic_variant_B_export_negative_lat");

      Registration.Register_Routine (Test, operation_wkt1_import_polar_stereographic_variantA'Access, "operation_wkt1_import_polar_stereographic_variantA");

      Registration.Register_Routine (Test, operation_wkt1_import_polar_stereographic_variantB'Access, "operation_wkt1_import_polar_stereographic_variantB");

      Registration.Register_Routine (Test, operation_wkt1_import_polar_stereographic_ambiguous'Access, "operation_wkt1_import_polar_stereographic_ambiguous");

      Registration.Register_Routine (Test, operation_wkt1_import_equivalent_parameters'Access, "operation_wkt1_import_equivalent_parameters");

      Registration.Register_Routine (Test, operation_robinson_export'Access, "operation_robinson_export");

      Registration.Register_Routine (Test, operation_sinusoidal_export'Access, "operation_sinusoidal_export");

      Registration.Register_Routine (Test, operation_stereographic_export'Access, "operation_stereographic_export");

      Registration.Register_Routine (Test, operation_vandergrinten_export'Access, "operation_vandergrinten_export");

      Registration.Register_Routine (Test, operation_wagner_export'Access, "operation_wagner_export");

      Registration.Register_Routine (Test, operation_wagnerIII_export'Access, "operation_wagnerIII_export");

      Registration.Register_Routine (Test, operation_qsc_export'Access, "operation_qsc_export");

      Registration.Register_Routine (Test, operation_sch_export'Access, "operation_sch_export");

      Registration.Register_Routine (Test, operation_conversion_inverse'Access, "operation_conversion_inverse");

      Registration.Register_Routine (Test, operation_eqearth_export'Access, "operation_eqearth_export");

      Registration.Register_Routine (Test, operation_vertical_perspective_export'Access, "operation_vertical_perspective_export");

      Registration.Register_Routine (Test, operation_laborde_oblique_mercator'Access, "operation_laborde_oblique_mercator");

      Registration.Register_Routine (Test, operation_PROJ_based'Access, "operation_PROJ_based");

      Registration.Register_Routine (Test, operation_PROJ_based_empty'Access, "operation_PROJ_based_empty");

      Registration.Register_Routine (Test, operation_PROJ_based_with_global_parameters'Access, "operation_PROJ_based_with_global_parameters");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS'Access, "operation_geogCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_default'Access, "operation_geogCRS_to_geogCRS_context_default");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_match_by_name'Access, "operation_geogCRS_to_geogCRS_context_match_by_name");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_filter_accuracy'Access, "operation_geogCRS_to_geogCRS_context_filter_accuracy");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_filter_bbox'Access, "operation_geogCRS_to_geogCRS_context_filter_bbox");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_incompatible_area'Access, "operation_geogCRS_to_geogCRS_context_incompatible_area");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_inverse_needed'Access, "operation_geogCRS_to_geogCRS_context_inverse_needed");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_ntv1_ntv2_ctable2'Access, "operation_geogCRS_to_geogCRS_context_ntv1_ntv2_ctable2");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84'Access, "operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84_G1762'Access, "operation_geogCRS_to_geogCRS_context_NAD27_to_WGS84_G1762");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_WGS84_G1674_to_WGS84_G1762'Access, "operation_geogCRS_to_geogCRS_context_WGS84_G1674_to_WGS84_G1762");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_EPSG_4240_Indian1975_to_EPSG_4326'Access, "operation_geogCRS_to_geogCRS_context_EPSG_4240_Indian1975_to_EPSG_4326");

      Registration.Register_Routine (Test, operation_vertCRS_to_geogCRS_context'Access, "operation_vertCRS_to_geogCRS_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_noop'Access, "operation_geogCRS_to_geogCRS_noop");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_longitude_rotation'Access, "operation_geogCRS_to_geogCRS_longitude_rotation");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_longitude_rotation_context'Access, "operation_geogCRS_to_geogCRS_longitude_rotation_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_concatenated_operation'Access, "operation_geogCRS_to_geogCRS_context_concatenated_operation");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_ED50_to_WGS72_no_NTF_intermediate'Access, "operation_geogCRS_to_geogCRS_context_ED50_to_WGS72_no_NTF_intermediate");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_context_same_grid_name'Access, "operation_geogCRS_to_geogCRS_context_same_grid_name");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_geographic_offset_context'Access, "operation_geogCRS_to_geogCRS_geographic_offset_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_CH1903_to_CH1903plus_context'Access, "operation_geogCRS_to_geogCRS_CH1903_to_CH1903plus_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_init_IGNF_to_init_IGNF_context'Access, "operation_geogCRS_to_geogCRS_init_IGNF_to_init_IGNF_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_geogCRS_3D'Access, "operation_geogCRS_to_geogCRS_3D");

      Registration.Register_Routine (Test, operation_geogCRS_3D_lat_long_non_metre_to_geogCRS_longlat'Access, "operation_geogCRS_3D_lat_long_non_metre_to_geogCRS_longlat");

      Registration.Register_Routine (Test, operation_geogCRS_without_id_to_geogCRS_3D_context'Access, "operation_geogCRS_without_id_to_geogCRS_3D_context");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geogCRS_same_datum'Access, "operation_geocentricCRS_to_geogCRS_same_datum");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geogCRS_different_datum'Access, "operation_geocentricCRS_to_geogCRS_different_datum");

      Registration.Register_Routine (Test, operation_geogCRS_to_geocentricCRS_different_datum'Access, "operation_geogCRS_to_geocentricCRS_different_datum");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geocentricCRS_same_noop'Access, "operation_geocentricCRS_to_geocentricCRS_same_noop");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geocentricCRS_different_ballpark'Access, "operation_geocentricCRS_to_geocentricCRS_different_ballpark");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geogCRS_same_datum_context'Access, "operation_geocentricCRS_to_geogCRS_same_datum_context");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geogCRS_same_datum_context_all_auth'Access, "operation_geocentricCRS_to_geogCRS_same_datum_context_all_auth");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geocentricCRS_different_datum_context'Access, "operation_geocentricCRS_to_geocentricCRS_different_datum_context");

      Registration.Register_Routine (Test, operation_geogCRS_geocentricCRS_same_datum_to_context'Access, "operation_geogCRS_geocentricCRS_same_datum_to_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_geocentricCRS_different_datum_context'Access, "operation_geogCRS_to_geocentricCRS_different_datum_context");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_geogCRS_different_datum_context'Access, "operation_geocentricCRS_to_geogCRS_different_datum_context");

      Registration.Register_Routine (Test, operation_esri_projectedCRS_to_geogCRS_with_ITRF_intermediate_context'Access, "operation_esri_projectedCRS_to_geogCRS_with_ITRF_intermediate_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_projCRS'Access, "operation_geogCRS_to_projCRS");

      Registration.Register_Routine (Test, operation_geogCRS_longlat_to_geogCS_latlong'Access, "operation_geogCRS_longlat_to_geogCS_latlong");

      Registration.Register_Routine (Test, operation_geogCRS_longlat_to_geogCS_latlong_database'Access, "operation_geogCRS_longlat_to_geogCS_latlong_database");

      Registration.Register_Routine (Test, operation_geogCRS_longlat_to_projCRS'Access, "operation_geogCRS_longlat_to_projCRS");

      Registration.Register_Routine (Test, operation_geogCRS_different_from_baseCRS_to_projCRS'Access, "operation_geogCRS_different_from_baseCRS_to_projCRS");

      Registration.Register_Routine (Test, operation_geocentricCRS_to_projCRS'Access, "operation_geocentricCRS_to_projCRS");

      Registration.Register_Routine (Test, operation_projCRS_to_geogCRS'Access, "operation_projCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_projCRS_no_id_to_geogCRS_context'Access, "operation_projCRS_no_id_to_geogCRS_context");

      Registration.Register_Routine (Test, operation_projCRS_3D_to_geogCRS_3D_context'Access, "operation_projCRS_3D_to_geogCRS_3D_context");

      Registration.Register_Routine (Test, operation_projCRS_3D_to_projCRS_2D_context'Access, "operation_projCRS_3D_to_projCRS_2D_context");

      Registration.Register_Routine (Test, operation_geogCRS_3D_to_projCRS_with_2D_geocentric_translation'Access, "operation_geogCRS_3D_to_projCRS_with_2D_geocentric_translation");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS'Access, "operation_projCRS_to_projCRS");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_different_baseCRS'Access, "operation_projCRS_to_projCRS_different_baseCRS");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_context_compatible_area'Access, "operation_projCRS_to_projCRS_context_compatible_area");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_context_compatible_area_bis'Access, "operation_projCRS_to_projCRS_context_compatible_area_bis");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_context_one_incompatible_area'Access, "operation_projCRS_to_projCRS_context_one_incompatible_area");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_context_incompatible_areas'Access, "operation_projCRS_to_projCRS_context_incompatible_areas");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_context_incompatible_areas_ballpark'Access, "operation_projCRS_to_projCRS_context_incompatible_areas_ballpark");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_north_pole_inverted_axis'Access, "operation_projCRS_to_projCRS_north_pole_inverted_axis");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_south_pole_inverted_axis'Access, "operation_projCRS_to_projCRS_south_pole_inverted_axis");

      Registration.Register_Routine (Test, operation_projCRS_to_projCRS_through_geog3D'Access, "operation_projCRS_to_projCRS_through_geog3D");

      Registration.Register_Routine (Test, operation_boundCRS_of_geogCRS_to_geogCRS'Access, "operation_boundCRS_of_geogCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_boundCRS_of_geogCRS_to_geogCRS_with_area'Access, "operation_boundCRS_of_geogCRS_to_geogCRS_with_area");

      Registration.Register_Routine (Test, operation_boundCRS_of_geogCRS_to_unrelated_geogCRS'Access, "operation_boundCRS_of_geogCRS_to_unrelated_geogCRS");

      Registration.Register_Routine (Test, operation_createOperation_boundCRS_identified_by_datum'Access, "operation_createOperation_boundCRS_identified_by_datum");

      Registration.Register_Routine (Test, operation_boundCRS_of_clrk_66_geogCRS_to_nad83_geogCRS'Access, "operation_boundCRS_of_clrk_66_geogCRS_to_nad83_geogCRS");

      Registration.Register_Routine (Test, operation_boundCRS_of_clrk_66_projCRS_to_nad83_geogCRS'Access, "operation_boundCRS_of_clrk_66_projCRS_to_nad83_geogCRS");

      Registration.Register_Routine (Test, operation_boundCRS_of_projCRS_to_geogCRS'Access, "operation_boundCRS_of_projCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_boundCRS_of_geogCRS_to_projCRS'Access, "operation_boundCRS_of_geogCRS_to_projCRS");

      Registration.Register_Routine (Test, operation_boundCRS_of_geogCRS_to_unrelated_geogCRS_context'Access, "operation_boundCRS_of_geogCRS_to_unrelated_geogCRS_context");

      Registration.Register_Routine (Test, operation_geogCRS_to_boundCRS_of_geogCRS'Access, "operation_geogCRS_to_boundCRS_of_geogCRS");

      Registration.Register_Routine (Test, operation_boundCRS_to_boundCRS'Access, "operation_boundCRS_to_boundCRS");

      Registration.Register_Routine (Test, operation_boundCRS_to_boundCRS_noop_for_TOWGS84'Access, "operation_boundCRS_to_boundCRS_noop_for_TOWGS84");

      Registration.Register_Routine (Test, operation_boundCRS_to_boundCRS_unralated_hub'Access, "operation_boundCRS_to_boundCRS_unralated_hub");

      Registration.Register_Routine (Test, operation_boundCRS_of_projCRS_towgs84_to_boundCRS_of_projCRS_nadgrids'Access, "operation_boundCRS_of_projCRS_towgs84_to_boundCRS_of_projCRS_nadgrids");

      Registration.Register_Routine (Test, operation_boundCRS_with_basecrs_with_extent_to_geogCRS'Access, "operation_boundCRS_with_basecrs_with_extent_to_geogCRS");

      Registration.Register_Routine (Test, operation_ETRS89_3D_to_proj_string_with_geoidgrids_nadgrids'Access, "operation_ETRS89_3D_to_proj_string_with_geoidgrids_nadgrids");

      Registration.Register_Routine (Test, operation_WGS84_G1762_to_compoundCRS_with_bound_vertCRS'Access, "operation_WGS84_G1762_to_compoundCRS_with_bound_vertCRS");

      Registration.Register_Routine (Test, operation_compoundCRS_to_geogCRS'Access, "operation_compoundCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_transformation_height_to_PROJ_string'Access, "operation_transformation_height_to_PROJ_string");

      Registration.Register_Routine (Test, operation_transformation_Geographic3D_to_GravityRelatedHeight_gtx'Access, "operation_transformation_Geographic3D_to_GravityRelatedHeight_gtx");

      Registration.Register_Routine (Test, operation_transformation_ntv2_to_PROJ_string'Access, "operation_transformation_ntv2_to_PROJ_string");

      Registration.Register_Routine (Test, operation_transformation_VERTCON_to_PROJ_string'Access, "operation_transformation_VERTCON_to_PROJ_string");

      Registration.Register_Routine (Test, operation_transformation_NZLVD_to_PROJ_string'Access, "operation_transformation_NZLVD_to_PROJ_string");

      Registration.Register_Routine (Test, operation_transformation_longitude_rotation_to_PROJ_string'Access, "operation_transformation_longitude_rotation_to_PROJ_string");

      Registration.Register_Routine (Test, operation_transformation_Geographic2D_offsets_to_PROJ_string'Access, "operation_transformation_Geographic2D_offsets_to_PROJ_string");

      Registration.Register_Routine (Test, operation_transformation_Geographic3D_offsets_to_PROJ_string'Access, "operation_transformation_Geographic3D_offsets_to_PROJ_string");

      Registration.Register_Routine (Test, operation_transformation_vertical_offset_to_PROJ_string'Access, "operation_transformation_vertical_offset_to_PROJ_string");

      Registration.Register_Routine (Test, operation_compoundCRS_with_boundVerticalCRS_to_geogCRS'Access, "operation_compoundCRS_with_boundVerticalCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_compoundCRS_with_boundGeogCRS_to_geogCRS'Access, "operation_compoundCRS_with_boundGeogCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_compoundCRS_with_boundGeogCRS_and_boundVerticalCRS_to_geogCRS'Access, "operation_compoundCRS_with_boundGeogCRS_and_boundVerticalCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_compoundCRS_with_boundProjCRS_and_boundVerticalCRS_to_geogCRS'Access, "operation_compoundCRS_with_boundProjCRS_and_boundVerticalCRS_to_geogCRS");

      Registration.Register_Routine (Test, operation_geocent_to_compoundCRS'Access, "operation_geocent_to_compoundCRS");

      Registration.Register_Routine (Test, operation_geocent_to_compoundCRS_context'Access, "operation_geocent_to_compoundCRS_context");

      Registration.Register_Routine (Test, operation_compoundCRS_to_compoundCRS'Access, "operation_compoundCRS_to_compoundCRS");

      Registration.Register_Routine (Test, operation_compoundCRS_to_compoundCRS_with_vertical_transform'Access, "operation_compoundCRS_to_compoundCRS_with_vertical_transform");

      Registration.Register_Routine (Test, operation_compoundCRS_to_compoundCRS_with_bound_crs_in_horiz_and_vert'Access, "operation_compoundCRS_to_compoundCRS_with_bound_crs_in_horiz_and_vert");

      Registration.Register_Routine (Test, operation_compoundCRS_to_compoundCRS_context'Access, "operation_compoundCRS_to_compoundCRS_context");

      Registration.Register_Routine (Test, operation_vertCRS_to_vertCRS'Access, "operation_vertCRS_to_vertCRS");

      Registration.Register_Routine (Test, operation_vertCRS_to_vertCRS_context'Access, "operation_vertCRS_to_vertCRS_context");

      Registration.Register_Routine (Test, operation_vertCRS_to_vertCRS_New_Zealand_context'Access, "operation_vertCRS_to_vertCRS_New_Zealand_context");

      Registration.Register_Routine (Test, operation_compoundCRS_to_geogCRS_3D'Access, "operation_compoundCRS_to_geogCRS_3D");

      Registration.Register_Routine (Test, operation_compoundCRS_to_geogCRS_3D_context'Access, "operation_compoundCRS_to_geogCRS_3D_context");

      Registration.Register_Routine (Test, operation_compoundCRS_to_geogCRS_2D_promote_to_3D_context'Access, "operation_compoundCRS_to_geogCRS_2D_promote_to_3D_context");

      Registration.Register_Routine (Test, operation_compoundCRS_of_projCRS_to_geogCRS_2D_context'Access, "operation_compoundCRS_of_projCRS_to_geogCRS_2D_context");

      Registration.Register_Routine (Test, operation_compoundCRS_from_wkt_without_id_to_geogCRS'Access, "operation_compoundCRS_from_wkt_without_id_to_geogCRS");

      Registration.Register_Routine (Test, operation_compoundCRS_to_geogCRS_with_vertical_unit_change'Access, "operation_compoundCRS_to_geogCRS_with_vertical_unit_change");

      Registration.Register_Routine (Test, operation_compoundCRS_to_geogCRS_with_height_depth_reversal'Access, "operation_compoundCRS_to_geogCRS_with_height_depth_reversal");

      Registration.Register_Routine (Test, operation_compoundCRS_of_vertCRS_with_geoid_model_to_geogCRS'Access, "operation_compoundCRS_of_vertCRS_with_geoid_model_to_geogCRS");

      Registration.Register_Routine (Test, operation_compoundCRS_from_WKT2_to_geogCRS_3D_context'Access, "operation_compoundCRS_from_WKT2_to_geogCRS_3D_context");

      Registration.Register_Routine (Test, operation_compoundCRS_from_WKT2_no_id_to_geogCRS_3D_context'Access, "operation_compoundCRS_from_WKT2_no_id_to_geogCRS_3D_context");

      Registration.Register_Routine (Test, operation_compoundCRS_with_non_meter_horiz_and_vertical_to_geog'Access, "operation_compoundCRS_with_non_meter_horiz_and_vertical_to_geog");

      Registration.Register_Routine (Test, operation_boundCRS_to_compoundCRS'Access, "operation_boundCRS_to_compoundCRS");

      Registration.Register_Routine (Test, operation_IGNF_LAMB1_TO_EPSG_4326'Access, "operation_IGNF_LAMB1_TO_EPSG_4326");

      Registration.Register_Routine (Test, operation_NAD83_to_projeted_CRS_based_on_NAD83_2011'Access, "operation_NAD83_to_projeted_CRS_based_on_NAD83_2011");

      Registration.Register_Routine (Test, operation_isPROJInstantiable'Access, "operation_isPROJInstantiable");

      Registration.Register_Routine (Test, operation_createOperation_on_crs_with_canonical_bound_crs'Access, "operation_createOperation_on_crs_with_canonical_bound_crs");

      Registration.Register_Routine (Test, operation_createOperation_fallback_to_proj4_strings'Access, "operation_createOperation_fallback_to_proj4_strings");

      Registration.Register_Routine (Test, operation_createOperation_on_crs_with_bound_crs_and_wktext'Access, "operation_createOperation_on_crs_with_bound_crs_and_wktext");

      Registration.Register_Routine (Test, operation_createOperation_ossfuzz_18587'Access, "operation_createOperation_ossfuzz_18587");

      Registration.Register_Routine (Test, operation_mercator_variant_A_to_variant_B'Access, "operation_mercator_variant_A_to_variant_B");

      Registration.Register_Routine (Test, operation_mercator_variant_A_to_variant_B_scale_1'Access, "operation_mercator_variant_A_to_variant_B_scale_1");

      Registration.Register_Routine (Test, operation_mercator_variant_A_to_variant_B_no_crs'Access, "operation_mercator_variant_A_to_variant_B_no_crs");

      Registration.Register_Routine (Test, operation_mercator_variant_A_to_variant_B_invalid_scale'Access, "operation_mercator_variant_A_to_variant_B_invalid_scale");

      Registration.Register_Routine (Test, operation_mercator_variant_A_to_variant_B_invalid_eccentricity'Access, "operation_mercator_variant_A_to_variant_B_invalid_eccentricity");

      Registration.Register_Routine (Test, operation_mercator_variant_B_to_variant_A'Access, "operation_mercator_variant_B_to_variant_A");

      Registration.Register_Routine (Test, operation_mercator_variant_B_to_variant_A_invalid_std1'Access, "operation_mercator_variant_B_to_variant_A_invalid_std1");

      Registration.Register_Routine (Test, operation_mercator_variant_B_to_variant_A_invalid_eccentricity'Access, "operation_mercator_variant_B_to_variant_A_invalid_eccentricity");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp'Access, "operation_lcc2sp_to_lcc1sp");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_phi0_eq_phi1_eq_phi2'Access, "operation_lcc2sp_to_lcc1sp_phi0_eq_phi1_eq_phi2");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_phi0_diff_phi1_and_phi1_eq_phi2'Access, "operation_lcc2sp_to_lcc1sp_phi0_diff_phi1_and_phi1_eq_phi2");

      Registration.Register_Routine (Test, operation_lcc1sp_to_lcc2sp_invalid_eccentricity'Access, "operation_lcc1sp_to_lcc2sp_invalid_eccentricity");

      Registration.Register_Routine (Test, operation_lcc1sp_to_lcc2sp_invalid_scale'Access, "operation_lcc1sp_to_lcc2sp_invalid_scale");

      Registration.Register_Routine (Test, operation_lcc1sp_to_lcc2sp_invalid_lat0'Access, "operation_lcc1sp_to_lcc2sp_invalid_lat0");

      Registration.Register_Routine (Test, operation_lcc1sp_to_lcc2sp_null_lat0'Access, "operation_lcc1sp_to_lcc2sp_null_lat0");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_invalid_lat0'Access, "operation_lcc2sp_to_lcc1sp_invalid_lat0");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_invalid_lat1'Access, "operation_lcc2sp_to_lcc1sp_invalid_lat1");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_invalid_lat2'Access, "operation_lcc2sp_to_lcc1sp_invalid_lat2");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_invalid_lat1_opposite_lat2'Access, "operation_lcc2sp_to_lcc1sp_invalid_lat1_opposite_lat2");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_invalid_lat1_and_lat2_close_to_zero'Access, "operation_lcc2sp_to_lcc1sp_invalid_lat1_and_lat2_close_to_zero");

      Registration.Register_Routine (Test, operation_lcc2sp_to_lcc1sp_invalid_eccentricity'Access, "operation_lcc2sp_to_lcc1sp_invalid_eccentricity");

      Registration.Register_Routine (Test, operation_three_param_equivalent_to_seven_param'Access, "operation_three_param_equivalent_to_seven_param");

      Registration.Register_Routine (Test, operation_position_vector_equivalent_coordinate_frame'Access, "operation_position_vector_equivalent_coordinate_frame");

      Registration.Register_Routine (Test, operation_conversion_missing_parameter'Access, "operation_conversion_missing_parameter");

      Registration.Register_Routine (Test, operation_conversion_missing_parameter_scale'Access, "operation_conversion_missing_parameter_scale");

      Registration.Register_Routine (Test, operation_createChangeVerticalUnit'Access, "operation_createChangeVerticalUnit");

      Registration.Register_Routine (Test, operation_createGeographicGeocentric'Access, "operation_createGeographicGeocentric");

      Registration.Register_Routine (Test, operation_validateParameters'Access, "operation_validateParameters");

      Registration.Register_Routine (Test, operation_normalizeForVisualization'Access, "operation_normalizeForVisualization");

   end Register_Tests;

end PROJ.Tests.test_operation;