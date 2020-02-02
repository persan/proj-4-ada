with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body PROJ.Tests.test_datum is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure datum_ellipsoid_from_sphere (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto ellipsoid = Ellipsoid::createSphere(PropertyMap(), Length(6378137));
--  EXPECT_FALSE(ellipsoid->inverseFlattening().has_value());
--  EXPECT_FALSE(ellipsoid->semiMinorAxis().has_value());
--  EXPECT_FALSE(ellipsoid->semiMedianAxis().has_value());
--  EXPECT_TRUE(ellipsoid->isSphere());
--  EXPECT_EQ(ellipsoid->semiMajorAxis(), Length(6378137));
--  EXPECT_EQ(ellipsoid->celestialBody(), "Earth");
--  
--  EXPECT_EQ(ellipsoid->computeSemiMinorAxis(), Length(6378137));
--  EXPECT_EQ(ellipsoid->computedInverseFlattening(), 0);
--  
--  EXPECT_EQ(
--  ellipsoid->exportToPROJString(PROJStringFormatter::create().get()),
--  "+R=6378137");
--  
--  EXPECT_TRUE(ellipsoid->isEquivalentTo(ellipsoid.get()));
--  EXPECT_FALSE(ellipsoid->isEquivalentTo(createUnrelatedObject().get()));      
   end datum_ellipsoid_from_sphere;

   procedure datum_ellipsoid_non_earth (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto ellipsoid =
--  Ellipsoid::createSphere(PropertyMap(), Length(1), "Unity sphere");
--  EXPECT_EQ(ellipsoid->celestialBody(), "Unity sphere");      
   end datum_ellipsoid_non_earth;

   procedure datum_ellipsoid_from_inverse_flattening (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto ellipsoid = Ellipsoid::createFlattenedSphere(
--  PropertyMap(), Length(6378137), Scale(298.257223563));
--  EXPECT_TRUE(ellipsoid->inverseFlattening().has_value());
--  EXPECT_FALSE(ellipsoid->semiMinorAxis().has_value());
--  EXPECT_FALSE(ellipsoid->semiMedianAxis().has_value());
--  EXPECT_FALSE(ellipsoid->isSphere());
--  EXPECT_EQ(ellipsoid->semiMajorAxis(), Length(6378137));
--  EXPECT_EQ(*ellipsoid->inverseFlattening(), Scale(298.257223563));
--  
--  EXPECT_EQ(ellipsoid->computeSemiMinorAxis().unit(),
--  ellipsoid->semiMajorAxis().unit());
--  EXPECT_NEAR(ellipsoid->computeSemiMinorAxis().value(),
--  Length(6356752.31424518).value(), 1e-9);
--  EXPECT_EQ(ellipsoid->computedInverseFlattening(), 298.257223563);
--  
--  EXPECT_EQ(
--  ellipsoid->exportToPROJString(PROJStringFormatter::create().get()),
--  "+ellps=WGS84");
--  
--  EXPECT_TRUE(ellipsoid->isEquivalentTo(ellipsoid.get()));
--  EXPECT_FALSE(ellipsoid->isEquivalentTo(
--  Ellipsoid::createTwoAxis(PropertyMap(), Length(6378137),
--  Length(6356752.31424518))
--  .get()));
--  EXPECT_TRUE(ellipsoid->isEquivalentTo(
--  Ellipsoid::createTwoAxis(PropertyMap(), Length(6378137),
--  Length(6356752.31424518))
--  .get(),
--  IComparable::Criterion::EQUIVALENT));
--  
--  EXPECT_FALSE(Ellipsoid::WGS84->isEquivalentTo(
--  Ellipsoid::GRS1980.get(), IComparable::Criterion::EQUIVALENT));      
   end datum_ellipsoid_from_inverse_flattening;

   procedure datum_ellipsoid_from_null_inverse_flattening (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto ellipsoid = Ellipsoid::createFlattenedSphere(
--  PropertyMap(), Length(6378137), Scale(0));
--  EXPECT_FALSE(ellipsoid->inverseFlattening().has_value());
--  EXPECT_FALSE(ellipsoid->semiMinorAxis().has_value());
--  EXPECT_FALSE(ellipsoid->semiMedianAxis().has_value());
--  EXPECT_TRUE(ellipsoid->isSphere());      
   end datum_ellipsoid_from_null_inverse_flattening;

   procedure datum_ellipsoid_from_semi_minor_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto ellipsoid = Ellipsoid::createTwoAxis(PropertyMap(), Length(6378137),
--  Length(6356752.31424518));
--  EXPECT_FALSE(ellipsoid->inverseFlattening().has_value());
--  EXPECT_TRUE(ellipsoid->semiMinorAxis().has_value());
--  EXPECT_FALSE(ellipsoid->semiMedianAxis().has_value());
--  EXPECT_FALSE(ellipsoid->isSphere());
--  EXPECT_EQ(ellipsoid->semiMajorAxis(), Length(6378137));
--  EXPECT_EQ(*ellipsoid->semiMinorAxis(), Length(6356752.31424518));
--  
--  EXPECT_EQ(ellipsoid->computeSemiMinorAxis(), Length(6356752.31424518));
--  EXPECT_NEAR(ellipsoid->computedInverseFlattening(), 298.257223563, 1e-10);
--  
--  EXPECT_EQ(
--  ellipsoid->exportToPROJString(PROJStringFormatter::create().get()),
--  "+ellps=WGS84");
--  
--  EXPECT_TRUE(ellipsoid->isEquivalentTo(ellipsoid.get()));
--  EXPECT_FALSE(ellipsoid->isEquivalentTo(
--  Ellipsoid::createFlattenedSphere(PropertyMap(), Length(6378137),
--  Scale(298.257223563))
--  .get()));
--  EXPECT_TRUE(ellipsoid->isEquivalentTo(
--  Ellipsoid::createFlattenedSphere(PropertyMap(), Length(6378137),
--  Scale(298.257223563))
--  .get(),
--  IComparable::Criterion::EQUIVALENT));      
   end datum_ellipsoid_from_semi_minor_axis;

   procedure datum_prime_meridian_to_PROJString (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_EQ(PrimeMeridian::GREENWICH->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+proj=noop");
--  
--  EXPECT_EQ(PrimeMeridian::PARIS->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+pm=paris");
--  
--  EXPECT_EQ(PrimeMeridian::create(PropertyMap(), Angle(3.5))
--  ->exportToPROJString(PROJStringFormatter::create().get()),
--  "+pm=3.5");
--  
--  EXPECT_EQ(
--  PrimeMeridian::create(PropertyMap(), Angle(100, UnitOfMeasure::GRAD))
--  ->exportToPROJString(PROJStringFormatter::create().get()),
--  "+pm=90");
--  
--  EXPECT_EQ(
--  PrimeMeridian::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Origin meridian"),
--  Angle(0))
--  ->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");
--  
--  EXPECT_TRUE(PrimeMeridian::GREENWICH->isEquivalentTo(
--  PrimeMeridian::GREENWICH.get()));
--  EXPECT_FALSE(PrimeMeridian::GREENWICH->isEquivalentTo(
--  createUnrelatedObject().get()));      
   end datum_prime_meridian_to_PROJString;

   procedure datum_prime_meridian_to_JSON (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_EQ(PrimeMeridian::GREENWICH->exportToJSON(
--  &(JSONFormatter::create()->setSchema(""))),
--  "{\n"
--  "  \"type\": \"PrimeMeridian\",\n"
--  "  \"name\": \"Greenwich\",\n"
--  "  \"longitude\": 0,\n"
--  "  \"id\": {\n"
--  "    \"authority\": \"EPSG\",\n"
--  "    \"code\": 8901\n"
--  "  }\n"
--  "}");
--  
--  EXPECT_EQ(PrimeMeridian::PARIS->exportToJSON(
--  &(JSONFormatter::create()->setSchema(""))),
--  "{\n"
--  "  \"type\": \"PrimeMeridian\",\n"
--  "  \"name\": \"Paris\",\n"
--  "  \"longitude\": {\n"
--  "    \"value\": 2.5969213,\n"
--  "    \"unit\": {\n"
--  "      \"type\": \"AngularUnit\",\n"
--  "      \"name\": \"grad\",\n"
--  "      \"conversion_factor\": 0.015707963267949\n"
--  "    }\n"
--  "  },\n"
--  "  \"id\": {\n"
--  "    \"authority\": \"EPSG\",\n"
--  "    \"code\": 8903\n"
--  "  }\n"
--  "}");      
   end datum_prime_meridian_to_JSON;

   procedure datum_datum_with_ANCHOR (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto datum = GeodeticReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "WGS_1984 with anchor"),
--  Ellipsoid::WGS84, optional<std::string>("My anchor"),
--  PrimeMeridian::GREENWICH);
--  
--  auto expected = "DATUM[\"WGS_1984 with anchor\",\n"
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",7030]],\n"
--  "    ANCHOR[\"My anchor\"]]";
--  
--  EXPECT_EQ(datum->exportToWKT(WKTFormatter::create().get()), expected);      
   end datum_datum_with_ANCHOR;

   procedure datum_dynamic_geodetic_reference_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto drf = DynamicGeodeticReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "test"), Ellipsoid::WGS84,
--  optional<std::string>("My anchor"), PrimeMeridian::GREENWICH,
--  Measure(2018.5, UnitOfMeasure::YEAR),
--  optional<std::string>("My model"));
--  
--  auto expected = "DATUM[\"test\",\n"
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",7030]],\n"
--  "    ANCHOR[\"My anchor\"]]";
--  
--  EXPECT_EQ(drf->exportToWKT(WKTFormatter::create().get()), expected);
--  
--  auto expected_wtk2_2019 =
--  "DYNAMIC[\n"
--  "    FRAMEEPOCH[2018.5],\n"
--  "    MODEL[\"My model\"]],\n"
--  "DATUM[\"test\",\n"
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",7030]],\n"
--  "    ANCHOR[\"My anchor\"]]";
--  EXPECT_EQ(
--  drf->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  expected_wtk2_2019);      
   end datum_dynamic_geodetic_reference_frame;

   procedure datum_ellipsoid_to_PROJString (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_EQ(Ellipsoid::WGS84->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+ellps=WGS84");
--  
--  EXPECT_EQ(Ellipsoid::GRS1980->exportToPROJString(
--  PROJStringFormatter::create().get()),
--  "+ellps=GRS80");
--  
--  EXPECT_EQ(
--  Ellipsoid::createFlattenedSphere(
--  PropertyMap(), Length(10, UnitOfMeasure("km", 1000)), Scale(0.5))
--  ->exportToPROJString(PROJStringFormatter::create().get()),
--  "+a=10000 +rf=0.5");
--  
--  EXPECT_EQ(Ellipsoid::createTwoAxis(PropertyMap(),
--  Length(10, UnitOfMeasure("km", 1000)),
--  Length(5, UnitOfMeasure("km", 1000)))
--  ->exportToPROJString(PROJStringFormatter::create().get()),
--  "+a=10000 +b=5000");      
   end datum_ellipsoid_to_PROJString;

   procedure datum_temporal_datum_WKT2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto datum = TemporalDatum::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Gregorian calendar"),
--  DateTime::create("0000-01-01"),
--  TemporalDatum::CALENDAR_PROLEPTIC_GREGORIAN);
--  
--  auto expected = "TDATUM[\"Gregorian calendar\",\n"
--  "    TIMEORIGIN[0000-01-01]]";
--  
--  EXPECT_EQ(datum->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2).get()),
--  expected);
--  
--  EXPECT_THROW(
--  datum->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  FormattingException);
--  
--  EXPECT_TRUE(datum->isEquivalentTo(datum.get()));
--  EXPECT_FALSE(datum->isEquivalentTo(createUnrelatedObject().get()));      
   end datum_temporal_datum_WKT2;

   procedure datum_temporal_datum_time_origin_non_ISO8601 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto datum = TemporalDatum::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Gregorian calendar"),
--  DateTime::create("0001 January 1st"),
--  TemporalDatum::CALENDAR_PROLEPTIC_GREGORIAN);
--  
--  auto expected = "TDATUM[\"Gregorian calendar\",\n"
--  "    TIMEORIGIN[\"0001 January 1st\"]]";
--  
--  EXPECT_EQ(datum->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2).get()),
--  expected);      
   end datum_temporal_datum_time_origin_non_ISO8601;

   procedure datum_temporal_datum_WKT2_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto datum = TemporalDatum::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Gregorian calendar"),
--  DateTime::create("0000-01-01"),
--  TemporalDatum::CALENDAR_PROLEPTIC_GREGORIAN);
--  
--  auto expected = "TDATUM[\"Gregorian calendar\",\n"
--  "    CALENDAR[\"proleptic Gregorian\"],\n"
--  "    TIMEORIGIN[0000-01-01]]";
--  
--  EXPECT_EQ(
--  datum->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  expected);      
   end datum_temporal_datum_WKT2_2019;

   procedure datum_dynamic_vertical_reference_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto drf = DynamicVerticalReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "test"),
--  optional<std::string>("My anchor"), optional<RealizationMethod>(),
--  Measure(2018.5, UnitOfMeasure::YEAR),
--  optional<std::string>("My model"));
--  
--  auto expected = "VDATUM[\"test\",\n"
--  "    ANCHOR[\"My anchor\"]]";
--  
--  EXPECT_EQ(drf->exportToWKT(WKTFormatter::create().get()), expected);
--  
--  auto expected_wtk2_2019 = "DYNAMIC[\n"
--  "    FRAMEEPOCH[2018.5],\n"
--  "    MODEL[\"My model\"]],\n"
--  "VDATUM[\"test\",\n"
--  "    ANCHOR[\"My anchor\"]]";
--  EXPECT_EQ(
--  drf->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  expected_wtk2_2019);      
   end datum_dynamic_vertical_reference_frame;

   procedure datum_datum_ensemble (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto otherDatum = GeodeticReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "other datum"),
--  Ellipsoid::WGS84, optional<std::string>(), PrimeMeridian::GREENWICH);
--  auto ensemble = DatumEnsemble::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "test"),
--  std::vector<DatumNNPtr>{GeodeticReferenceFrame::EPSG_6326, otherDatum},
--  PositionalAccuracy::create("100"));
--  EXPECT_EQ(ensemble->datums().size(), 2U);
--  EXPECT_EQ(ensemble->positionalAccuracy()->value(), "100");
--  EXPECT_THROW(ensemble->exportToWKT(WKTFormatter::create().get()),
--  FormattingException);
--  EXPECT_EQ(
--  ensemble->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  "ENSEMBLE[\"test\",\n"
--  "    MEMBER[\"World Geodetic System 1984\",\n"
--  "        ID[\"EPSG\",6326]],\n"
--  "    MEMBER[\"other datum\"],\n"
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",7030]],\n"
--  "    ENSEMBLEACCURACY[100]]");      
   end datum_datum_ensemble;

   procedure datum_datum_ensemble_vertical (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ensemble = DatumEnsemble::create(
--  PropertyMap(),
--  std::vector<DatumNNPtr>{
--  VerticalReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "vdatum1")),
--  VerticalReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "vdatum2"))},
--  PositionalAccuracy::create("100"));
--  EXPECT_EQ(
--  ensemble->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  "ENSEMBLE[\"unnamed\",\n"
--  "    MEMBER[\"vdatum1\"],\n"
--  "    MEMBER[\"vdatum2\"],\n"
--  "    ENSEMBLEACCURACY[100]]");      
   end datum_datum_ensemble_vertical;

   procedure datum_datum_ensemble_exceptions (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // No datum
--  EXPECT_THROW(DatumEnsemble::create(PropertyMap(), std::vector<DatumNNPtr>{},
--  PositionalAccuracy::create("100")),
--  Exception);
--  
--  // Single datum
--  EXPECT_THROW(DatumEnsemble::create(
--  PropertyMap(),
--  std::vector<DatumNNPtr>{GeodeticReferenceFrame::EPSG_6326},
--  PositionalAccuracy::create("100")),
--  Exception);
--  
--  auto vdatum = VerticalReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "vdatum1"));
--  
--  // Different datum type
--  EXPECT_THROW(
--  DatumEnsemble::create(
--  PropertyMap(),
--  std::vector<DatumNNPtr>{GeodeticReferenceFrame::EPSG_6326, vdatum},
--  PositionalAccuracy::create("100")),
--  Exception);
--  
--  // Different datum type
--  EXPECT_THROW(
--  DatumEnsemble::create(
--  PropertyMap(),
--  std::vector<DatumNNPtr>{vdatum, GeodeticReferenceFrame::EPSG_6326},
--  PositionalAccuracy::create("100")),
--  Exception);
--  
--  // Different ellipsoid
--  EXPECT_THROW(DatumEnsemble::create(
--  PropertyMap(),
--  std::vector<DatumNNPtr>{GeodeticReferenceFrame::EPSG_6326,
--  GeodeticReferenceFrame::EPSG_6267},
--  PositionalAccuracy::create("100")),
--  Exception);
--  
--  // Different prime meridian
--  EXPECT_THROW(DatumEnsemble::create(
--  PropertyMap(),
--  std::vector<DatumNNPtr>{
--  GeodeticReferenceFrame::EPSG_6326,
--  GeodeticReferenceFrame::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY,
--  "other datum"),
--  Ellipsoid::WGS84, optional<std::string>(),
--  PrimeMeridian::PARIS)},
--  PositionalAccuracy::create("100")),
--  Exception);      
   end datum_datum_ensemble_exceptions;

   procedure datum_edatum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto datum = EngineeringDatum::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Engineering datum"),
--  optional<std::string>("my anchor"));
--  
--  auto expected = "EDATUM[\"Engineering datum\",\n"
--  "    ANCHOR[\"my anchor\"]]";
--  
--  EXPECT_EQ(datum->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2).get()),
--  expected);      
   end datum_edatum;

   procedure datum_pdatum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto datum = ParametricDatum::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "Parametric datum"),
--  optional<std::string>("my anchor"));
--  
--  auto expected = "PDATUM[\"Parametric datum\",\n"
--  "    ANCHOR[\"my anchor\"]]";
--  
--  EXPECT_EQ(datum->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2).get()),
--  expected);      
   end datum_pdatum;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, datum_ellipsoid_from_sphere'Access, "datum_ellipsoid_from_sphere");

      Registration.Register_Routine (Test, datum_ellipsoid_non_earth'Access, "datum_ellipsoid_non_earth");

      Registration.Register_Routine (Test, datum_ellipsoid_from_inverse_flattening'Access, "datum_ellipsoid_from_inverse_flattening");

      Registration.Register_Routine (Test, datum_ellipsoid_from_null_inverse_flattening'Access, "datum_ellipsoid_from_null_inverse_flattening");

      Registration.Register_Routine (Test, datum_ellipsoid_from_semi_minor_axis'Access, "datum_ellipsoid_from_semi_minor_axis");

      Registration.Register_Routine (Test, datum_prime_meridian_to_PROJString'Access, "datum_prime_meridian_to_PROJString");

      Registration.Register_Routine (Test, datum_prime_meridian_to_JSON'Access, "datum_prime_meridian_to_JSON");

      Registration.Register_Routine (Test, datum_datum_with_ANCHOR'Access, "datum_datum_with_ANCHOR");

      Registration.Register_Routine (Test, datum_dynamic_geodetic_reference_frame'Access, "datum_dynamic_geodetic_reference_frame");

      Registration.Register_Routine (Test, datum_ellipsoid_to_PROJString'Access, "datum_ellipsoid_to_PROJString");

      Registration.Register_Routine (Test, datum_temporal_datum_WKT2'Access, "datum_temporal_datum_WKT2");

      Registration.Register_Routine (Test, datum_temporal_datum_time_origin_non_ISO8601'Access, "datum_temporal_datum_time_origin_non_ISO8601");

      Registration.Register_Routine (Test, datum_temporal_datum_WKT2_2019'Access, "datum_temporal_datum_WKT2_2019");

      Registration.Register_Routine (Test, datum_dynamic_vertical_reference_frame'Access, "datum_dynamic_vertical_reference_frame");

      Registration.Register_Routine (Test, datum_datum_ensemble'Access, "datum_datum_ensemble");

      Registration.Register_Routine (Test, datum_datum_ensemble_vertical'Access, "datum_datum_ensemble_vertical");

      Registration.Register_Routine (Test, datum_datum_ensemble_exceptions'Access, "datum_datum_ensemble_exceptions");

      Registration.Register_Routine (Test, datum_edatum'Access, "datum_edatum");

      Registration.Register_Routine (Test, datum_pdatum'Access, "datum_pdatum");

   end Register_Tests;

end PROJ.Tests.test_datum;