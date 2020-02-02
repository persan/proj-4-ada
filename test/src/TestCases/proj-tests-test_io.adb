with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body PROJ.Tests.test_io is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure io_wkt_parsing (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  {
--  auto n = WKTNode::createFrom("MYNODE[]");
--  EXPECT_EQ(n->value(), "MYNODE");
--  EXPECT_TRUE(n->children().empty());
--  EXPECT_EQ(n->toString(), "MYNODE");
--  }
--  {
--  auto n = WKTNode::createFrom("  MYNODE  [  ]  ");
--  EXPECT_EQ(n->value(), "MYNODE");
--  EXPECT_TRUE(n->children().empty());
--  }
--  EXPECT_THROW(WKTNode::createFrom(""), ParsingException);
--  EXPECT_THROW(WKTNode::createFrom("x"), ParsingException);
--  EXPECT_THROW(WKTNode::createFrom("x,"), ParsingException);
--  EXPECT_THROW(WKTNode::createFrom("x["), ParsingException);
--  EXPECT_THROW(WKTNode::createFrom("["), ParsingException);
--  
--  {
--  auto n = WKTNode::createFrom("MYNODE[\"x\"]");
--  EXPECT_EQ(n->value(), "MYNODE");
--  ASSERT_EQ(n->children().size(), 1U);
--  EXPECT_EQ(n->children()[0]->value(), "\"x\"");
--  EXPECT_EQ(n->toString(), "MYNODE[\"x\"]");
--  }
--  
--  EXPECT_THROW(WKTNode::createFrom("MYNODE[\"x\""), ParsingException);
--  
--  {
--  auto n = WKTNode::createFrom("MYNODE[  \"x\"   ]");
--  EXPECT_EQ(n->value(), "MYNODE");
--  ASSERT_EQ(n->children().size(), 1U);
--  EXPECT_EQ(n->children()[0]->value(), "\"x\"");
--  }
--  
--  {
--  auto n = WKTNode::createFrom("MYNODE[\"x[\",1]");
--  EXPECT_EQ(n->value(), "MYNODE");
--  ASSERT_EQ(n->children().size(), 2U);
--  EXPECT_EQ(n->children()[0]->value(), "\"x[\"");
--  EXPECT_EQ(n->children()[1]->value(), "1");
--  EXPECT_EQ(n->toString(), "MYNODE[\"x[\",1]");
--  }
--  
--  EXPECT_THROW(WKTNode::createFrom("MYNODE[\"x\","), ParsingException);
--  
--  {
--  auto n = WKTNode::createFrom("A[B[y]]");
--  EXPECT_EQ(n->value(), "A");
--  ASSERT_EQ(n->children().size(), 1U);
--  EXPECT_EQ(n->children()[0]->value(), "B");
--  ASSERT_EQ(n->children()[0]->children().size(), 1U);
--  EXPECT_EQ(n->children()[0]->children()[0]->value(), "y");
--  EXPECT_EQ(n->toString(), "A[B[y]]");
--  }
--  
--  EXPECT_THROW(WKTNode::createFrom("A[B["), ParsingException);
--  
--  std::string str;
--  for (int i = 0; i < 17; i++) {
--  str = "A[" + str + "]";
--  }
--  EXPECT_THROW(WKTNode::createFrom(str), ParsingException);
--  
--  {
--  auto wkt = "A[\"a\",B[\"b\",C[\"c\"]],D[\"d\"]]";
--  EXPECT_EQ(WKTNode::createFrom(wkt)->toString(), wkt);
--  }      
   end io_wkt_parsing;

   procedure io_wkt_parsing_with_parenthesis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto n = WKTNode::createFrom("A(\"x\",B(\"y\"))");
--  EXPECT_EQ(n->toString(), "A[\"x\",B[\"y\"]]");      
   end io_wkt_parsing_with_parenthesis;

   procedure io_wkt_parsing_with_double_quotes_inside (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto n = WKTNode::createFrom("A[\"xy\"\"z\"]");
--  EXPECT_EQ(n->children()[0]->value(), "\"xy\"z\"");
--  EXPECT_EQ(n->toString(), "A[\"xy\"\"z\"]");
--  
--  EXPECT_THROW(WKTNode::createFrom("A[\"x\""), ParsingException);      
   end io_wkt_parsing_with_double_quotes_inside;

   procedure io_wkt_parsing_with_printed_quotes (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  static const std::string startPrintedQuote("\xE2\x80\x9C");
--  static const std::string endPrintedQuote("\xE2\x80\x9D");
--  
--  auto n = WKTNode::createFrom("A[" + startPrintedQuote + "x" +
--  endPrintedQuote + "]");
--  EXPECT_EQ(n->children()[0]->value(), "\"x\"");
--  EXPECT_EQ(n->toString(), "A[\"x\"]");      
   end io_wkt_parsing_with_printed_quotes;

   procedure wkt_parse_sphere (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "ELLIPSOID[\"Sphere\",6378137,0,LENGTHUNIT[\"metre\",1]]");
--  auto ellipsoid = nn_dynamic_pointer_cast<Ellipsoid>(obj);
--  ASSERT_TRUE(ellipsoid != nullptr);
--  EXPECT_TRUE(ellipsoid->isSphere());      
   end wkt_parse_sphere;

   procedure wkt_parse_datum_with_ANCHOR (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "DATUM[\"WGS_1984 with anchor\",\n"
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "        LENGTHUNIT[\"metre\",1,\n"
--  "            ID[\"EPSG\",9001]],\n"
--  "        ID[\"EPSG\",7030]],\n"
--  "    ANCHOR[\"My anchor\"]]");
--  auto datum = nn_dynamic_pointer_cast<GeodeticReferenceFrame>(obj);
--  ASSERT_TRUE(datum != nullptr);
--  EXPECT_EQ(datum->ellipsoid()->celestialBody(), "Earth");
--  EXPECT_EQ(datum->primeMeridian()->nameStr(), "Greenwich");
--  auto anchor = datum->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "My anchor");      
   end wkt_parse_datum_with_ANCHOR;

   procedure wkt_parse_datum_no_pm_not_earth (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT("DATUM[\"unnamed\",\n"
--  "    ELLIPSOID[\"unnamed\",1,0,\n"
--  "        LENGTHUNIT[\"metre\",1]]]");
--  auto datum = nn_dynamic_pointer_cast<GeodeticReferenceFrame>(obj);
--  ASSERT_TRUE(datum != nullptr);
--  EXPECT_EQ(datum->ellipsoid()->celestialBody(), "Non-Earth body");
--  EXPECT_EQ(datum->primeMeridian()->nameStr(), "Reference meridian");      
   end wkt_parse_datum_no_pm_not_earth;

   procedure wkt_parse_dynamic_geodetic_reference_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEOGCRS[\"WGS 84 (G1762)\","
--  "DYNAMIC[FRAMEEPOCH[2005.0]],"
--  "TRF[\"World Geodetic System 1984 (G1762)\","
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563],"
--  "    ANCHOR[\"My anchor\"]],"
--  "CS[ellipsoidal,3],"
--  "    AXIS[\"(lat)\",north,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"(lon)\",east,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"ellipsoidal height (h)\",up,LENGTHUNIT[\"metre\",1.0]]"
--  "]");
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto dgrf =
--  std::dynamic_pointer_cast<DynamicGeodeticReferenceFrame>(crs->datum());
--  ASSERT_TRUE(dgrf != nullptr);
--  auto anchor = dgrf->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "My anchor");
--  EXPECT_TRUE(dgrf->frameReferenceEpoch() ==
--  Measure(2005.0, UnitOfMeasure::YEAR));
--  auto model = dgrf->deformationModelName();
--  EXPECT_TRUE(!model.has_value());      
   end wkt_parse_dynamic_geodetic_reference_frame;

   procedure wkt_parse_dynamic_geodetic_reference_frame_with_model (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEOGCRS[\"WGS 84 (G1762)\","
--  "DYNAMIC[FRAMEEPOCH[2005.0],MODEL[\"my_model\"]],"
--  "TRF[\"World Geodetic System 1984 (G1762)\","
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563],"
--  "    ANCHOR[\"My anchor\"]],"
--  "CS[ellipsoidal,3],"
--  "    AXIS[\"(lat)\",north,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"(lon)\",east,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"ellipsoidal height (h)\",up,LENGTHUNIT[\"metre\",1.0]]"
--  "]");
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto dgrf =
--  std::dynamic_pointer_cast<DynamicGeodeticReferenceFrame>(crs->datum());
--  ASSERT_TRUE(dgrf != nullptr);
--  auto anchor = dgrf->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "My anchor");
--  EXPECT_TRUE(dgrf->frameReferenceEpoch() ==
--  Measure(2005.0, UnitOfMeasure::YEAR));
--  auto model = dgrf->deformationModelName();
--  EXPECT_TRUE(model.has_value());
--  EXPECT_EQ(*model, "my_model");      
   end wkt_parse_dynamic_geodetic_reference_frame_with_model;

   procedure wkt_parse_dynamic_geodetic_reference_frame_with_velocitygrid (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEOGCRS[\"WGS 84 (G1762)\","
--  "DYNAMIC[FRAMEEPOCH[2005.0],VELOCITYGRID[\"my_model\"]],"
--  "TRF[\"World Geodetic System 1984 (G1762)\","
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563],"
--  "    ANCHOR[\"My anchor\"]],"
--  "CS[ellipsoidal,3],"
--  "    AXIS[\"(lat)\",north,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"(lon)\",east,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"ellipsoidal height (h)\",up,LENGTHUNIT[\"metre\",1.0]]"
--  "]");
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto dgrf =
--  std::dynamic_pointer_cast<DynamicGeodeticReferenceFrame>(crs->datum());
--  ASSERT_TRUE(dgrf != nullptr);
--  auto anchor = dgrf->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "My anchor");
--  EXPECT_TRUE(dgrf->frameReferenceEpoch() ==
--  Measure(2005.0, UnitOfMeasure::YEAR));
--  auto model = dgrf->deformationModelName();
--  EXPECT_TRUE(model.has_value());
--  EXPECT_EQ(*model, "my_model");      
   end wkt_parse_dynamic_geodetic_reference_frame_with_velocitygrid;

   procedure wkt_parse_geogcrs_with_ensemble (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEOGCRS[\"WGS 84\","
--  "ENSEMBLE[\"WGS 84 ensemble\","
--  "    MEMBER[\"WGS 84 (TRANSIT)\"],"
--  "    MEMBER[\"WGS 84 (G730)\"],"
--  "    MEMBER[\"WGS 84 (G834)\"],"
--  "    MEMBER[\"WGS 84 (G1150)\"],"
--  "    MEMBER[\"WGS 84 (G1674)\"],"
--  "    MEMBER[\"WGS 84 (G1762)\"],"
--  "    ELLIPSOID[\"WGS "
--  "84\",6378137,298.2572236,LENGTHUNIT[\"metre\",1.0]],"
--  "    ENSEMBLEACCURACY[2]"
--  "],"
--  "CS[ellipsoidal,3],"
--  "    AXIS[\"(lat)\",north,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"(lon)\",east,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"ellipsoidal height (h)\",up,LENGTHUNIT[\"metre\",1.0]]"
--  "]");
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  ASSERT_TRUE(crs->datum() == nullptr);
--  ASSERT_TRUE(crs->datumEnsemble() != nullptr);
--  EXPECT_EQ(crs->datumEnsemble()->datums().size(), 6U);      
   end wkt_parse_geogcrs_with_ensemble;

   procedure wkt_parse_invalid_geogcrs_with_ensemble (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "GEOGCRS[\"WGS 84\","
--  "ENSEMBLE[\"WGS 84 ensemble\","
--  "    MEMBER[\"WGS 84 (TRANSIT)\"],"
--  "    MEMBER[\"WGS 84 (G730)\"],"
--  "    MEMBER[\"WGS 84 (G834)\"],"
--  "    MEMBER[\"WGS 84 (G1150)\"],"
--  "    MEMBER[\"WGS 84 (G1674)\"],"
--  "    MEMBER[\"WGS 84 (G1762)\"],"
--  "    ENSEMBLEACCURACY[2]"
--  "],"
--  "CS[ellipsoidal,3],"
--  "    AXIS[\"(lat)\",north,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"(lon)\",east,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"ellipsoidal height (h)\",up,LENGTHUNIT[\"metre\",1.0]]"
--  "]";
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);      
   end wkt_parse_invalid_geogcrs_with_ensemble;

   procedure wkt_parse_wkt1_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEOGCS[\"WGS 84\","
--  "    DATUM[\"WGS_1984\","
--  "        SPHEROID[\"WGS 84\",6378137,298.257223563,"
--  "            AUTHORITY[\"EPSG\",\"7030\"]],"
--  "        AUTHORITY[\"EPSG\",\"6326\"]],"
--  "    PRIMEM[\"Greenwich\",0,"
--  "        AUTHORITY[\"EPSG\",\"8901\"]],"
--  "    UNIT[\"degree\",0.0174532925199433,"
--  "        AUTHORITY[\"EPSG\",\"9122\"]],"
--  "    AUTHORITY[\"EPSG\",\"4326\"]]");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs, false /* longlat order */);      
   end wkt_parse_wkt1_EPSG_4326;

   procedure wkt_parse_wkt1_EPSG_4267 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(
--  "GEOGCS[\"NAD27\","
--  "    DATUM[\"North_American_Datum_1927\","
--  "        SPHEROID[\"Clarke 1866\",6378206.4,294.978698213898,"
--  "            AUTHORITY[\"EPSG\",\"7008\"]],"
--  "        AUTHORITY[\"EPSG\",\"6267\"]],"
--  "    PRIMEM[\"Greenwich\",0,"
--  "        AUTHORITY[\"EPSG\",\"8901\"]],"
--  "    UNIT[\"degree\",0.0174532925199433,"
--  "        AUTHORITY[\"EPSG\",\"9122\"]],"
--  "    AUTHORITY[\"EPSG\",\"4267\"]]");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto datum = crs->datum();
--  ASSERT_EQ(datum->identifiers().size(), 1U);
--  EXPECT_EQ(datum->identifiers()[0]->code(), "6267");
--  EXPECT_EQ(*(datum->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(datum->nameStr(), "North American Datum 1927");      
   end wkt_parse_wkt1_EPSG_4267;

   procedure wkt_parse_wkt1_EPSG_4807_grad_mess (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEOGCS[\"NTF (Paris)\",\n"
--  "    DATUM[\"Nouvelle_Triangulation_Francaise_Paris\",\n"
--  "        SPHEROID[\"Clarke 1880 (IGN)\",6378249.2,293.466021293627,\n"
--  "            AUTHORITY[\"EPSG\",\"6807\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"6807\"]],\n"
--  /* WKT1_GDAL weirdness: PRIMEM is converted to degree */
--  "    PRIMEM[\"Paris\",2.33722917,\n"
--  "        AUTHORITY[\"EPSG\",\"8903\"]],\n"
--  "    UNIT[\"grad\",0.015707963267949,\n"
--  "        AUTHORITY[\"EPSG\",\"9105\"]],\n"
--  "    AXIS[\"latitude\",NORTH],\n"
--  "    AXIS[\"longitude\",EAST],\n"
--  "    AUTHORITY[\"EPSG\",\"4807\"]]");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto datum = crs->datum();
--  auto primem = datum->primeMeridian();
--  EXPECT_EQ(primem->longitude().unit(), UnitOfMeasure::GRAD);
--  // Check that we have corrected the value that was in degree into grad.
--  EXPECT_EQ(primem->longitude().value(), 2.5969213);      
   end wkt_parse_wkt1_EPSG_4807_grad_mess;

   procedure wkt_parse_wkt1_geographic_old_datum_name_from_EPSG_code (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "GEOGCS[\"S-JTSK (Ferro)\",\n"
--  "    "
--  "DATUM[\"System_Jednotne_Trigonometricke_Site_Katastralni_Ferro\",\n"
--  "        SPHEROID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "            AUTHORITY[\"EPSG\",\"7004\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"6818\"]],\n"
--  "    PRIMEM[\"Ferro\",-17.66666666666667,\n"
--  "       AUTHORITY[\"EPSG\",\"8909\"]],\n"
--  "    UNIT[\"degree\",0.0174532925199433,\n"
--  "        AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "    AUTHORITY[\"EPSG\",\"4818\"]]";
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto datum = crs->datum();
--  EXPECT_EQ(
--  datum->nameStr(),
--  "System of the Unified Trigonometrical Cadastral Network (Ferro)");      
   end wkt_parse_wkt1_geographic_old_datum_name_from_EPSG_code;

   procedure wkt_parse_wkt1_geographic_old_datum_name_without_EPSG_code (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "GEOGCS[\"S-JTSK (Ferro)\",\n"
--  "    "
--  "DATUM[\"System_Jednotne_Trigonometricke_Site_Katastralni_Ferro\",\n"
--  "        SPHEROID[\"Bessel 1841\",6377397.155,299.1528128]],\n"
--  "    PRIMEM[\"Ferro\",-17.66666666666667],\n"
--  "    UNIT[\"degree\",0.0174532925199433]]";
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto datum = crs->datum();
--  EXPECT_EQ(
--  datum->nameStr(),
--  "System of the Unified Trigonometrical Cadastral Network (Ferro)");      
   end wkt_parse_wkt1_geographic_old_datum_name_without_EPSG_code;

   procedure wkt_parse_wkt1_geographic_deprecated (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOGCS[\"SAD69 (deprecated)\",\n"
--  "    DATUM[\"South_American_Datum_1969\",\n"
--  "        SPHEROID[\"GRS 1967\",6378160,298.247167427,\n"
--  "            AUTHORITY[\"EPSG\",\"7036\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"6291\"]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "    UNIT[\"degree\",0.0174532925199433,\n"
--  "        AUTHORITY[\"EPSG\",\"9108\"]],\n"
--  "    AUTHORITY[\"EPSG\",\"4291\"]]";
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "SAD69");
--  EXPECT_TRUE(crs->isDeprecated());      
   end wkt_parse_wkt1_geographic_deprecated;

   procedure wkt_parse_wkt1_geographic_with_PROJ4_extension (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOGCS[\"WGS 84\",\n"
--  "    DATUM[\"unknown\",\n"
--  "        SPHEROID[\"WGS84\",6378137,298.257223563]],\n"
--  "    PRIMEM[\"Greenwich\",0],\n"
--  "    UNIT[\"degree\",0.0174532925199433],\n"
--  "    EXTENSION[\"PROJ4\",\"+proj=longlat +foo=bar +wktext\"]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  wkt);
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=longlat +foo=bar +wktext +type=crs");
--  
--  EXPECT_TRUE(
--  crs->exportToWKT(WKTFormatter::create().get()).find("EXTENSION") ==
--  std::string::npos);
--  
--  EXPECT_TRUE(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_ESRI).get())
--  .find("EXTENSION") == std::string::npos);      
   end wkt_parse_wkt1_geographic_with_PROJ4_extension;

   procedure wkt_parse_wkt1_geocentric_with_PROJ4_extension (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOCCS[\"WGS 84\",\n"
--  "    DATUM[\"unknown\",\n"
--  "        SPHEROID[\"WGS84\",6378137,298.257223563]],\n"
--  "    PRIMEM[\"Greenwich\",0],\n"
--  "    UNIT[\"Meter\",1],\n"
--  "    AXIS[\"Geocentric X\",OTHER],\n"
--  "    AXIS[\"Geocentric Y\",OTHER],\n"
--  "    AXIS[\"Geocentric Z\",NORTH],\n"
--  "    EXTENSION[\"PROJ4\",\"+proj=geocent +foo=bar +wktext\"]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  wkt);
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=geocent +foo=bar +wktext +type=crs");
--  
--  EXPECT_TRUE(
--  crs->exportToWKT(WKTFormatter::create().get()).find("EXTENSION") ==
--  std::string::npos);      
   end wkt_parse_wkt1_geocentric_with_PROJ4_extension;

   procedure wkt_parse_wkt2_GEODCRS_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT("GEODCRS" + contentWKT2_EPSG_4326);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs);      
   end wkt_parse_wkt2_GEODCRS_EPSG_4326;

   procedure wkt_parse_wkt2_long_GEODETICCRS_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT("GEODETICCRS" + contentWKT2_EPSG_4326);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs);      
   end wkt_parse_wkt2_long_GEODETICCRS_EPSG_4326;

   procedure wkt_parse_wkt2_2019_GEOGCRS_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT("GEOGCRS" + contentWKT2_EPSG_4326);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs);      
   end wkt_parse_wkt2_2019_GEOGCRS_EPSG_4326;

   procedure wkt_parse_wkt2_2019_long_GEOGRAPHICCRS_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  WKTParser().createFromWKT("GEOGRAPHICCRS" + contentWKT2_EPSG_4326);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs);      
   end wkt_parse_wkt2_2019_long_GEOGRAPHICCRS_EPSG_4326;

   procedure wkt_parse_wkt2_simplified_EPSG_4326 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEODCRS[\"WGS 84\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"latitude (lat)\",north],\n" // test "name
--  // (abbreviation)"
--  "        AXIS[\"longitude (lon)\",east],\n"
--  "        UNIT[\"degree\",0.0174532925199433],\n"
--  "    ID[\"EPSG\",4326]]");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs, true /* latlong */, false /* no EPSG codes */);      
   end wkt_parse_wkt2_simplified_EPSG_4326;

   procedure wkt_parse_wkt2_GEODETICDATUM (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEODCRS[\"WGS 84\",\n"
--  "    GEODETICDATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"(lat)\",north],\n" // test "(abbreviation)"
--  "        AXIS[\"(lon)\",east],\n"
--  "        UNIT[\"degree\",0.0174532925199433],\n"
--  "    ID[\"EPSG\",4326]]");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs, true /* latlong */, false /* no EPSG codes */);      
   end wkt_parse_wkt2_GEODETICDATUM;

   procedure wkt_parse_wkt2_TRF (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEODCRS[\"WGS 84\",\n"
--  "    TRF[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"latitude\",north],\n"
--  "        AXIS[\"longitude\",east],\n"
--  "        UNIT[\"degree\",0.0174532925199433],\n"
--  "    ID[\"EPSG\",4326]]");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4326(crs, true /* latlong */, false /* no EPSG codes */);      
   end wkt_parse_wkt2_TRF;

   procedure wkt_parse_wkt2_EPSG_4979 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "GEODCRS[\"WGS 84\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[ellipsoidal,3],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            UNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            UNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"ellipsoidal height\",up,\n"
--  "            UNIT[\"metre\",1]],\n"
--  "    ID[\"EPSG\",4979]]");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkEPSG_4979(crs);      
   end wkt_parse_wkt2_EPSG_4979;

   procedure wkt_parse_wkt2_geocentric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEODCRS[\"WGS 84 (geocentric)\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]],\n"
--  "            ID[\"EPSG\",7030]],\n"
--  "        ID[\"EPSG\",6326]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "            ID[\"EPSG\",9122]],\n"
--  "        ID[\"EPSG\",8901]],\n"
--  "    CS[Cartesian,3],\n"
--  "        AXIS[\"(X)\",geocentricX,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(Y)\",geocentricY,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(Z)\",geocentricZ,\n"
--  "            ORDER[3],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "    ID[\"EPSG\",4328]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkGeocentric(crs);      
   end wkt_parse_wkt2_geocentric;

   procedure wkt_parse_wkt2_simplified_geocentric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEODCRS[\"WGS 84 (geocentric)\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[Cartesian,3],\n"
--  "        AXIS[\"(X)\",geocentricX],\n"
--  "        AXIS[\"(Y)\",geocentricY],\n"
--  "        AXIS[\"(Z)\",geocentricZ],\n"
--  "        UNIT[\"metre\",1],\n"
--  "    ID[\"EPSG\",4328]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkGeocentric(crs);      
   end wkt_parse_wkt2_simplified_geocentric;

   procedure wkt_parse_wkt1_geocentric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOCCS[\"WGS 84 (geocentric)\",\n"
--  "    DATUM[\"WGS_1984\",\n"
--  "        SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "            AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AXIS[\"Geocentric X\",OTHER],\n"
--  "    AXIS[\"Geocentric Y\",OTHER],\n"
--  "    AXIS[\"Geocentric Z\",NORTH],\n"
--  "    AUTHORITY[\"EPSG\",\"4328\"]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkGeocentric(crs);      
   end wkt_parse_wkt1_geocentric;

   procedure wkt_parse_wkt1_geocentric_with_z_OTHER (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOCCS[\"WGS 84 (geocentric)\",\n"
--  "    DATUM[\"WGS_1984\",\n"
--  "        SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "            AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "        AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AXIS[\"Geocentric X\",OTHER],\n"
--  "    AXIS[\"Geocentric Y\",OTHER],\n"
--  "    AXIS[\"Geocentric Z\",OTHER],\n"
--  "    AUTHORITY[\"EPSG\",\"4328\"]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkGeocentric(crs);      
   end wkt_parse_wkt1_geocentric_with_z_OTHER;

   procedure wkt_parse_wkt1_projected (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"WGS 84 / UTM zone 31N\",\n"
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
--  "    PROJECTION[\"Transverse_Mercator\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",0],\n"
--  "    PARAMETER[\"central_meridian\",3],\n"
--  "    PARAMETER[\"scale_factor\",0.9996],\n"
--  "    PARAMETER[\"false_easting\",500000],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AXIS[\"(E)\",East],\n" // should normally be uppercase
--  "    AXIS[\"(N)\",NORTH],\n"
--  "    AUTHORITY[\"EPSG\",\"32631\"]]";
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkProjected(crs);
--  
--  EXPECT_TRUE(!crs->baseCRS()->identifiers().empty());      
   end wkt_parse_wkt1_projected;

   procedure wkt_parse_wkt1_projected_no_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"WGS 84 / UTM zone 31N\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "        AXIS[\"latitude\",NORTH],\n"
--  "        AXIS[\"longitude\",EAST],\n"
--  "        AUTHORITY[\"EPSG\",\"4326\"]],\n"
--  "    PROJECTION[\"Transverse_Mercator\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",0],\n"
--  "    PARAMETER[\"central_meridian\",3],\n"
--  "    PARAMETER[\"scale_factor\",0.9996],\n"
--  "    PARAMETER[\"false_easting\",500000],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AUTHORITY[\"EPSG\",\"32631\"]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkProjected(crs);      
   end wkt_parse_wkt1_projected_no_axis;

   procedure wkt_parse_wkt1_projected_wrong_axis_geogcs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"WGS 84 / UTM zone 31N\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "        AXIS[\"longitude\",EAST],\n"
--  "        AXIS[\"latitude\",NORTH],\n"
--  "        AUTHORITY[\"EPSG\",\"4326\"]],\n"
--  "    PROJECTION[\"Transverse_Mercator\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",0],\n"
--  "    PARAMETER[\"central_meridian\",3],\n"
--  "    PARAMETER[\"scale_factor\",0.9996],\n"
--  "    PARAMETER[\"false_easting\",500000],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AUTHORITY[\"EPSG\",\"32631\"]]";
--  WKTParser parser;
--  parser.setStrict(false).attachDatabaseContext(DatabaseContext::create());
--  auto obj = parser.createFromWKT(wkt);
--  EXPECT_TRUE(!parser.warningList().empty());
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_TRUE(crs->baseCRS()->identifiers().empty());
--  
--  auto cs = crs->baseCRS()->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 2U);
--  EXPECT_EQ(cs->axisList()[0]->direction(), AxisDirection::EAST);
--  EXPECT_EQ(cs->axisList()[1]->direction(), AxisDirection::NORTH);      
   end wkt_parse_wkt1_projected_wrong_axis_geogcs;

   procedure wkt_parse_wkt1_projected_with_PROJ4_extension (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unnamed\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"unknown\",\n"
--  "            SPHEROID[\"WGS84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"central_meridian\",0],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",0],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"Meter\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH],\n"
--  "    EXTENSION[\"PROJ4\",\"+proj=merc +wktext\"]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  wkt);
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=merc +wktext +type=crs");
--  
--  EXPECT_TRUE(
--  crs->exportToWKT(WKTFormatter::create().get()).find("EXTENSION") ==
--  std::string::npos);
--  
--  EXPECT_TRUE(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_ESRI).get())
--  .find("EXTENSION") == std::string::npos);      
   end wkt_parse_wkt1_projected_with_PROJ4_extension;

   procedure wkt_parse_wkt1_Mercator_1SP_with_latitude_origin_0 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unnamed\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"unknown\",\n"
--  "            SPHEROID[\"WGS84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",0],\n"
--  "    PARAMETER[\"central_meridian\",0],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",0],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"Meter\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto got_wkt = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  EXPECT_TRUE(got_wkt.find("Mercator_1SP") != std::string::npos) << got_wkt;      
   end wkt_parse_wkt1_Mercator_1SP_with_latitude_origin_0;

   procedure wkt_parse_wkt1_Mercator_1SP_without_scale_factor (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // See https://github.com/OSGeo/PROJ/issues/1700
--  auto wkt = "PROJCS[\"unnamed\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"unknown\",\n"
--  "            SPHEROID[\"WGS84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Mercator_1SP\"],\n"
--  "    PARAMETER[\"central_meridian\",0],\n"
--  "    PARAMETER[\"false_easting\",0],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"Meter\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH]]";
--  WKTParser parser;
--  parser.setStrict(false).attachDatabaseContext(DatabaseContext::create());
--  auto obj = parser.createFromWKT(wkt);
--  EXPECT_TRUE(!parser.warningList().empty());
--  
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto got_wkt = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  EXPECT_TRUE(got_wkt.find("PARAMETER[\"scale_factor\",1]") !=
--  std::string::npos)
--  << got_wkt;
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc +lon_0=0 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +units=m "
--  "+no_defs +type=crs");      
   end wkt_parse_wkt1_Mercator_1SP_without_scale_factor;

   procedure wkt_parse_wkt1_krovak_south_west (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "PROJCS[\"S-JTSK / Krovak\","
--  "    GEOGCS[\"S-JTSK\","
--  "        DATUM[\"System_Jednotne_Trigonometricke_Site_Katastralni\","
--  "            SPHEROID[\"Bessel 1841\",6377397.155,299.1528128,"
--  "                AUTHORITY[\"EPSG\",\"7004\"]],"
--  "            AUTHORITY[\"EPSG\",\"6156\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],"
--  "        AUTHORITY[\"EPSG\",\"4156\"]],"
--  "    PROJECTION[\"Krovak\"],"
--  "    PARAMETER[\"latitude_of_center\",49.5],"
--  "    PARAMETER[\"longitude_of_center\",24.83333333333333],"
--  "    PARAMETER[\"azimuth\",30.28813972222222],"
--  "    PARAMETER[\"pseudo_standard_parallel_1\",78.5],"
--  "    PARAMETER[\"scale_factor\",0.9999],"
--  "    PARAMETER[\"false_easting\",0],"
--  "    PARAMETER[\"false_northing\",0],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"X\",SOUTH],"
--  "    AXIS[\"Y\",WEST],"
--  "    AUTHORITY[\"EPSG\",\"5513\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->derivingConversion()->method()->nameStr(), "Krovak");
--  
--  auto expected_wkt2 =
--  "PROJCRS[\"S-JTSK / Krovak\",\n"
--  "    BASEGEODCRS[\"S-JTSK\",\n"
--  "        DATUM[\"System_Jednotne_Trigonometricke_Site_Katastralni\",\n"
--  "            ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    CONVERSION[\"unnamed\",\n"
--  "        METHOD[\"Krovak\",\n"
--  "            ID[\"EPSG\",9819]],\n"
--  "        PARAMETER[\"Latitude of projection centre\",49.5,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8811]],\n"
--  "        PARAMETER[\"Longitude of origin\",24.8333333333333,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8833]],\n"
--  "        PARAMETER[\"Co-latitude of cone axis\",30.2881397222222,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",1036]],\n"
--  "        PARAMETER[\"Latitude of pseudo standard parallel\",78.5,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8818]],\n"
--  "        PARAMETER[\"Scale factor on pseudo standard "
--  "parallel\",0.9999,\n"
--  "            SCALEUNIT[\"unity\",1],\n"
--  "            ID[\"EPSG\",8819]],\n"
--  "        PARAMETER[\"False easting\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8807]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"x\",south,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        AXIS[\"y\",west,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "    ID[\"EPSG\",5513]]";
--  
--  EXPECT_EQ(crs->exportToWKT(WKTFormatter::create().get()), expected_wkt2);
--  
--  auto projString =
--  crs->exportToPROJString(PROJStringFormatter::create().get());
--  auto expectedPROJString = "+proj=krovak +axis=swu +lat_0=49.5 "
--  "+lon_0=24.8333333333333 +alpha=30.2881397222222 "
--  "+k=0.9999 +x_0=0 +y_0=0 +ellps=bessel +units=m "
--  "+no_defs +type=crs";
--  EXPECT_EQ(projString, expectedPROJString);
--  
--  obj = PROJStringParser().createFromPROJString(projString);
--  crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto wkt2 = crs->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(wkt2.find("METHOD[\"Krovak\"") != std::string::npos) << wkt2;
--  EXPECT_TRUE(
--  wkt2.find("PARAMETER[\"Latitude of pseudo standard parallel\",78.5,") !=
--  std::string::npos)
--  << wkt2;
--  EXPECT_TRUE(
--  wkt2.find("PARAMETER[\"Co-latitude of cone axis\",30.2881397222222,") !=
--  std::string::npos)
--  << wkt2;
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  expectedPROJString);
--  
--  obj = PROJStringParser().createFromPROJString(
--  "+type=crs +proj=pipeline +step +proj=unitconvert +xy_in=deg "
--  "+xy_out=rad "
--  "+step +proj=krovak +lat_0=49.5 "
--  "+lon_0=24.8333333333333 +alpha=30.2881397222222 "
--  "+k=0.9999 +x_0=0 +y_0=0 +ellps=bessel "
--  "+step +proj=axisswap +order=-2,-1");
--  crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  wkt2 = crs->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(wkt2.find("METHOD[\"Krovak\"") != std::string::npos) << wkt2;      
   end wkt_parse_wkt1_krovak_south_west;

   procedure wkt_parse_wkt1_krovak_north_oriented (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "PROJCS[\"S-JTSK / Krovak East North\","
--  "    GEOGCS[\"S-JTSK\","
--  "        DATUM[\"System_Jednotne_Trigonometricke_Site_Katastralni\","
--  "            SPHEROID[\"Bessel 1841\",6377397.155,299.1528128,"
--  "                AUTHORITY[\"EPSG\",\"7004\"]],"
--  "            AUTHORITY[\"EPSG\",\"6156\"]],"
--  "        PRIMEM[\"Greenwich\",0,"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],"
--  "        UNIT[\"degree\",0.0174532925199433,"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],"
--  "        AUTHORITY[\"EPSG\",\"4156\"]],"
--  "    PROJECTION[\"Krovak\"],"
--  "    PARAMETER[\"latitude_of_center\",49.5],"
--  "    PARAMETER[\"longitude_of_center\",24.83333333333333],"
--  "    PARAMETER[\"azimuth\",30.28813972222222],"
--  "    PARAMETER[\"pseudo_standard_parallel_1\",78.5],"
--  "    PARAMETER[\"scale_factor\",0.9999],"
--  "    PARAMETER[\"false_easting\",0],"
--  "    PARAMETER[\"false_northing\",0],"
--  "    UNIT[\"metre\",1,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"X\",EAST],"
--  "    AXIS[\"Y\",NORTH],"
--  "    AUTHORITY[\"EPSG\",\"5514\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->derivingConversion()->method()->nameStr(),
--  "Krovak (North Orientated)");
--  
--  EXPECT_EQ(
--  crs->exportToWKT(WKTFormatter::create().get()),
--  "PROJCRS[\"S-JTSK / Krovak East North\",\n"
--  "    BASEGEODCRS[\"S-JTSK\",\n"
--  "        DATUM[\"System_Jednotne_Trigonometricke_Site_Katastralni\",\n"
--  "            ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    CONVERSION[\"unnamed\",\n"
--  "        METHOD[\"Krovak (North Orientated)\",\n"
--  "            ID[\"EPSG\",1041]],\n"
--  "        PARAMETER[\"Latitude of projection centre\",49.5,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8811]],\n"
--  "        PARAMETER[\"Longitude of origin\",24.8333333333333,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8833]],\n"
--  "        PARAMETER[\"Co-latitude of cone axis\",30.2881397222222,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",1036]],\n"
--  "        PARAMETER[\"Latitude of pseudo standard parallel\",78.5,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8818]],\n"
--  "        PARAMETER[\"Scale factor on pseudo standard "
--  "parallel\",0.9999,\n"
--  "            SCALEUNIT[\"unity\",1],\n"
--  "            ID[\"EPSG\",8819]],\n"
--  "        PARAMETER[\"False easting\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8807]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"x\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        AXIS[\"y\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "    ID[\"EPSG\",5514]]");
--  
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=krovak +lat_0=49.5 +lon_0=24.8333333333333 "
--  "+alpha=30.2881397222222 +k=0.9999 +x_0=0 +y_0=0 +ellps=bessel "
--  "+units=m +no_defs +type=crs");      
   end wkt_parse_wkt1_krovak_north_oriented;

   procedure wkt_parse_wkt1_polar_stereographic_latitude_of_origin_70 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unknown\",\n"
--  "    GEOGCS[\"unknown\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",70],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto projString = crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get());
--  auto expectedPROJString =
--  "+proj=stere +lat_0=90 +lat_ts=70 +lon_0=2 "
--  "+x_0=3 +y_0=4 +datum=WGS84 +units=m +no_defs +type=crs";
--  EXPECT_EQ(projString, expectedPROJString);
--  
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->nameStr(), "Easting");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->direction(),
--  AxisDirection::SOUTH);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->nameStr(), "Northing");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->direction(),
--  AxisDirection::SOUTH);      
   end wkt_parse_wkt1_polar_stereographic_latitude_of_origin_70;

   procedure wkt_parse_wkt1_polar_stereographic_latitude_of_origin_minus_70 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unknown\",\n"
--  "    GEOGCS[\"unknown\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-70],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->nameStr(), "Easting");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->direction(),
--  AxisDirection::NORTH);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->nameStr(), "Northing");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->direction(),
--  AxisDirection::NORTH);      
   end wkt_parse_wkt1_polar_stereographic_latitude_of_origin_minus_70;

   procedure wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unknown\",\n"
--  "    GEOGCS[\"unknown\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",90],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto projString = crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get());
--  auto expectedPROJString =
--  "+proj=stere +lat_0=90 +lat_ts=90 +lon_0=2 "
--  "+x_0=3 +y_0=4 +datum=WGS84 +units=m +no_defs +type=crs";
--  EXPECT_EQ(projString, expectedPROJString);      
   end wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90;

   procedure wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90_scale_factor_1 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unknown\",\n"
--  "    GEOGCS[\"unknown\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",90],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",1],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto projString = crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get());
--  auto expectedPROJString =
--  "+proj=stere +lat_0=90 +lat_ts=90 +lon_0=2 "
--  "+x_0=3 +y_0=4 +datum=WGS84 +units=m +no_defs +type=crs";
--  EXPECT_EQ(projString, expectedPROJString);      
   end wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90_scale_factor_1;

   procedure wkt_parse_wkt1_polar_stereographic_scale_factor (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unknown\",\n"
--  "    GEOGCS[\"unknown\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]]],\n"
--  "    PROJECTION[\"Polar_Stereographic\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",90],\n"
--  "    PARAMETER[\"central_meridian\",2],\n"
--  "    PARAMETER[\"scale_factor\",0.99],\n"
--  "    PARAMETER[\"false_easting\",3],\n"
--  "    PARAMETER[\"false_northing\",4],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto projString = crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get());
--  auto expectedPROJString = "+proj=stere +lat_0=90 +lon_0=2 +k=0.99 +x_0=3 "
--  "+y_0=4 +datum=WGS84 +units=m +no_defs +type=crs";
--  EXPECT_EQ(projString, expectedPROJString);      
   end wkt_parse_wkt1_polar_stereographic_scale_factor;

   procedure wkt_parse_wkt1_Spherical_Cross_Track_Height (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"unknown\",\n"
--  "    GEOGCS[\"unknown\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]]],\n"
--  "    PROJECTION[\"Spherical_Cross_Track_Height\"],\n"
--  "    PARAMETER[\"peg_point_latitude\",1],\n"
--  "    PARAMETER[\"peg_point_longitude\",2],\n"
--  "    PARAMETER[\"peg_point_heading\",3],\n"
--  "    PARAMETER[\"peg_point_height\",4],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto projString = crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get());
--  auto expectedPROJString = "+proj=sch +plat_0=1 +plon_0=2 +phdg_0=3 +h_0=4 "
--  "+datum=WGS84 +units=m +no_defs +type=crs";
--  EXPECT_EQ(projString, expectedPROJString);      
   end wkt_parse_wkt1_Spherical_Cross_Track_Height;

   procedure wkt_parse_wkt2_projected (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCRS[\"WGS 84 / UTM zone 31N\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1,\n"
--  "                    ID[\"EPSG\",9001]],\n"
--  "                ID[\"EPSG\",7030]],\n"
--  "            ID[\"EPSG\",6326]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]],\n"
--  "            ID[\"EPSG\",8901]]],\n"
--  "    CONVERSION[\"UTM zone 31N\",\n"
--  "        METHOD[\"Transverse Mercator\",\n"
--  "            ID[\"EPSG\",9807]],\n"
--  "        PARAMETER[\"Latitude of natural origin\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]],\n"
--  "            ID[\"EPSG\",8801]],\n"
--  "        PARAMETER[\"Longitude of natural origin\",3,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]],\n"
--  "            ID[\"EPSG\",8802]],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "            SCALEUNIT[\"unity\",1,\n"
--  "                ID[\"EPSG\",9201]],\n"
--  "            ID[\"EPSG\",8805]],\n"
--  "        PARAMETER[\"False easting\",500000,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]],\n"
--  "            ID[\"EPSG\",8807]],\n"
--  "        ID[\"EPSG\",16031]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(N)\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "    ID[\"EPSG\",32631]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkProjected(crs, /*checkEPSGCodes = */ false);      
   end wkt_parse_wkt2_projected;

   procedure wkt_parse_wkt2_2019_projected_with_id_in_basegeodcrs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCRS[\"WGS 84 / UTM zone 31N\",\n"
--  "    BASEGEOGCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        ID[\"EPSG\",4326]],\n"
--  "    CONVERSION[\"UTM zone 31N\",\n"
--  "        METHOD[\"Transverse Mercator\"],\n"
--  "        PARAMETER[\"Latitude of natural origin\",0],\n"
--  "        PARAMETER[\"Longitude of natural origin\",3],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",0.9996],\n"
--  "        PARAMETER[\"False easting\",500000],\n"
--  "        PARAMETER[\"False northing\",0]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        UNIT[\"metre\",1],\n"
--  "    ID[\"EPSG\",32631]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  ASSERT_EQ(crs->baseCRS()->identifiers().size(), 1U);
--  EXPECT_EQ(crs->baseCRS()->identifiers().front()->code(), "4326");
--  
--  {
--  auto got_wkt = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  EXPECT_TRUE(got_wkt.find("ID[\"EPSG\",4326]]") != std::string::npos)
--  << got_wkt;
--  }
--  
--  {
--  auto got_wkt = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019_SIMPLIFIED)
--  .get());
--  EXPECT_TRUE(got_wkt.find("ID[\"EPSG\",4326]]") == std::string::npos)
--  << got_wkt;
--  }      
   end wkt_parse_wkt2_2019_projected_with_id_in_basegeodcrs;

   procedure wkt_parse_wkt2_2019_projected_no_id_but_id_in_basegeodcrs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCRS[\"WGS 84 / UTM zone 31N\",\n"
--  "    BASEGEOGCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        ID[\"EPSG\",4326]],\n"
--  "    CONVERSION[\"UTM zone 31N\",\n"
--  "        METHOD[\"Transverse Mercator\"],\n"
--  "        PARAMETER[\"Latitude of natural origin\",0],\n"
--  "        PARAMETER[\"Longitude of natural origin\",3],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",0.9996],\n"
--  "        PARAMETER[\"False easting\",500000],\n"
--  "        PARAMETER[\"False northing\",0]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        UNIT[\"metre\",1]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto got_wkt = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  EXPECT_TRUE(got_wkt.find("ID[\"EPSG\",4326]]") != std::string::npos)
--  << got_wkt;      
   end wkt_parse_wkt2_2019_projected_no_id_but_id_in_basegeodcrs;

   procedure wkt_parse_wkt2_2019_simplified_projected (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCRS[\"WGS 84 / UTM zone 31N\",\n"
--  "    BASEGEOGCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    CONVERSION[\"UTM zone 31N\",\n"
--  "        METHOD[\"Transverse Mercator\"],\n"
--  "        PARAMETER[\"Latitude of natural origin\",0],\n"
--  "        PARAMETER[\"Longitude of natural origin\",3],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",0.9996],\n"
--  "        PARAMETER[\"False easting\",500000],\n"
--  "        PARAMETER[\"False northing\",0]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        UNIT[\"metre\",1],\n"
--  "    ID[\"EPSG\",32631]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  checkProjected(crs, /*checkEPSGCodes = */ false);      
   end wkt_parse_wkt2_2019_simplified_projected;

   procedure wkt_parse_wkt2_2019_projected_3D (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "PROJCRS[\"WGS 84 (G1762) / UTM zone 31N 3D\","
--  "    BASEGEOGCRS[\"WGS 84\","
--  "        DATUM[\"World Geodetic System of 1984 (G1762)\","
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,"
--  "           LENGTHUNIT[\"metre\",1.0]]]],"
--  "    CONVERSION[\"Some conversion 3D\","
--  "        METHOD[\"Transverse Mercator (3D)\"],"
--  "        PARAMETER[\"Latitude of origin\",0.0,"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "        PARAMETER[\"Longitude of origin\",3.0,"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "        PARAMETER[\"Scale factor\",1,SCALEUNIT[\"unity\",1.0]],"
--  "        PARAMETER[\"False easting\",0.0,"
--  "           LENGTHUNIT[\"metre\",1.0]],"
--  "        PARAMETER[\"False northing\",0.0,LENGTHUNIT[\"metre\",1.0]]],"
--  "        CS[Cartesian,3],"
--  "            AXIS[\"(E)\",east,ORDER[1]],"
--  "            AXIS[\"(N)\",north,ORDER[2]],"
--  "            AXIS[\"ellipsoidal height (h)\",up,ORDER[3]],"
--  "            LENGTHUNIT[\"metre\",1.0]"
--  "]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=tmerc +lat_0=0 +lon_0=3 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 "
--  "+units=m +no_defs +type=crs");
--  
--  EXPECT_THROW(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2015).get()),
--  FormattingException);
--  
--  EXPECT_NO_THROW(crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()));      
   end wkt_parse_wkt2_2019_projected_3D;

   procedure wkt_parse_wkt2_2019_projected_utm_3D (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // Example from WKT2:2019
--  auto wkt =
--  "PROJCRS[\"WGS 84 (G1762) / UTM zone 31N 3D\","
--  "    BASEGEOGCRS[\"WGS 84\","
--  "        DATUM[\"World Geodetic System of 1984 (G1762)\","
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,"
--  "           LENGTHUNIT[\"metre\",1.0]]]],"
--  "    CONVERSION[\"UTM zone 31N 3D\","
--  "        METHOD[\"Transverse Mercator (3D)\"],"
--  "        PARAMETER[\"Latitude of origin\",0.0,"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "        PARAMETER[\"Longitude of origin\",3.0,"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "        PARAMETER[\"Scale factor\",0.9996,SCALEUNIT[\"unity\",1.0]],"
--  "        PARAMETER[\"False easting\",500000.0,"
--  "           LENGTHUNIT[\"metre\",1.0]],"
--  "        PARAMETER[\"False northing\",0.0,LENGTHUNIT[\"metre\",1.0]]],"
--  "        CS[Cartesian,3],"
--  "            AXIS[\"(E)\",east,ORDER[1]],"
--  "            AXIS[\"(N)\",north,ORDER[2]],"
--  "            AXIS[\"ellipsoidal height (h)\",up,ORDER[3]],"
--  "            LENGTHUNIT[\"metre\",1.0]"
--  "]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=utm +zone=31 +ellps=WGS84 +units=m +no_defs +type=crs");
--  
--  EXPECT_THROW(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2015).get()),
--  FormattingException);
--  
--  EXPECT_NO_THROW(crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()));      
   end wkt_parse_wkt2_2019_projected_utm_3D;

   procedure crs_projected_angular_unit_from_primem (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "PROJCRS[\"NTF (Paris) / Lambert Nord France\",\n"
--  "  BASEGEODCRS[\"NTF (Paris)\",\n"
--  "    DATUM[\"Nouvelle Triangulation Francaise (Paris)\",\n"
--  "      ELLIPSOID[\"Clarke 1880 "
--  "(IGN)\",6378249.2,293.4660213,LENGTHUNIT[\"metre\",1.0]]],\n"
--  "    PRIMEM[\"Paris\",2.5969213,ANGLEUNIT[\"grad\",0.015707963268]]],\n"
--  "  CONVERSION[\"Lambert Nord France\",\n"
--  "    METHOD[\"Lambert Conic Conformal (1SP)\",ID[\"EPSG\",9801]],\n"
--  "    PARAMETER[\"Latitude of natural "
--  "origin\",55,ANGLEUNIT[\"grad\",0.015707963268]],\n"
--  "    PARAMETER[\"Longitude of natural "
--  "origin\",0,ANGLEUNIT[\"grad\",0.015707963268]],\n"
--  "    PARAMETER[\"Scale factor at natural "
--  "origin\",0.999877341,SCALEUNIT[\"unity\",1.0]],\n"
--  "    PARAMETER[\"False easting\",600000,LENGTHUNIT[\"metre\",1.0]],\n"
--  "    PARAMETER[\"False northing\",200000,LENGTHUNIT[\"metre\",1.0]]],\n"
--  "  CS[cartesian,2],\n"
--  "    AXIS[\"easting (X)\",east,ORDER[1]],\n"
--  "    AXIS[\"northing (Y)\",north,ORDER[2]],\n"
--  "    LENGTHUNIT[\"metre\",1.0],\n"
--  "  ID[\"EPSG\",27561]]");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->baseCRS()->coordinateSystem()->axisList()[0]->unit(),
--  UnitOfMeasure::GRAD);      
   end crs_projected_angular_unit_from_primem;

   procedure wkt_parse_cs_with_MERIDIAN (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "PROJCRS[\"dummy\",\n"
--  "    BASEGEOGCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    CONVERSION[\"dummy\",\n"
--  "        METHOD[\"dummy\"],\n"
--  "        PARAMETER[\"dummy\",1.0]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"easting "
--  "(X)\",south,MERIDIAN[90,ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "        AXIS[\"northing (Y)\",north],\n"
--  "        UNIT[\"metre\",1],\n"
--  "    ID[\"EPSG\",32631]]";
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  ASSERT_EQ(crs->coordinateSystem()->axisList().size(), 2U);
--  auto axis = crs->coordinateSystem()->axisList()[0];
--  auto meridian = axis->meridian();
--  ASSERT_TRUE(meridian != nullptr);
--  EXPECT_EQ(meridian->longitude().value(), 90.0);
--  EXPECT_EQ(meridian->longitude().unit(), UnitOfMeasure::DEGREE);
--  ASSERT_TRUE(crs->coordinateSystem()->axisList()[1]->meridian() == nullptr);      
   end wkt_parse_cs_with_MERIDIAN;

   procedure wkt_parse_cs_with_multiple_ID (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEODCRS[\"WGS 84\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[Cartesian,3],\n"
--  "        AXIS[\"(X)\",geocentricX],\n"
--  "        AXIS[\"(Y)\",geocentricY],\n"
--  "        AXIS[\"(Z)\",geocentricZ],\n"
--  "        UNIT[\"metre\",1],\n"
--  "    ID[\"authorityA\",\"codeA\"],\n"
--  "    ID[\"authorityB\",\"codeB\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "WGS 84");
--  ASSERT_EQ(crs->identifiers().size(), 2U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "codeA");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "authorityA");
--  EXPECT_EQ(crs->identifiers()[1]->code(), "codeB");
--  EXPECT_EQ(*(crs->identifiers()[1]->codeSpace()), "authorityB");      
   end wkt_parse_cs_with_multiple_ID;

   procedure wkt_parse_vertcrs_WKT2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERTCRS[\"ODN height\",\n"
--  "    VDATUM[\"Ordnance Datum Newlyn\"],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up,\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "    ID[\"EPSG\",5701]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "ODN height");
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "5701");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  auto datum = crs->datum();
--  EXPECT_EQ(datum->nameStr(), "Ordnance Datum Newlyn");
--  // ASSERT_EQ(datum->identifiers().size(), 1U);
--  // EXPECT_EQ(datum->identifiers()[0]->code(), "5101");
--  // EXPECT_EQ(*(datum->identifiers()[0]->codeSpace()), "EPSG");
--  
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 1U);
--  EXPECT_EQ(cs->axisList()[0]->nameStr(), "Gravity-related height");
--  EXPECT_EQ(cs->axisList()[0]->abbreviation(), "H");
--  EXPECT_EQ(cs->axisList()[0]->direction(), AxisDirection::UP);      
   end wkt_parse_vertcrs_WKT2;

   procedure wkt_parse_vertcrs_VRF_WKT2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERTCRS[\"ODN height\",\n"
--  "    VRF[\"Ordnance Datum Newlyn\"],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up,\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "    ID[\"EPSG\",5701]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_vertcrs_VRF_WKT2;

   procedure wkt_parse_vertcrs_with_GEOIDMODEL (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERTCRS[\"CGVD2013\",\n"
--  "    VDATUM[\"Canadian Geodetic Vertical Datum of 2013\"],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up,\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "    GEOIDMODEL[\"CGG2013\",\n"
--  "        ID[\"EPSG\",6648]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  wkt);      
   end wkt_parse_vertcrs_with_GEOIDMODEL;

   procedure wkt_parse_vertcrs_WKT1_GDAL (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERT_CS[\"ODN height\",\n"
--  "    VERT_DATUM[\"Ordnance Datum Newlyn\",2005,\n"
--  "        AUTHORITY[\"EPSG\",\"5101\"]],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AXIS[\"gravity-related height\",UP],\n"
--  "    AUTHORITY[\"EPSG\",\"5701\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "ODN height");
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "5701");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  auto datum = crs->datum();
--  EXPECT_EQ(datum->nameStr(), "Ordnance Datum Newlyn");
--  ASSERT_EQ(datum->identifiers().size(), 1U);
--  EXPECT_EQ(datum->identifiers()[0]->code(), "5101");
--  EXPECT_EQ(*(datum->identifiers()[0]->codeSpace()), "EPSG");
--  
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 1U);
--  EXPECT_EQ(cs->axisList()[0]->nameStr(), "Gravity-related height");
--  EXPECT_EQ(cs->axisList()[0]->abbreviation(), ""); // "H" in WKT2
--  EXPECT_EQ(cs->axisList()[0]->direction(), AxisDirection::UP);      
   end wkt_parse_vertcrs_WKT1_GDAL;

   procedure wkt_parse_vertcrs_WKT1_GDAL_minimum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERT_CS[\"ODN height\",\n"
--  "    VERT_DATUM[\"Ordnance Datum Newlyn\",2005],\n"
--  "    UNIT[\"metre\",1]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  EXPECT_EQ(crs->nameStr(), "ODN height");
--  
--  auto datum = crs->datum();
--  EXPECT_EQ(datum->nameStr(), "Ordnance Datum Newlyn");
--  
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 1U);
--  EXPECT_EQ(cs->axisList()[0]->nameStr(), "Gravity-related height");
--  EXPECT_EQ(cs->axisList()[0]->direction(), AxisDirection::UP);      
   end wkt_parse_vertcrs_WKT1_GDAL_minimum;

   procedure wkt_parse_vertcrs_WKT1_LAS_ftUS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERT_CS[\"NAVD88 - Geoid03 (Feet)\","
--  "    VERT_DATUM[\"unknown\",2005],"
--  "    UNIT[\"US survey foot\",0.3048006096012192,"
--  "        AUTHORITY[\"EPSG\",\"9003\"]],"
--  "    AXIS[\"Up\",UP]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "NAVD88 height (ftUS)");
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "6360");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &geoidModel = crs->geoidModel();
--  ASSERT_TRUE(!geoidModel.empty());
--  EXPECT_EQ(geoidModel[0]->nameStr(), "GEOID03");
--  
--  auto datum = crs->datum();
--  EXPECT_EQ(datum->nameStr(), "North American Vertical Datum 1988");
--  ASSERT_EQ(datum->identifiers().size(), 1U);
--  EXPECT_EQ(datum->identifiers()[0]->code(), "5103");
--  EXPECT_EQ(*(datum->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &axis = crs->coordinateSystem()->axisList()[0];
--  EXPECT_EQ(axis->direction(), AxisDirection::UP);
--  EXPECT_EQ(axis->unit().name(), "US survey foot");
--  EXPECT_NEAR(axis->unit().conversionToSI(), 0.3048006096012192, 1e-16);      
   end wkt_parse_vertcrs_WKT1_LAS_ftUS;

   procedure wkt_parse_vertcrs_WKT1_LAS_metre (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERT_CS[\"NAVD88 via Geoid09\","
--  "    VERT_DATUM[\"unknown\",2005],"
--  "    UNIT[\"metre\",1.0,"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],"
--  "    AXIS[\"Up\",UP]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "NAVD88 height");
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "5703");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &geoidModel = crs->geoidModel();
--  ASSERT_TRUE(!geoidModel.empty());
--  EXPECT_EQ(geoidModel[0]->nameStr(), "GEOID09");
--  
--  auto datum = crs->datum();
--  EXPECT_EQ(datum->nameStr(), "North American Vertical Datum 1988");
--  ASSERT_EQ(datum->identifiers().size(), 1U);
--  EXPECT_EQ(datum->identifiers()[0]->code(), "5103");
--  EXPECT_EQ(*(datum->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &axis = crs->coordinateSystem()->axisList()[0];
--  EXPECT_EQ(axis->direction(), AxisDirection::UP);
--  EXPECT_EQ(axis->unit(), UnitOfMeasure::METRE);      
   end wkt_parse_vertcrs_WKT1_LAS_metre;

   procedure wkt_parse_dynamic_vertical_reference_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "VERTCRS[\"RH2000\","
--  "  DYNAMIC[FRAMEEPOCH[2000.0],MODEL[\"NKG2016LU\"]],"
--  "  VDATUM[\"Rikets Hojdsystem 2000\",ANCHOR[\"my anchor\"]],"
--  "  CS[vertical,1],"
--  "    AXIS[\"gravity-related height (H)\",up],"
--  "    LENGTHUNIT[\"metre\",1.0]"
--  "]");
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto dgrf =
--  std::dynamic_pointer_cast<DynamicVerticalReferenceFrame>(crs->datum());
--  ASSERT_TRUE(dgrf != nullptr);
--  auto anchor = dgrf->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "my anchor");
--  EXPECT_TRUE(dgrf->frameReferenceEpoch() ==
--  Measure(2000.0, UnitOfMeasure::YEAR));
--  auto model = dgrf->deformationModelName();
--  EXPECT_TRUE(model.has_value());
--  EXPECT_EQ(*model, "NKG2016LU");      
   end wkt_parse_dynamic_vertical_reference_frame;

   procedure wkt_parse_vertcrs_with_ensemble (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "VERTCRS[\"unnamed\",\n"
--  "    ENSEMBLE[\"unnamed\",\n"
--  "        MEMBER[\"vdatum1\"],\n"
--  "        MEMBER[\"vdatum2\"],\n"
--  "        ENSEMBLEACCURACY[100]],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up,\n"
--  "            LENGTHUNIT[\"metre\",1]]]");
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  ASSERT_TRUE(crs->datum() == nullptr);
--  ASSERT_TRUE(crs->datumEnsemble() != nullptr);
--  EXPECT_EQ(crs->datumEnsemble()->datums().size(), 2U);      
   end wkt_parse_vertcrs_with_ensemble;

   procedure wkt_parse_vdatum_with_ANCHOR (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT("VDATUM[\"Ordnance Datum Newlyn\",\n"
--  "    ANCHOR[\"my anchor\"],\n"
--  "    ID[\"EPSG\",5101]]");
--  auto datum = nn_dynamic_pointer_cast<VerticalReferenceFrame>(obj);
--  ASSERT_TRUE(datum != nullptr);
--  auto anchor = datum->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "my anchor");      
   end wkt_parse_vdatum_with_ANCHOR;

   procedure wkt_parse_COMPOUNDCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "COMPOUNDCRS[\"horizontal + vertical\",\n"
--  "    PROJCRS[\"WGS 84 / UTM zone 31N\",\n"
--  "        BASEGEODCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "        CONVERSION[\"UTM zone 31N\",\n"
--  "            METHOD[\"Transverse Mercator\",\n"
--  "                ID[\"EPSG\",9807]],\n"
--  "            PARAMETER[\"Latitude of natural origin\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8801]],\n"
--  "            PARAMETER[\"Longitude of natural origin\",3,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8802]],\n"
--  "            PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "                SCALEUNIT[\"unity\",1],\n"
--  "                ID[\"EPSG\",8805]],\n"
--  "            PARAMETER[\"False easting\",500000,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8806]],\n"
--  "            PARAMETER[\"False northing\",0,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8807]]],\n"
--  "        CS[Cartesian,2],\n"
--  "            AXIS[\"(E)\",east,\n"
--  "                ORDER[1],\n"
--  "                LENGTHUNIT[\"metre\",1]],\n"
--  "            AXIS[\"(N)\",north,\n"
--  "                ORDER[2],\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "    VERTCRS[\"ODN height\",\n"
--  "        VDATUM[\"Ordnance Datum Newlyn\"],\n"
--  "        CS[vertical,1],\n"
--  "            AXIS[\"gravity-related height (H)\",up,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "    ID[\"codespace\",\"code\"]]");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "horizontal + vertical");
--  EXPECT_EQ(crs->componentReferenceSystems().size(), 2U);
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "code");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "codespace");      
   end wkt_parse_COMPOUNDCRS;

   procedure wkt_parse_COMPOUNDCRS_spatio_parametric_2015 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "COMPOUNDCRS[\"ICAO layer 0\",\n"
--  "    GEODETICCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8901]],\n"
--  "        CS[ellipsoidal,2],\n"
--  "            AXIS[\"latitude\",north,\n"
--  "                ORDER[1],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            AXIS[\"longitude\",east,\n"
--  "                ORDER[2],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    PARAMETRICCRS[\"WMO standard atmosphere\",\n"
--  "        PARAMETRICDATUM[\"Mean Sea Level\",\n"
--  "            ANCHOR[\"Mean Sea Level = 1013.25 hPa\"]],\n"
--  "        CS[parametric,1],\n"
--  "            AXIS[\"pressure (P)\",unspecified,\n"
--  "                PARAMETRICUNIT[\"HectoPascal\",100]]]]");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_COMPOUNDCRS_spatio_parametric_2015;

   procedure wkt_parse_COMPOUNDCRS_spatio_parametric_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "COMPOUNDCRS[\"ICAO layer 0\",\n"
--  "    GEOGRAPHICCRS[\"WGS 84\",\n"
--  "    DYNAMIC[FRAMEEPOCH[2005]],\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8901]],\n"
--  "        CS[ellipsoidal,2],\n"
--  "            AXIS[\"latitude\",north,\n"
--  "                ORDER[1],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            AXIS[\"longitude\",east,\n"
--  "                ORDER[2],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    PARAMETRICCRS[\"WMO standard atmosphere\",\n"
--  "        PARAMETRICDATUM[\"Mean Sea Level\",\n"
--  "            ANCHOR[\"Mean Sea Level = 1013.25 hPa\"]],\n"
--  "        CS[parametric,1],\n"
--  "            AXIS[\"pressure (P)\",unspecified,\n"
--  "                PARAMETRICUNIT[\"HectoPascal\",100]]]]");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_COMPOUNDCRS_spatio_parametric_2019;

   procedure wkt_parse_COMPOUNDCRS_spatio_temporal_2015 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "COMPOUNDCRS[\"GPS position and time\",\n"
--  "    GEODCRS[\"WGS 84 (G1762)\",\n"
--  "        DATUM[\"World Geodetic System 1984 (G1762)\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1,\n"
--  "                    ID[\"EPSG\",9001]]]],\n"
--  "        CS[ellipsoidal,2],\n"
--  "            AXIS[\"latitude\",north,\n"
--  "                ORDER[1],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            AXIS[\"longitude\",east,\n"
--  "                ORDER[2],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    TIMECRS[\"GPS Time\",\n"
--  "        TIMEDATUM[\"Time origin\",TIMEORIGIN[1980-01-01]],\n"
--  "        CS[temporal,1],\n"
--  "            AXIS[\"time (T)\",future]]]");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_COMPOUNDCRS_spatio_temporal_2015;

   procedure wkt_parse_COMPOUNDCRS_spatio_temporal_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "COMPOUNDCRS[\"2D GPS position with civil time in ISO 8601 format\",\n"
--  "    GEOGCRS[\"WGS 84 (G1762)\",\n"
--  "        DATUM[\"World Geodetic System 1984 (G1762)\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1,\n"
--  "                    ID[\"EPSG\",9001]]]],\n"
--  "        CS[ellipsoidal,2],\n"
--  "            AXIS[\"latitude\",north,\n"
--  "                ORDER[1],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            AXIS[\"longitude\",east,\n"
--  "                ORDER[2],\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    TIMECRS[\"DateTime\",\n"
--  "        TDATUM[\"Gregorian Calendar\"],\n"
--  "        CS[TemporalDateTime,1],\n"
--  "            AXIS[\"time (T)\",future]]]");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_COMPOUNDCRS_spatio_temporal_2019;

   procedure wkt_parse_COMPD_CS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = WKTParser().createFromWKT(
--  "COMPD_CS[\"horizontal + vertical\",\n"
--  "    PROJCS[\"WGS 84 / UTM zone 31N\",\n"
--  "        GEOGCS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "                AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "            UNIT[\"degree\",0.0174532925199433,\n"
--  "                AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "            AXIS[\"Latitude\",NORTH],\n"
--  "            AXIS[\"Longitude\",EAST],\n"
--  "            AUTHORITY[\"EPSG\",\"4326\"]],\n"
--  "        PROJECTION[\"Transverse_Mercator\"],\n"
--  "        PARAMETER[\"latitude_of_origin\",0],\n"
--  "        PARAMETER[\"central_meridian\",3],\n"
--  "        PARAMETER[\"scale_factor\",0.9996],\n"
--  "        PARAMETER[\"false_easting\",500000],\n"
--  "        PARAMETER[\"false_northing\",0],\n"
--  "        UNIT[\"metre\",1,\n"
--  "            AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "        AXIS[\"Easting\",EAST],\n"
--  "        AXIS[\"Northing\",NORTH],\n"
--  "        AUTHORITY[\"EPSG\",\"32631\"]],\n"
--  "    VERT_CS[\"ODN height\",\n"
--  "        VERT_DATUM[\"Ordnance Datum Newlyn\",2005,\n"
--  "            AUTHORITY[\"EPSG\",\"5101\"]],\n"
--  "        UNIT[\"metre\",1,\n"
--  "            AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "        AXIS[\"Gravity-related height\",UP],\n"
--  "        AUTHORITY[\"EPSG\",\"5701\"]],\n"
--  "    AUTHORITY[\"codespace\",\"code\"]]");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "horizontal + vertical");
--  EXPECT_EQ(crs->componentReferenceSystems().size(), 2U);
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "code");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "codespace");      
   end wkt_parse_COMPD_CS;

   procedure wkt_parse_COORDINATEOPERATION (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
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
--  auto wkt =
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
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto transf = nn_dynamic_pointer_cast<Transformation>(obj);
--  ASSERT_TRUE(transf != nullptr);
--  EXPECT_EQ(transf->nameStr(), "transformationName");
--  ASSERT_EQ(transf->identifiers().size(), 1U);
--  EXPECT_EQ(transf->identifiers()[0]->code(), "codeTransformation");
--  EXPECT_EQ(*(transf->identifiers()[0]->codeSpace()),
--  "codeSpaceTransformation");
--  ASSERT_EQ(transf->coordinateOperationAccuracies().size(), 1U);
--  EXPECT_EQ(transf->coordinateOperationAccuracies()[0]->value(), "0.1");
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  GeographicCRS::EPSG_4326->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  GeographicCRS::EPSG_4807->nameStr());
--  ASSERT_TRUE(transf->interpolationCRS() != nullptr);
--  EXPECT_EQ(transf->interpolationCRS()->nameStr(),
--  GeographicCRS::EPSG_4979->nameStr());
--  EXPECT_EQ(transf->method()->nameStr(), "operationMethodName");
--  EXPECT_EQ(transf->parameterValues().size(), 1U);
--  
--  {
--  auto outWkt = transf->exportToWKT(WKTFormatter::create().get());
--  EXPECT_EQ(replaceAll(replaceAll(outWkt, "\n", ""), " ", ""),
--  replaceAll(replaceAll(wkt, "\n", ""), " ", ""));
--  }      
   end wkt_parse_COORDINATEOPERATION;

   procedure wkt_parse_COORDINATEOPERATION_wkt2_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  std::string src_wkt;
--  {
--  auto formatter =
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019);
--  formatter->setOutputId(false);
--  src_wkt = GeographicCRS::EPSG_4326->exportToWKT(formatter.get());
--  }
--  
--  std::string dst_wkt;
--  {
--  auto formatter =
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019);
--  formatter->setOutputId(false);
--  dst_wkt = GeographicCRS::EPSG_4807->exportToWKT(formatter.get());
--  }
--  
--  std::string interpolation_wkt;
--  {
--  auto formatter =
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019);
--  formatter->setOutputId(false);
--  interpolation_wkt =
--  GeographicCRS::EPSG_4979->exportToWKT(formatter.get());
--  }
--  
--  auto wkt =
--  "COORDINATEOPERATION[\"transformationName\",\n"
--  "    VERSION[\"my version\"],\n"
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
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto transf = nn_dynamic_pointer_cast<Transformation>(obj);
--  ASSERT_TRUE(transf != nullptr);
--  EXPECT_EQ(transf->nameStr(), "transformationName");
--  EXPECT_EQ(*transf->operationVersion(), "my version");
--  ASSERT_EQ(transf->identifiers().size(), 1U);
--  EXPECT_EQ(transf->identifiers()[0]->code(), "codeTransformation");
--  EXPECT_EQ(*(transf->identifiers()[0]->codeSpace()),
--  "codeSpaceTransformation");
--  ASSERT_EQ(transf->coordinateOperationAccuracies().size(), 1U);
--  EXPECT_EQ(transf->coordinateOperationAccuracies()[0]->value(), "0.1");
--  EXPECT_EQ(transf->sourceCRS()->nameStr(),
--  GeographicCRS::EPSG_4326->nameStr());
--  EXPECT_EQ(transf->targetCRS()->nameStr(),
--  GeographicCRS::EPSG_4807->nameStr());
--  ASSERT_TRUE(transf->interpolationCRS() != nullptr);
--  EXPECT_EQ(transf->interpolationCRS()->nameStr(),
--  GeographicCRS::EPSG_4979->nameStr());
--  EXPECT_EQ(transf->method()->nameStr(), "operationMethodName");
--  EXPECT_EQ(transf->parameterValues().size(), 1U);
--  
--  {
--  auto outWkt = transf->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  EXPECT_EQ(replaceAll(replaceAll(outWkt, "\n", ""), " ", ""),
--  replaceAll(replaceAll(wkt, "\n", ""), " ", ""));
--  }
--  
--  {
--  auto outWkt = transf->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2015).get());
--  EXPECT_FALSE(outWkt.find("VERSION[\"my version\"],") !=
--  std::string::npos);
--  }      
   end wkt_parse_COORDINATEOPERATION_wkt2_2019;

   procedure wkt_parse_conversion_proj_based (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt = "CONVERSION[\"PROJ-based coordinate operation\",\n"
--  "    METHOD[\"PROJ-based operation method: +proj=merc\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto transf = nn_dynamic_pointer_cast<SingleOperation>(obj);
--  ASSERT_TRUE(transf != nullptr);
--  EXPECT_EQ(transf->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=merc");      
   end wkt_parse_conversion_proj_based;

   procedure wkt_parse_CONCATENATEDOPERATION (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto transf_1 = Transformation::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "transf_1"),
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
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "transf_2"),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4979), nullptr,
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "operationMethodName"),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  auto concat_in = ConcatenatedOperation::create(
--  PropertyMap()
--  .set(Identifier::CODESPACE_KEY, "codeSpace")
--  .set(Identifier::CODE_KEY, "code")
--  .set(IdentifiedObject::NAME_KEY, "name")
--  .set(IdentifiedObject::REMARKS_KEY, "my remarks"),
--  std::vector<CoordinateOperationNNPtr>{transf_1, transf_2},
--  std::vector<PositionalAccuracyNNPtr>{
--  PositionalAccuracy::create("0.1")});
--  
--  auto wkt = concat_in->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto concat = nn_dynamic_pointer_cast<ConcatenatedOperation>(obj);
--  ASSERT_TRUE(concat != nullptr);
--  EXPECT_EQ(concat->nameStr(), "name");
--  EXPECT_FALSE(concat->operationVersion().has_value());
--  ASSERT_EQ(concat->identifiers().size(), 1U);
--  EXPECT_EQ(concat->identifiers()[0]->code(), "code");
--  EXPECT_EQ(*(concat->identifiers()[0]->codeSpace()), "codeSpace");
--  ASSERT_EQ(concat->operations().size(), 2U);
--  ASSERT_EQ(concat->operations()[0]->nameStr(), transf_1->nameStr());
--  ASSERT_EQ(concat->operations()[1]->nameStr(), transf_2->nameStr());
--  ASSERT_TRUE(concat->sourceCRS() != nullptr);
--  ASSERT_TRUE(concat->targetCRS() != nullptr);
--  ASSERT_EQ(concat->sourceCRS()->nameStr(), transf_1->sourceCRS()->nameStr());
--  ASSERT_EQ(concat->targetCRS()->nameStr(), transf_2->targetCRS()->nameStr());      
   end wkt_parse_CONCATENATEDOPERATION;

   procedure wkt_parse_CONCATENATEDOPERATION_with_conversion_and_conversion (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt =
--  "CONCATENATEDOPERATION[\"Inverse of UTM zone 31N + UTM zone 32N\",\n"
--  "    SOURCECRS[\n"
--  "        PROJCRS[\"WGS 84 / UTM zone 31N\",\n"
--  "            BASEGEOGCRS[\"WGS 84\",\n"
--  "                DATUM[\"World Geodetic System 1984\",\n"
--  "                    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                        LENGTHUNIT[\"metre\",1]]],\n"
--  "                PRIMEM[\"Greenwich\",0,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "            CONVERSION[\"UTM zone 31N\",\n"
--  "                METHOD[\"Transverse Mercator\",\n"
--  "                    ID[\"EPSG\",9807]],\n"
--  "                PARAMETER[\"Latitude of natural origin\",0,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8801]],\n"
--  "                PARAMETER[\"Longitude of natural origin\",3,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8802]],\n"
--  "                PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "                    SCALEUNIT[\"unity\",1],\n"
--  "                    ID[\"EPSG\",8805]],\n"
--  "                PARAMETER[\"False easting\",500000,\n"
--  "                    LENGTHUNIT[\"metre\",1],\n"
--  "                    ID[\"EPSG\",8806]],\n"
--  "                PARAMETER[\"False northing\",0,\n"
--  "                    LENGTHUNIT[\"metre\",1],\n"
--  "                    ID[\"EPSG\",8807]]],\n"
--  "            CS[Cartesian,2],\n"
--  "                AXIS[\"(E)\",east,\n"
--  "                    ORDER[1],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "                AXIS[\"(N)\",north,\n"
--  "                    ORDER[2],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",32631]]],\n"
--  "    TARGETCRS[\n"
--  "        PROJCRS[\"WGS 84 / UTM zone 32N\",\n"
--  "            BASEGEOGCRS[\"WGS 84\",\n"
--  "                DATUM[\"World Geodetic System 1984\",\n"
--  "                    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                        LENGTHUNIT[\"metre\",1]]],\n"
--  "                PRIMEM[\"Greenwich\",0,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "            CONVERSION[\"UTM zone 32N\",\n"
--  "                METHOD[\"Transverse Mercator\",\n"
--  "                    ID[\"EPSG\",9807]],\n"
--  "                PARAMETER[\"Latitude of natural origin\",0,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8801]],\n"
--  "                PARAMETER[\"Longitude of natural origin\",9,\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                    ID[\"EPSG\",8802]],\n"
--  "                PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "                    SCALEUNIT[\"unity\",1],\n"
--  "                    ID[\"EPSG\",8805]],\n"
--  "                PARAMETER[\"False easting\",500000,\n"
--  "                    LENGTHUNIT[\"metre\",1],\n"
--  "                    ID[\"EPSG\",8806]],\n"
--  "                PARAMETER[\"False northing\",0,\n"
--  "                    LENGTHUNIT[\"metre\",1],\n"
--  "                    ID[\"EPSG\",8807]]],\n"
--  "            CS[Cartesian,2],\n"
--  "                AXIS[\"(E)\",east,\n"
--  "                    ORDER[1],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "                AXIS[\"(N)\",north,\n"
--  "                    ORDER[2],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",32632]]],\n"
--  "    STEP[\n"
--  "        CONVERSION[\"Inverse of UTM zone 31N\",\n"
--  "            METHOD[\"Inverse of Transverse Mercator\",\n"
--  "                ID[\"INVERSE(EPSG)\",9807]],\n"
--  "            PARAMETER[\"Latitude of natural origin\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8801]],\n"
--  "            PARAMETER[\"Longitude of natural origin\",3,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8802]],\n"
--  "            PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "                SCALEUNIT[\"unity\",1],\n"
--  "                ID[\"EPSG\",8805]],\n"
--  "            PARAMETER[\"False easting\",500000,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8806]],\n"
--  "            PARAMETER[\"False northing\",0,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8807]],\n"
--  "            ID[\"INVERSE(EPSG)\",16031]]],\n"
--  "    STEP[\n"
--  "        CONVERSION[\"UTM zone 32N\",\n"
--  "            METHOD[\"Transverse Mercator\",\n"
--  "                ID[\"EPSG\",9807]],\n"
--  "            PARAMETER[\"Latitude of natural origin\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8801]],\n"
--  "            PARAMETER[\"Longitude of natural origin\",9,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8802]],\n"
--  "            PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "                SCALEUNIT[\"unity\",1],\n"
--  "                ID[\"EPSG\",8805]],\n"
--  "            PARAMETER[\"False easting\",500000,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8806]],\n"
--  "            PARAMETER[\"False northing\",0,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8807]],\n"
--  "            ID[\"EPSG\",16032]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto concat = nn_dynamic_pointer_cast<ConcatenatedOperation>(obj);
--  ASSERT_TRUE(concat != nullptr);
--  
--  EXPECT_EQ(concat->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +inv +proj=utm +zone=31 +ellps=WGS84 "
--  "+step +proj=utm +zone=32 +ellps=WGS84");
--  
--  auto outWkt = concat->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  EXPECT_EQ(wkt, outWkt);      
   end wkt_parse_CONCATENATEDOPERATION_with_conversion_and_conversion;

   procedure wkt_parse_BOUNDCRS_transformation_from_names (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto projcrs = ProjectedCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "my PROJCRS"),
--  GeographicCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "my GEOGCRS"),
--  GeodeticReferenceFrame::EPSG_6326,
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE)),
--  Conversion::createUTM(PropertyMap(), 31, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto wkt =
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) + "],\n" +
--  "TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    ABRIDGEDTRANSFORMATION[\"Transformation to WGS84\",\n"
--  "        METHOD[\"Coordinate Frame\"],\n"
--  "        PARAMETER[\"X-axis translation\",1],\n"
--  "        PARAMETER[\"Y-axis translation\",2],\n"
--  "        PARAMETER[\"Z-axis translation\",3],\n"
--  "        PARAMETER[\"X-axis rotation\",-4],\n"
--  "        PARAMETER[\"Y-axis rotation\",-5],\n"
--  "        PARAMETER[\"Z-axis rotation\",-6],\n"
--  "        PARAMETER[\"Scale difference\",1.000007]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), projcrs->nameStr());
--  
--  EXPECT_EQ(crs->hubCRS()->nameStr(), GeographicCRS::EPSG_4326->nameStr());
--  
--  ASSERT_TRUE(crs->transformation()->sourceCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->sourceCRS()->nameStr(),
--  projcrs->baseCRS()->nameStr());
--  
--  auto params = crs->transformation()->getTOWGS84Parameters();
--  auto expected = std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0};
--  ASSERT_EQ(params.size(), expected.size());
--  for (int i = 0; i < 7; i++) {
--  EXPECT_NEAR(params[i], expected[i], 1e-10);
--  }      
   end wkt_parse_BOUNDCRS_transformation_from_names;

   procedure wkt_parse_BOUNDCRS_transformation_from_codes (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto projcrs = ProjectedCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "my PROJCRS"),
--  GeographicCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "my GEOGCRS"),
--  GeodeticReferenceFrame::EPSG_6326,
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE)),
--  Conversion::createUTM(PropertyMap(), 31, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto wkt =
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) + "],\n" +
--  "TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    ABRIDGEDTRANSFORMATION[\"Transformation to WGS84\",\n"
--  "        METHOD[\"bla\",ID[\"EPSG\",1032]],\n"
--  "        PARAMETER[\"tx\",1,ID[\"EPSG\",8605]],\n"
--  "        PARAMETER[\"ty\",2,ID[\"EPSG\",8606]],\n"
--  "        PARAMETER[\"tz\",3,ID[\"EPSG\",8607]],\n"
--  "        PARAMETER[\"rotx\",-4,ID[\"EPSG\",8608]],\n"
--  "        PARAMETER[\"roty\",-5,ID[\"EPSG\",8609]],\n"
--  "        PARAMETER[\"rotz\",-6,ID[\"EPSG\",8610]],\n"
--  "        PARAMETER[\"scale\",1.000007,ID[\"EPSG\",8611]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), projcrs->nameStr());
--  
--  EXPECT_EQ(crs->hubCRS()->nameStr(), GeographicCRS::EPSG_4326->nameStr());
--  
--  ASSERT_TRUE(crs->transformation()->sourceCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->sourceCRS()->nameStr(),
--  projcrs->baseCRS()->nameStr());
--  
--  auto params = crs->transformation()->getTOWGS84Parameters();
--  auto expected = std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0};
--  ASSERT_EQ(params.size(), expected.size());
--  for (int i = 0; i < 7; i++) {
--  EXPECT_NEAR(params[i], expected[i], 1e-10);
--  }      
   end wkt_parse_BOUNDCRS_transformation_from_codes;

   procedure wkt_parse_boundcrs_of_verticalcrs_to_geog3Dcrs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "BOUNDCRS[\n"
--  "    SOURCECRS[\n"
--  "        VERTCRS[\"my_height\",\n"
--  "            VDATUM[\"my_height\"],\n"
--  "            CS[vertical,1],\n"
--  "                AXIS[\"up\",up,\n"
--  "                    LENGTHUNIT[\"metre\",1,\n"
--  "                        ID[\"EPSG\",9001]]]]],\n"
--  "    TARGETCRS[\n"
--  "        GEODCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[ellipsoidal,3],\n"
--  "                AXIS[\"latitude\",north,\n"
--  "                    ORDER[1],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"longitude\",east,\n"
--  "                    ORDER[2],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"ellipsoidal height\",up,\n"
--  "                    ORDER[3],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",4979]]],\n"
--  "    ABRIDGEDTRANSFORMATION[\"my_height height to WGS84 ellipsoidal "
--  "height\",\n"
--  "        METHOD[\"GravityRelatedHeight to Geographic3D\"],\n"
--  "        PARAMETERFILE[\"Geoid (height correction) model file\","
--  "                      \"./tmp/fake.gtx\",\n"
--  "            ID[\"EPSG\",8666]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "my_height");
--  
--  EXPECT_EQ(crs->hubCRS()->nameStr(), GeographicCRS::EPSG_4979->nameStr());      
   end wkt_parse_boundcrs_of_verticalcrs_to_geog3Dcrs;

   procedure wkt_parse_geogcs_TOWGS84_3terms (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOGCS[\"my GEOGCRS\",\n"
--  "    DATUM[\"WGS_1984\",\n"
--  "        SPHEROID[\"WGS 84\",6378137,298.257223563],\n"
--  "        TOWGS84[1,2,3]],\n"
--  "    PRIMEM[\"Greenwich\",0],\n"
--  "    UNIT[\"degree\",0.0174532925199433]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "my GEOGCRS");
--  
--  EXPECT_EQ(crs->hubCRS()->nameStr(), GeographicCRS::EPSG_4326->nameStr());
--  
--  ASSERT_TRUE(crs->transformation()->sourceCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->sourceCRS()->nameStr(), "my GEOGCRS");
--  
--  auto params = crs->transformation()->getTOWGS84Parameters();
--  auto expected = std::vector<double>{1.0, 2.0, 3.0, 0.0, 0.0, 0.0, 0.0};
--  ASSERT_EQ(params.size(), expected.size());
--  for (int i = 0; i < 7; i++) {
--  EXPECT_NEAR(params[i], expected[i], 1e-10);
--  }      
   end wkt_parse_geogcs_TOWGS84_3terms;

   procedure wkt_parse_projcs_TOWGS84_7terms (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"my PROJCRS\",\n"
--  "    GEOGCS[\"my GEOGCRS\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            TOWGS84[1,2,3,4,5,6,7],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            AUTHORITY[\"EPSG\",\"8901\"]],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "        AXIS[\"Latitude\",NORTH],\n"
--  "        AXIS[\"Longitude\",EAST]],\n"
--  "    PROJECTION[\"Transverse_Mercator\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",0],\n"
--  "    PARAMETER[\"central_meridian\",3],\n"
--  "    PARAMETER[\"scale_factor\",0.9996],\n"
--  "    PARAMETER[\"false_easting\",500000],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "my PROJCRS");
--  
--  EXPECT_EQ(crs->hubCRS()->nameStr(), GeographicCRS::EPSG_4326->nameStr());
--  
--  ASSERT_TRUE(crs->transformation()->sourceCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->sourceCRS()->nameStr(), "my GEOGCRS");
--  
--  auto params = crs->transformation()->getTOWGS84Parameters();
--  auto expected = std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0};
--  ASSERT_EQ(params.size(), expected.size());
--  for (int i = 0; i < 7; i++) {
--  EXPECT_NEAR(params[i], expected[i], 1e-10);
--  }      
   end wkt_parse_projcs_TOWGS84_7terms;

   procedure wkt_parse_WKT1_VERT_DATUM_EXTENSION (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERT_CS[\"EGM2008 geoid height\",\n"
--  "    VERT_DATUM[\"EGM2008 geoid\",2005,\n"
--  "        EXTENSION[\"PROJ4_GRIDS\",\"egm08_25.gtx\"],\n"
--  "        AUTHORITY[\"EPSG\",\"1027\"]],\n"
--  "    UNIT[\"metre\",1,\n"
--  "        AUTHORITY[\"EPSG\",\"9001\"]],\n"
--  "    AXIS[\"Up\",UP],\n"
--  "    AUTHORITY[\"EPSG\",\"3855\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "EGM2008 geoid height");
--  
--  EXPECT_EQ(crs->hubCRS()->nameStr(), GeographicCRS::EPSG_4979->nameStr());
--  
--  ASSERT_TRUE(crs->transformation()->sourceCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->sourceCRS()->nameStr(),
--  crs->baseCRS()->nameStr());
--  
--  ASSERT_TRUE(crs->transformation()->targetCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->targetCRS()->nameStr(),
--  crs->hubCRS()->nameStr());
--  
--  EXPECT_EQ(crs->transformation()->nameStr(),
--  "EGM2008 geoid height to WGS84 ellipsoidal height");
--  EXPECT_EQ(crs->transformation()->method()->nameStr(),
--  "GravityRelatedHeight to Geographic3D");
--  ASSERT_EQ(crs->transformation()->parameterValues().size(), 1U);
--  {
--  const auto &opParamvalue =
--  nn_dynamic_pointer_cast<OperationParameterValue>(
--  crs->transformation()->parameterValues()[0]);
--  ASSERT_TRUE(opParamvalue);
--  const auto &paramName = opParamvalue->parameter()->nameStr();
--  const auto &parameterValue = opParamvalue->parameterValue();
--  EXPECT_TRUE(opParamvalue->parameter()->getEPSGCode() == 8666);
--  EXPECT_EQ(paramName, "Geoid (height correction) model file");
--  EXPECT_EQ(parameterValue->type(), ParameterValue::Type::FILENAME);
--  EXPECT_EQ(parameterValue->valueFile(), "egm08_25.gtx");
--  }      
   end wkt_parse_WKT1_VERT_DATUM_EXTENSION;

   procedure wkt_parse_WKT1_DATUM_EXTENSION (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "PROJCS[\"unnamed\",\n"
--  "    GEOGCS[\"International 1909 (Hayford)\",\n"
--  "        DATUM[\"unknown\",\n"
--  "            SPHEROID[\"intl\",6378388,297],\n"
--  "            EXTENSION[\"PROJ4_GRIDS\",\"nzgd2kgrid0005.gsb\"]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"New_Zealand_Map_Grid\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",-41],\n"
--  "    PARAMETER[\"central_meridian\",173],\n"
--  "    PARAMETER[\"false_easting\",2510000],\n"
--  "    PARAMETER[\"false_northing\",6023150],\n"
--  "    UNIT[\"Meter\",1]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "unnamed");
--  
--  EXPECT_EQ(crs->hubCRS()->nameStr(), GeographicCRS::EPSG_4326->nameStr());
--  
--  ASSERT_TRUE(crs->transformation()->sourceCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->sourceCRS()->nameStr(),
--  "International 1909 (Hayford)");
--  
--  ASSERT_TRUE(crs->transformation()->targetCRS() != nullptr);
--  EXPECT_EQ(crs->transformation()->targetCRS()->nameStr(),
--  crs->hubCRS()->nameStr());
--  
--  EXPECT_EQ(crs->transformation()->nameStr(),
--  "International 1909 (Hayford) to WGS84");
--  EXPECT_EQ(crs->transformation()->method()->nameStr(), "NTv2");
--  ASSERT_EQ(crs->transformation()->parameterValues().size(), 1U);
--  {
--  const auto &opParamvalue =
--  nn_dynamic_pointer_cast<OperationParameterValue>(
--  crs->transformation()->parameterValues()[0]);
--  ASSERT_TRUE(opParamvalue);
--  const auto &paramName = opParamvalue->parameter()->nameStr();
--  const auto &parameterValue = opParamvalue->parameterValue();
--  EXPECT_TRUE(opParamvalue->parameter()->getEPSGCode() == 8656);
--  EXPECT_EQ(paramName, "Latitude and longitude difference file");
--  EXPECT_EQ(parameterValue->type(), ParameterValue::Type::FILENAME);
--  EXPECT_EQ(parameterValue->valueFile(), "nzgd2kgrid0005.gsb");
--  }      
   end wkt_parse_WKT1_DATUM_EXTENSION;

   procedure wkt_parse_DerivedGeographicCRS_WKT2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEODCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    DERIVINGCONVERSION[\"Atlantic pole\",\n"
--  "        METHOD[\"Pole rotation\"],\n"
--  "        PARAMETER[\"Latitude of rotated pole\",52,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        PARAMETER[\"Longitude of rotated pole\",-30,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        PARAMETER[\"Axis rotation\",-25,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "WMO Atlantic Pole");
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "WGS 84");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<GeographicCRS>(crs->baseCRS()) !=
--  nullptr);
--  
--  EXPECT_EQ(crs->derivingConversion()->nameStr(), "Atlantic pole");
--  
--  EXPECT_TRUE(nn_dynamic_pointer_cast<EllipsoidalCS>(
--  crs->coordinateSystem()) != nullptr);      
   end wkt_parse_DerivedGeographicCRS_WKT2;

   procedure wkt_parse_DerivedGeographicCRS_WKT2_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOGCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEOGCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    DERIVINGCONVERSION[\"Atlantic pole\",\n"
--  "        METHOD[\"Pole rotation\"],\n"
--  "        PARAMETER[\"Latitude of rotated pole\",52,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        PARAMETER[\"Longitude of rotated pole\",-30,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        PARAMETER[\"Axis rotation\",-25,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "WMO Atlantic Pole");
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "WGS 84");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<GeographicCRS>(crs->baseCRS()) !=
--  nullptr);
--  
--  EXPECT_EQ(crs->derivingConversion()->nameStr(), "Atlantic pole");
--  
--  EXPECT_TRUE(nn_dynamic_pointer_cast<EllipsoidalCS>(
--  crs->coordinateSystem()) != nullptr);      
   end wkt_parse_DerivedGeographicCRS_WKT2_2019;

   procedure wkt_parse_DerivedGeodeticCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEODCRS[\"Derived geodetic CRS\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    DERIVINGCONVERSION[\"Some conversion\",\n"
--  "        METHOD[\"Some method\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[Cartesian,3],\n"
--  "        AXIS[\"(X)\",geocentricX,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(Y)\",geocentricY,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(Z)\",geocentricZ,\n"
--  "            ORDER[3],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  ;
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Derived geodetic CRS");
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "WGS 84");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<GeographicCRS>(crs->baseCRS()) !=
--  nullptr);
--  
--  EXPECT_EQ(crs->derivingConversion()->nameStr(), "Some conversion");
--  
--  EXPECT_TRUE(nn_dynamic_pointer_cast<CartesianCS>(crs->coordinateSystem()) !=
--  nullptr);      
   end wkt_parse_DerivedGeodeticCRS;

   procedure wkt_parse_DerivedProjectedCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "DERIVEDPROJCRS[\"derived projectedCRS\",\n"
--  "    BASEPROJCRS[\"WGS 84 / UTM zone 31N\",\n"
--  "        BASEGEOGCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "        CONVERSION[\"UTM zone 31N\",\n"
--  "            METHOD[\"Transverse Mercator\",\n"
--  "                ID[\"EPSG\",9807]],\n"
--  "            PARAMETER[\"Latitude of natural origin\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8801]],\n"
--  "            PARAMETER[\"Longitude of natural origin\",3,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8802]],\n"
--  "            PARAMETER[\"Scale factor at natural origin\",0.9996,\n"
--  "                SCALEUNIT[\"unity\",1],\n"
--  "                ID[\"EPSG\",8805]],\n"
--  "            PARAMETER[\"False easting\",500000,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8806]],\n"
--  "            PARAMETER[\"False northing\",0,\n"
--  "                LENGTHUNIT[\"metre\",1],\n"
--  "                ID[\"EPSG\",8807]]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(N)\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "derived projectedCRS");
--  
--  EXPECT_EQ(crs->baseCRS()->nameStr(), "WGS 84 / UTM zone 31N");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<ProjectedCRS>(crs->baseCRS()) !=
--  nullptr);
--  
--  EXPECT_EQ(crs->derivingConversion()->nameStr(), "unnamed");
--  
--  EXPECT_TRUE(nn_dynamic_pointer_cast<CartesianCS>(crs->coordinateSystem()) !=
--  nullptr);      
   end wkt_parse_DerivedProjectedCRS;

   procedure wkt_parse_DerivedProjectedCRS_ordinal (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "DERIVEDPROJCRS[\"derived projectedCRS\",\n"
--  "    BASEPROJCRS[\"BASEPROJCRS\",\n"
--  "        BASEGEOGCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "                ID[\"EPSG\",8901]]],\n"
--  "        CONVERSION[\"unnamed\",\n"
--  "            METHOD[\"PROJ unimplemented\"],\n"
--  "            PARAMETER[\"foo\",1,\n"
--  "                LENGTHUNIT[\"metre\",1,\n"
--  "                    ID[\"EPSG\",9001]]]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]],\n"
--  "    CS[ordinal,2],\n"
--  "        AXIS[\"inline (I)\",northNorthWest,\n"
--  "            ORDER[1]],\n"
--  "        AXIS[\"crossline (J)\",westSouthWest,\n"
--  "            ORDER[2]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_TRUE(nn_dynamic_pointer_cast<OrdinalCS>(crs->coordinateSystem()) !=
--  nullptr);
--  
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  wkt);      
   end wkt_parse_DerivedProjectedCRS_ordinal;

   procedure wkt_parse_TemporalDatum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "TDATUM[\"Gregorian calendar\",\n"
--  "    CALENDAR[\"my calendar\"],\n"
--  "    TIMEORIGIN[0000-01-01]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto tdatum = nn_dynamic_pointer_cast<TemporalDatum>(obj);
--  ASSERT_TRUE(tdatum != nullptr);
--  
--  EXPECT_EQ(tdatum->nameStr(), "Gregorian calendar");
--  EXPECT_EQ(tdatum->temporalOrigin().toString(), "0000-01-01");
--  EXPECT_EQ(tdatum->calendar(), "my calendar");      
   end wkt_parse_TemporalDatum;

   procedure wkt_parse_TemporalDatum_no_calendar (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "TDATUM[\"Gregorian calendar\",\n"
--  "    TIMEORIGIN[0000-01-01]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto tdatum = nn_dynamic_pointer_cast<TemporalDatum>(obj);
--  ASSERT_TRUE(tdatum != nullptr);
--  
--  EXPECT_EQ(tdatum->nameStr(), "Gregorian calendar");
--  EXPECT_EQ(tdatum->temporalOrigin().toString(), "0000-01-01");
--  EXPECT_EQ(tdatum->calendar(), "proleptic Gregorian");      
   end wkt_parse_TemporalDatum_no_calendar;

   procedure wkt_parse_dateTimeTemporalCRS_WKT2 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[temporal,1],\n"
--  "        AXIS[\"time (T)\",future]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<TemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Temporal CRS");
--  auto tdatum = crs->datum();
--  EXPECT_EQ(tdatum->nameStr(), "Gregorian calendar");
--  EXPECT_EQ(tdatum->temporalOrigin().toString(), "0000-01-01");
--  EXPECT_EQ(tdatum->calendar(), "proleptic Gregorian");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<DateTimeTemporalCS>(
--  crs->coordinateSystem()) != nullptr);
--  ASSERT_EQ(crs->coordinateSystem()->axisList().size(), 1U);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().type(),
--  UnitOfMeasure::Type::NONE);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().name(), "");      
   end wkt_parse_dateTimeTemporalCRS_WKT2;

   procedure wkt_parse_dateTimeTemporalCRS_WKT2_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        CALENDAR[\"proleptic Gregorian\"],\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[TemporalDateTime,1],\n"
--  "        AXIS[\"time (T)\",future]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<TemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Temporal CRS");
--  auto tdatum = crs->datum();
--  EXPECT_EQ(tdatum->nameStr(), "Gregorian calendar");
--  EXPECT_EQ(tdatum->temporalOrigin().toString(), "0000-01-01");
--  EXPECT_EQ(tdatum->calendar(), "proleptic Gregorian");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<DateTimeTemporalCS>(
--  crs->coordinateSystem()) != nullptr);
--  ASSERT_EQ(crs->coordinateSystem()->axisList().size(), 1U);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().type(),
--  UnitOfMeasure::Type::NONE);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().name(), "");      
   end wkt_parse_dateTimeTemporalCRS_WKT2_2019;

   procedure wkt_parse_temporalCountCRSWithConvFactor_WKT2_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "TIMECRS[\"GPS milliseconds\",\n"
--  "    TDATUM[\"GPS time origin\",\n"
--  "        TIMEORIGIN[1980-01-01T00:00:00.0Z]],\n"
--  "    CS[TemporalCount,1],\n"
--  "        AXIS[\"(T)\",future,\n"
--  "            TIMEUNIT[\"milliseconds (ms)\",0.001]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<TemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "GPS milliseconds");
--  auto tdatum = crs->datum();
--  EXPECT_EQ(tdatum->nameStr(), "GPS time origin");
--  EXPECT_EQ(tdatum->temporalOrigin().toString(), "1980-01-01T00:00:00.0Z");
--  EXPECT_EQ(tdatum->calendar(), "proleptic Gregorian");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<TemporalCountCS>(
--  crs->coordinateSystem()) != nullptr);
--  ASSERT_EQ(crs->coordinateSystem()->axisList().size(), 1U);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().name(),
--  "milliseconds (ms)");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().conversionToSI(),
--  0.001);      
   end wkt_parse_temporalCountCRSWithConvFactor_WKT2_2019;

   procedure wkt_parse_temporalCountCRSWithoutConvFactor_WKT2_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "TIMECRS[\"Calendar hours from 1979-12-29\",\n"
--  "    TDATUM[\"29 December 1979\",\n"
--  "        CALENDAR[\"proleptic Gregorian\"],\n"
--  "        TIMEORIGIN[1979-12-29T00Z]],\n"
--  "    CS[TemporalCount,1],\n"
--  "        AXIS[\"time\",future,\n"
--  "            TIMEUNIT[\"hour\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<TemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Calendar hours from 1979-12-29");
--  auto tdatum = crs->datum();
--  EXPECT_EQ(tdatum->nameStr(), "29 December 1979");
--  EXPECT_EQ(tdatum->temporalOrigin().toString(), "1979-12-29T00Z");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<TemporalCountCS>(
--  crs->coordinateSystem()) != nullptr);
--  ASSERT_EQ(crs->coordinateSystem()->axisList().size(), 1U);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().name(), "hour");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().conversionToSI(),
--  0.0);      
   end wkt_parse_temporalCountCRSWithoutConvFactor_WKT2_2019;

   procedure wkt_parse_temporalMeasureCRSWithoutConvFactor_WKT2_2019 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "TIMECRS[\"Decimal Years CE\",\n"
--  "    TIMEDATUM[\"Common Era\",\n"
--  "        TIMEORIGIN[0000]],\n"
--  "    CS[TemporalMeasure,1],\n"
--  "        AXIS[\"decimal years (a)\",future,\n"
--  "            TIMEUNIT[\"year\"]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<TemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Decimal Years CE");
--  auto tdatum = crs->datum();
--  EXPECT_EQ(tdatum->nameStr(), "Common Era");
--  EXPECT_EQ(tdatum->temporalOrigin().toString(), "0000");
--  EXPECT_TRUE(nn_dynamic_pointer_cast<TemporalMeasureCS>(
--  crs->coordinateSystem()) != nullptr);
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 1U);
--  auto axis = cs->axisList()[0];
--  EXPECT_EQ(axis->nameStr(), "Decimal years");
--  EXPECT_EQ(axis->unit().name(), "year");
--  EXPECT_EQ(axis->unit().conversionToSI(), 0.0);      
   end wkt_parse_temporalMeasureCRSWithoutConvFactor_WKT2_2019;

   procedure wkt_parse_EDATUM (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "EDATUM[\"Engineering datum\",\n"
--  "    ANCHOR[\"my anchor\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto edatum = nn_dynamic_pointer_cast<EngineeringDatum>(obj);
--  ASSERT_TRUE(edatum != nullptr);
--  
--  EXPECT_EQ(edatum->nameStr(), "Engineering datum");
--  auto anchor = edatum->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "my anchor");      
   end wkt_parse_EDATUM;

   procedure wkt_parse_ENGINEERINGDATUM (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "ENGINEERINGDATUM[\"Engineering datum\"]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto edatum = nn_dynamic_pointer_cast<EngineeringDatum>(obj);
--  ASSERT_TRUE(edatum != nullptr);
--  
--  EXPECT_EQ(edatum->nameStr(), "Engineering datum");
--  auto anchor = edatum->anchorDefinition();
--  EXPECT_TRUE(!anchor.has_value());      
   end wkt_parse_ENGINEERINGDATUM;

   procedure wkt_parse_ENGCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "ENGCRS[\"Engineering CRS\",\n"
--  "    EDATUM[\"Engineering datum\"],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(N)\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<EngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Engineering CRS");
--  EXPECT_EQ(crs->datum()->nameStr(), "Engineering datum");
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 2U);      
   end wkt_parse_ENGCRS;

   procedure wkt_parse_ENGINEERINGCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "ENGINEERINGCRS[\"Engineering CRS\",\n"
--  "    ENGINEERINGDATUM[\"Engineering datum\"],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(N)\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<EngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Engineering CRS");
--  EXPECT_EQ(crs->datum()->nameStr(), "Engineering datum");
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 2U);      
   end wkt_parse_ENGINEERINGCRS;

   procedure wkt_parse_LOCAL_CS_short (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "LOCAL_CS[\"Engineering CRS\"]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<EngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Engineering CRS");
--  EXPECT_FALSE(!crs->datum()->nameStr().empty());
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 2U);
--  
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  wkt);      
   end wkt_parse_LOCAL_CS_short;

   procedure wkt_parse_LOCAL_CS_long_one_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "LOCAL_CS[\"Engineering CRS\",\n"
--  "    LOCAL_DATUM[\"Engineering datum\",12345],\n"
--  "    UNIT[\"meter\",1],\n"
--  "    AXIS[\"height\",up]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<EngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Engineering CRS");
--  EXPECT_EQ(crs->datum()->nameStr(), "Engineering datum");
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 1U);      
   end wkt_parse_LOCAL_CS_long_one_axis;

   procedure wkt_parse_LOCAL_CS_long_two_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "LOCAL_CS[\"Engineering CRS\",\n"
--  "    LOCAL_DATUM[\"Engineering datum\",12345],\n"
--  "    UNIT[\"meter\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<EngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "Engineering CRS");
--  EXPECT_EQ(crs->datum()->nameStr(), "Engineering datum");
--  auto cs = crs->coordinateSystem();
--  ASSERT_EQ(cs->axisList().size(), 2U);      
   end wkt_parse_LOCAL_CS_long_two_axis;

   procedure wkt_parse_PDATUM (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PDATUM[\"Parametric datum\",\n"
--  "    ANCHOR[\"my anchor\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto datum = nn_dynamic_pointer_cast<ParametricDatum>(obj);
--  ASSERT_TRUE(datum != nullptr);
--  
--  EXPECT_EQ(datum->nameStr(), "Parametric datum");
--  auto anchor = datum->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "my anchor");      
   end wkt_parse_PDATUM;

   procedure wkt_parse_PARAMETRICDATUM (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PARAMETRICDATUM[\"Parametric datum\",\n"
--  "    ANCHOR[\"my anchor\"]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto datum = nn_dynamic_pointer_cast<ParametricDatum>(obj);
--  ASSERT_TRUE(datum != nullptr);
--  
--  EXPECT_EQ(datum->nameStr(), "Parametric datum");
--  auto anchor = datum->anchorDefinition();
--  EXPECT_TRUE(anchor.has_value());
--  EXPECT_EQ(*anchor, "my anchor");      
   end wkt_parse_PARAMETRICDATUM;

   procedure wkt_parse_PARAMETRICCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt =
--  "PARAMETRICCRS[\"WMO standard atmosphere layer 0\","
--  "     PDATUM[\"Mean Sea Level\",ANCHOR[\"1013.25 hPa at 15°C\"]],"
--  "     CS[parametric,1],"
--  "         AXIS[\"pressure (hPa)\",up],"
--  "         PARAMETRICUNIT[\"HectoPascal\",100.0]"
--  "     ]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ParametricCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "WMO standard atmosphere layer 0");
--  EXPECT_EQ(crs->datum()->nameStr(), "Mean Sea Level");
--  auto cs = crs->coordinateSystem();
--  EXPECT_TRUE(nn_dynamic_pointer_cast<ParametricCS>(cs) != nullptr);
--  ASSERT_EQ(cs->axisList().size(), 1U);
--  auto axis = cs->axisList()[0];
--  EXPECT_EQ(axis->nameStr(), "Pressure");
--  EXPECT_EQ(axis->unit().name(), "HectoPascal");
--  EXPECT_EQ(axis->unit().type(), UnitOfMeasure::Type::PARAMETRIC);
--  EXPECT_EQ(axis->unit().conversionToSI(), 100.0);      
   end wkt_parse_PARAMETRICCRS;

   procedure wkt_parse_PARAMETRICCRS_PARAMETRICDATUM (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PARAMETRICCRS[\"WMO standard atmosphere layer 0\","
--  "     PARAMETRICDATUM[\"Mean Sea Level\"],"
--  "     CS[parametric,1],"
--  "         AXIS[\"pressure (hPa)\",up],"
--  "         PARAMETRICUNIT[\"HectoPascal\",100.0]"
--  "     ]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ParametricCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_PARAMETRICCRS_PARAMETRICDATUM;

   procedure wkt_parse_DerivedVerticalCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "VERTCRS[\"Derived vertCRS\",\n"
--  "    BASEVERTCRS[\"ODN height\",\n"
--  "        VDATUM[\"Ordnance Datum Newlyn\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedVerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_DerivedVerticalCRS;

   procedure wkt_parse_DerivedEngineeringCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt = "ENGCRS[\"Derived EngineeringCRS\",\n"
--  "    BASEENGCRS[\"Engineering CRS\",\n"
--  "        EDATUM[\"Engineering datum\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"(N)\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedEngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_DerivedEngineeringCRS;

   procedure wkt_parse_DerivedParametricCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt = "PARAMETRICCRS[\"Derived ParametricCRS\",\n"
--  "    BASEPARAMCRS[\"Parametric CRS\",\n"
--  "        PDATUM[\"Parametric datum\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]],\n"
--  "    CS[parametric,1],\n"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedParametricCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_DerivedParametricCRS;

   procedure wkt_parse_DerivedTemporalCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto wkt = "TIMECRS[\"Derived TemporalCRS\",\n"
--  "    BASETIMECRS[\"Temporal CRS\",\n"
--  "        TDATUM[\"Gregorian calendar\",\n"
--  "            CALENDAR[\"proleptic Gregorian\"],\n"
--  "            TIMEORIGIN[0000-01-01]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1,\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]],\n"
--  "    CS[TemporalDateTime,1],\n"
--  "        AXIS[\"time (T)\",future]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<DerivedTemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);      
   end wkt_parse_DerivedTemporalCRS;

   procedure wkt_parse_ensemble (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "ENSEMBLE[\"test\",\n"
--  "    MEMBER[\"World Geodetic System 1984\",\n"
--  "        ID[\"EPSG\",6326]],\n"
--  "    MEMBER[\"other datum\"],\n"
--  "    ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "        LENGTHUNIT[\"metre\",1],\n"
--  "        ID[\"EPSG\",7030]],\n"
--  "    ENSEMBLEACCURACY[100]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto ensemble = nn_dynamic_pointer_cast<DatumEnsemble>(obj);
--  ASSERT_TRUE(ensemble != nullptr);
--  
--  ASSERT_EQ(ensemble->datums().size(), 2U);
--  auto firstDatum =
--  nn_dynamic_pointer_cast<GeodeticReferenceFrame>(ensemble->datums()[0]);
--  ASSERT_TRUE(firstDatum != nullptr);
--  EXPECT_EQ(firstDatum->nameStr(), "World Geodetic System 1984");
--  ASSERT_EQ(firstDatum->identifiers().size(), 1U);
--  EXPECT_EQ(firstDatum->identifiers()[0]->code(), "6326");
--  EXPECT_EQ(*(firstDatum->identifiers()[0]->codeSpace()), "EPSG");
--  
--  EXPECT_EQ(firstDatum->ellipsoid()->nameStr(), "WGS 84");
--  
--  EXPECT_EQ(ensemble->positionalAccuracy()->value(), "100");      
   end wkt_parse_ensemble;

   procedure wkt_parse_ensemble_vdatum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "ENSEMBLE[\"unnamed\",\n"
--  "    MEMBER[\"vdatum1\"],\n"
--  "    MEMBER[\"vdatum2\"],\n"
--  "    ENSEMBLEACCURACY[100]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto ensemble = nn_dynamic_pointer_cast<DatumEnsemble>(obj);
--  ASSERT_TRUE(ensemble != nullptr);
--  
--  ASSERT_EQ(ensemble->datums().size(), 2U);
--  auto firstDatum =
--  nn_dynamic_pointer_cast<VerticalReferenceFrame>(ensemble->datums()[0]);
--  ASSERT_TRUE(firstDatum != nullptr);
--  EXPECT_EQ(firstDatum->nameStr(), "vdatum1");
--  
--  EXPECT_EQ(ensemble->positionalAccuracy()->value(), "100");      
   end wkt_parse_ensemble_vdatum;

   procedure wkt_parse_esri_geogcs_datum_spheroid_name_hardcoded_substitution (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOGCS[\"GCS_WGS_1984\",DATUM[\"D_WGS_1984\","
--  "SPHEROID[\"WGS_1984\",6378137.0,298.257223563]],"
--  "PRIMEM[\"Greenwich\",0.0],"
--  "UNIT[\"Degree\",0.0174532925199433]]";
--  
--  // Test substitutions of CRS, datum and ellipsoid names from ESRI names
--  // to EPSG names.
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "WGS 84");
--  EXPECT_EQ(crs->datum()->nameStr(), "World Geodetic System 1984");
--  EXPECT_EQ(crs->ellipsoid()->nameStr(), "WGS 84");      
   end wkt_parse_esri_geogcs_datum_spheroid_name_hardcoded_substitution;

   procedure wkt_parse_esri_geogcs_datum_spheroid_name_from_db_substitution (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOGCS[\"GCS_WGS_1966\",DATUM[\"D_WGS_1966\","
--  "SPHEROID[\"WGS_1966\",6378145.0,298.25]],"
--  "PRIMEM[\"Greenwich\",0.0],"
--  "UNIT[\"Degree\",0.0174532925199433]]";
--  
--  // Test substitutions of CRS, datum and ellipsoid names from ESRI names
--  // to EPSG names.
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "WGS 66");
--  EXPECT_EQ(crs->datum()->nameStr(), "World Geodetic System 1966");
--  EXPECT_EQ(crs->ellipsoid()->nameStr(), "WGS_1966");      
   end wkt_parse_esri_geogcs_datum_spheroid_name_from_db_substitution;

   procedure wkt_parse_esri_datum_name_with_prime_meridian (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "GEOGCS[\"GCS_NTF_Paris\",DATUM[\"D_NTF\","
--  "SPHEROID[\"Clarke_1880_IGN\",6378249.2,293.4660212936265]],"
--  "PRIMEM[\"Paris\",2.337229166666667],"
--  "UNIT[\"Grad\",0.01570796326794897]]";
--  
--  // D_NTF normally translates to "Nouvelle Triangulation Francaise",
--  // but as we have a non-Greenwich prime meridian, we also test if
--  // "Nouvelle Triangulation Francaise (Paris)" is not a registered datum name
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "NTF (Paris)");
--  EXPECT_EQ(crs->datum()->nameStr(),
--  "Nouvelle Triangulation Francaise (Paris)");
--  EXPECT_EQ(crs->ellipsoid()->nameStr(), "Clarke 1880 (IGN)");      
   end wkt_parse_esri_datum_name_with_prime_meridian;

   procedure wkt_parse_esri_projcs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  for (const auto &projDef : esriProjDefs) {
--  std::string wkt("PROJCS[\"unnamed\",GEOGCS[\"GCS_WGS_1984\","
--  "DATUM[\"D_WGS_1984\",SPHEROID[\"WGS_1984\","
--  "6378137.0,298.257223563]],PRIMEM[\"Greenwich\",0.0],"
--  "UNIT[\"Degree\",0.0174532925199433]],PROJECTION[\"");
--  wkt += projDef.esriProjectionName;
--  wkt += "\"],";
--  for (const auto &param : projDef.esriParams) {
--  wkt += "PARAMETER[\"";
--  wkt += param.first;
--  wkt += "\",";
--  wkt += toString(param.second);
--  wkt += "],";
--  }
--  wkt += "UNIT[\"Meter\",1.0]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto conv = crs->derivingConversion();
--  auto method = conv->method();
--  EXPECT_EQ(method->nameStr(), projDef.wkt2ProjectionName) << wkt;
--  auto values = conv->parameterValues();
--  EXPECT_EQ(values.size(), projDef.wkt2Params.size()) << wkt;
--  if (values.size() == projDef.wkt2Params.size()) {
--  for (size_t i = 0; i < values.size(); i++) {
--  const auto &opParamvalue =
--  nn_dynamic_pointer_cast<OperationParameterValue>(values[i]);
--  ASSERT_TRUE(opParamvalue);
--  const auto &paramName = opParamvalue->parameter()->nameStr();
--  const auto &parameterValue = opParamvalue->parameterValue();
--  EXPECT_EQ(paramName, projDef.wkt2Params[i].first) << wkt;
--  EXPECT_EQ(parameterValue->type(),
--  ParameterValue::Type::MEASURE);
--  auto measure = parameterValue->value();
--  EXPECT_EQ(measure.value(), projDef.wkt2Params[i].second) << wkt;
--  }
--  }
--  }      
   end wkt_parse_esri_projcs;

   procedure wkt_parse_wkt1_esri_case_insensitive_names (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"WGS_1984_UTM_Zone_31N\",GEOGCS[\"GCS_WGS_1984\","
--  "DATUM[\"D_WGS_1984\",SPHEROID[\"WGS_1984\",6378137.0,"
--  "298.257223563]],PRIMEM[\"Greenwich\",0.0],UNIT[\"Degree\","
--  "0.0174532925199433]],PROJECTION[\"transverse_mercator\"],"
--  "PARAMETER[\"false_easting\",500000.0],"
--  "PARAMETER[\"false_northing\",0.0],"
--  "PARAMETER[\"central_meridian\",3.0],"
--  "PARAMETER[\"scale_factor\",0.9996],"
--  "PARAMETER[\"latitude_of_origin\",0.0],UNIT[\"Meter\",1.0]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  int zone = 0;
--  bool north = false;
--  EXPECT_TRUE(crs->derivingConversion()->isUTM(zone, north));
--  EXPECT_EQ(zone, 31);
--  EXPECT_TRUE(north);      
   end wkt_parse_wkt1_esri_case_insensitive_names;

   procedure wkt_parse_wkt1_esri_non_expected_param_name (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // We try to be lax on parameter names.
--  auto wkt =
--  "PROJCS[\"WGS_1984_UTM_Zone_31N\",GEOGCS[\"GCS_WGS_1984\","
--  "DATUM[\"D_WGS_1984\",SPHEROID[\"WGS_1984\",6378137.0,"
--  "298.257223563]],PRIMEM[\"Greenwich\",0.0],UNIT[\"Degree\","
--  "0.0174532925199433]],PROJECTION[\"transverse_mercator\"],"
--  "PARAMETER[\"false_easting\",500000.0],"
--  "PARAMETER[\"false_northing\",0.0],"
--  "PARAMETER[\"longitude_of_center\",3.0]," // should be Central_Meridian
--  "PARAMETER[\"scale_factor\",0.9996],"
--  "PARAMETER[\"latitude_of_origin\",0.0],UNIT[\"Meter\",1.0]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  int zone = 0;
--  bool north = false;
--  EXPECT_TRUE(crs->derivingConversion()->isUTM(zone, north));
--  EXPECT_EQ(zone, 31);
--  EXPECT_TRUE(north);      
   end wkt_parse_wkt1_esri_non_expected_param_name;

   procedure wkt_parse_wkt1_esri_krovak_south_west (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"S-JTSK_Krovak\",GEOGCS[\"GCS_S_JTSK\","
--  "DATUM[\"D_S_JTSK\","
--  "SPHEROID[\"Bessel_1841\",6377397.155,299.1528128]],"
--  "PRIMEM[\"Greenwich\",0.0],UNIT[\"Degree\",0.0174532925199433]],"
--  "PROJECTION[\"Krovak\"],PARAMETER[\"False_Easting\",0.0],"
--  "PARAMETER[\"False_Northing\",0.0],"
--  "PARAMETER[\"Pseudo_Standard_Parallel_1\",78.5],"
--  "PARAMETER[\"Scale_Factor\",0.9999],"
--  "PARAMETER[\"Azimuth\",30.28813975277778],"
--  "PARAMETER[\"Longitude_Of_Center\",24.83333333333333],"
--  "PARAMETER[\"Latitude_Of_Center\",49.5],"
--  "PARAMETER[\"X_Scale\",1.0],"
--  "PARAMETER[\"Y_Scale\",1.0],"
--  "PARAMETER[\"XY_Plane_Rotation\",0.0],UNIT[\"Meter\",1.0]]";
--  
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->derivingConversion()->method()->nameStr(), "Krovak");
--  
--  auto expected_wkt2 =
--  "PROJCRS[\"S-JTSK / Krovak\",\n"
--  "    BASEGEODCRS[\"S-JTSK\",\n"
--  "        DATUM[\"System of the Unified Trigonometrical Cadastral "
--  "Network\",\n"
--  "            ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "                LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",6156]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"Degree\",0.0174532925199433]]],\n"
--  "    CONVERSION[\"unnamed\",\n"
--  "        METHOD[\"Krovak\",\n"
--  "            ID[\"EPSG\",9819]],\n"
--  "        PARAMETER[\"Latitude of projection centre\",49.5,\n"
--  "            ANGLEUNIT[\"Degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8811]],\n"
--  "        PARAMETER[\"Longitude of origin\",24.8333333333333,\n"
--  "            ANGLEUNIT[\"Degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8833]],\n"
--  "        PARAMETER[\"Co-latitude of cone axis\",30.2881397527778,\n"
--  "            ANGLEUNIT[\"Degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",1036]],\n"
--  "        PARAMETER[\"Latitude of pseudo standard parallel\",78.5,\n"
--  "            ANGLEUNIT[\"Degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8818]],\n"
--  "        PARAMETER[\"Scale factor on pseudo standard "
--  "parallel\",0.9999,\n"
--  "            SCALEUNIT[\"unity\",1],\n"
--  "            ID[\"EPSG\",8819]],\n"
--  "        PARAMETER[\"False easting\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8807]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"southing\",south,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]],\n"
--  "        AXIS[\"westing\",west,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1,\n"
--  "                ID[\"EPSG\",9001]]]]";
--  
--  EXPECT_EQ(crs->exportToWKT(WKTFormatter::create().get()), expected_wkt2);      
   end wkt_parse_wkt1_esri_krovak_south_west;

   procedure wkt_parse_wkt1_esri_normalize_unit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"Accra_Ghana_Grid\",GEOGCS[\"GCS_Accra\","
--  "DATUM[\"D_Accra\",SPHEROID[\"War_Office\",6378300.0,296.0]],"
--  "PRIMEM[\"Greenwich\",0.0],UNIT[\"Degree\",0.0174532925199433]],"
--  "PROJECTION[\"Transverse_Mercator\"],"
--  "PARAMETER[\"False_Easting\",900000.0],"
--  "PARAMETER[\"False_Northing\",0.0],"
--  "PARAMETER[\"Central_Meridian\",-1.0],"
--  "PARAMETER[\"Scale_Factor\",0.99975],"
--  "PARAMETER[\"Latitude_Of_Origin\",4.666666666666667],"
--  "UNIT[\"Foot_Gold_Coast\",0.3047997101815088]]";
--  
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->unit().name(),
--  "Gold Coast foot");      
   end wkt_parse_wkt1_esri_normalize_unit;

   procedure wkt_parse_wkt1_esri_ups_north (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"UPS_North\",GEOGCS[\"GCS_WGS_1984\","
--  "DATUM[\"D_WGS_1984\","
--  "SPHEROID[\"WGS_1984\",6378137.0,298.257223563]],"
--  "PRIMEM[\"Greenwich\",0.0],UNIT[\"Degree\",0.0174532925199433]],"
--  "PROJECTION[\"Stereographic\"],"
--  "PARAMETER[\"False_Easting\",2000000.0],"
--  "PARAMETER[\"False_Northing\",2000000.0],"
--  "PARAMETER[\"Central_Meridian\",0.0],"
--  "PARAMETER[\"Scale_Factor\",0.994],"
--  "PARAMETER[\"Latitude_Of_Origin\",90.0],"
--  "UNIT[\"Meter\",1.0]]";
--  
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "WGS 84 / UPS North (E,N)");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->direction(),
--  AxisDirection::SOUTH);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->abbreviation(), "E");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->direction(),
--  AxisDirection::SOUTH);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->abbreviation(), "N");      
   end wkt_parse_wkt1_esri_ups_north;

   procedure wkt_parse_wkt1_esri_ups_south (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"UPS_South\",GEOGCS[\"GCS_WGS_1984\","
--  "DATUM[\"D_WGS_1984\","
--  "SPHEROID[\"WGS_1984\",6378137.0,298.257223563]],"
--  "PRIMEM[\"Greenwich\",0.0],UNIT[\"Degree\",0.0174532925199433]],"
--  "PROJECTION[\"Stereographic\"],"
--  "PARAMETER[\"False_Easting\",2000000.0],"
--  "PARAMETER[\"False_Northing\",2000000.0],"
--  "PARAMETER[\"Central_Meridian\",0.0],"
--  "PARAMETER[\"Scale_Factor\",0.994],"
--  "PARAMETER[\"Latitude_Of_Origin\",-90.0],"
--  "UNIT[\"Meter\",1.0]]";
--  
--  auto obj = WKTParser()
--  .attachDatabaseContext(DatabaseContext::create())
--  .createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(crs->nameStr(), "WGS 84 / UPS South (E,N)");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->direction(),
--  AxisDirection::NORTH);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[0]->abbreviation(), "E");
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->direction(),
--  AxisDirection::NORTH);
--  EXPECT_EQ(crs->coordinateSystem()->axisList()[1]->abbreviation(), "N");      
   end wkt_parse_wkt1_esri_ups_south;

   procedure wkt_parse_wkt1_esri_gauss_kruger (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"ETRS_1989_UWPP_2000_PAS_8\",GEOGCS[\"GCS_ETRS_1989\","
--  "DATUM[\"D_ETRS_1989\","
--  "SPHEROID[\"GRS_1980\",6378137.0,298.257222101]],"
--  "PRIMEM[\"Greenwich\",0.0],"
--  "UNIT[\"Degree\",0.0174532925199433]],"
--  "PROJECTION[\"Gauss_Kruger\"],"
--  "PARAMETER[\"False_Easting\",8500000.0],"
--  "PARAMETER[\"False_Northing\",0.0],"
--  "PARAMETER[\"Central_Meridian\",24.0],"
--  "PARAMETER[\"Scale_Factor\",0.999923],"
--  "PARAMETER[\"Latitude_Of_Origin\",0.0],"
--  "UNIT[\"Meter\",1.0]]";
--  
--  auto dbContext = DatabaseContext::create();
--  auto obj = WKTParser().attachDatabaseContext(dbContext).createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_ESRI, dbContext)
--  .get()),
--  wkt);
--  
--  auto crs2 = AuthorityFactory::create(dbContext, "ESRI")
--  ->createProjectedCRS("102177");
--  
--  EXPECT_EQ(
--  crs2->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_ESRI, dbContext)
--  .get()),
--  wkt);      
   end wkt_parse_wkt1_esri_gauss_kruger;

   procedure wkt_parse_invalid (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(WKTParser().createFromWKT(""), ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT("A"), ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT("UNKNOWN[\"foo\"]"),
--  ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT("INVALID["), ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT("INVALID[]"), ParsingException);      
   end wkt_parse_invalid;

   procedure wkt_parse_invalid_SPHEROID (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(WKTParser().createFromWKT("SPHEROID[\"x\",1,0.5]"));
--  EXPECT_THROW(WKTParser().createFromWKT("SPHEROID[\"x\"]"),
--  ParsingException); // major axis not number
--  EXPECT_THROW(WKTParser().createFromWKT("SPHEROID[\"x\",\"1\",0.5]"),
--  ParsingException); // major axis not number
--  EXPECT_THROW(WKTParser().createFromWKT("SPHEROID[\"x\",1,\"0.5\"]"),
--  ParsingException); // reverse flatting not number      
   end wkt_parse_invalid_SPHEROID;

   procedure wkt_parse_invalid_DATUM (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(
--  WKTParser().createFromWKT("DATUM[\"x\",SPHEROID[\"x\",1,0.5]]"));
--  EXPECT_THROW(WKTParser().createFromWKT("DATUM[\"x\"]"), ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT("DATUM[\"x\",FOO[]]"),
--  ParsingException);      
   end wkt_parse_invalid_DATUM;

   procedure wkt_parse_invalid_ENSEMBLE (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(WKTParser().createFromWKT("ENSEMBLE[]"), ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT("ENSEMBLE[\"x\"]"),
--  ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "ENSEMBLE[\"x\",MEMBER[\"vdatum1\"],MEMBER[\"vdatum2\"]]"),
--  ParsingException);
--  EXPECT_THROW(
--  WKTParser().createFromWKT("ENSEMBLE[\"x\",MEMBER[],MEMBER[\"vdatum2\"],"
--  "ENSEMBLEACCURACY[\"100\"]]"),
--  ParsingException);
--  EXPECT_THROW(
--  WKTParser().createFromWKT("ENSEMBLE[\"x\",MEMBER[\"vdatum1\"],MEMBER["
--  "\"vdatum2\"],ENSEMBLEACCURACY[]]"),
--  ParsingException);
--  EXPECT_THROW(
--  WKTParser().createFromWKT("ENSEMBLE[\"x\",ENSEMBLEACCURACY[\"100\"]]"),
--  ParsingException);      
   end wkt_parse_invalid_ENSEMBLE;

   procedure wkt_parse_invalid_GEOGCS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],PRIMEM[\"x\",0],UNIT["
--  "\"degree\",0.0174532925199433]]"));
--  
--  // missing PRIMEM
--  EXPECT_THROW(
--  WKTParser().createFromWKT("GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0."
--  "5]],UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // missing UNIT
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],PRIMEM[\"x\",0]]"),
--  ParsingException);
--  
--  EXPECT_THROW(WKTParser().createFromWKT("GEOGCS[\"x\"]"), ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT("GEOGCS[\"x\",FOO[]]"),
--  ParsingException);
--  
--  // not enough children for DATUM
--  EXPECT_THROW(
--  WKTParser().createFromWKT("GEOGCS[\"x\",DATUM[\"x\"],PRIMEM[\"x\",0],"
--  "UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // not enough children for AUTHORITY
--  EXPECT_THROW(WKTParser().createFromWKT("GEOGCS[\"x\",DATUM[\"x\",SPHEROID["
--  "\"x\",1,0.5]],PRIMEM[\"x\",0],UNIT["
--  "\"degree\",0.0174532925199433],"
--  "AUTHORITY[\"x\"]]"),
--  ParsingException);
--  
--  // not enough children for AUTHORITY, but ignored
--  EXPECT_NO_THROW(WKTParser().setStrict(false).createFromWKT(
--  "GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],PRIMEM[\"x\",0],UNIT["
--  "\"degree\",0.0174532925199433],AUTHORITY[\"x\"]]"));
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],PRIMEM[\"x\",0],UNIT["
--  "\"degree\",0.0174532925199433]]"));
--  
--  // PRIMEM not numeric
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0."
--  "5]],PRIMEM[\"x\",\"a\"],UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // not enough children for PRIMEM
--  EXPECT_THROW(WKTParser().createFromWKT("GEOGCS[\"x\",DATUM[\"x\",SPHEROID["
--  "\"x\",1,0.5]],PRIMEM[\"x\"],UNIT["
--  "\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],PRIMEM[\"x\",0],UNIT["
--  "\"degree\",0.0174532925199433],AXIS[\"latitude\","
--  "NORTH],AXIS[\"longitude\",EAST]]"));
--  
--  // one axis only
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "GEOGCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0."
--  "5]],PRIMEM[\"x\",0],UNIT[\"degree\",0.0174532925199433],"
--  "AXIS[\"latitude\",NORTH]]"),
--  ParsingException);
--  
--  // invalid axis
--  EXPECT_THROW(WKTParser().createFromWKT("GEOGCS[\"x\",DATUM[\"x\",SPHEROID["
--  "\"x\",1,0.5]],PRIMEM[\"x\",0],UNIT["
--  "\"degree\",0.0174532925199433],"
--  "AXIS[\"latitude\","
--  "NORTH],AXIS[\"longitude\"]]"),
--  ParsingException);      
   end wkt_parse_invalid_GEOGCS;

   procedure wkt_parse_invalid_UNIT (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string startWKT("GEODCRS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],CS["
--  "ellipsoidal,2],AXIS[\"latitude\",north],AXIS["
--  "\"longitude\",east],");
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  startWKT + "UNIT[\"degree\",0.0174532925199433]]"));
--  
--  // not enough children
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + "UNIT[\"x\"]]]"),
--  ParsingException);
--  
--  // invalid conversion factor
--  EXPECT_THROW(
--  WKTParser().createFromWKT(startWKT + "UNIT[\"x\",\"invalid\"]]]"),
--  ParsingException);
--  
--  // invalid ID
--  EXPECT_THROW(
--  WKTParser().createFromWKT(startWKT + "UNIT[\"x\",1,ID[\"x\"]]]]"),
--  ParsingException);      
   end wkt_parse_invalid_UNIT;

   procedure wkt_parse_invalid_GEOCCS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(
--  WKTParser().createFromWKT("GEOCCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0."
--  "5]],PRIMEM[\"x\",0],UNIT[\"metre\",1]]"));
--  
--  // missing PRIMEM
--  EXPECT_THROW(WKTParser().createFromWKT("GEOCCS[\"x\",DATUM[\"x\",SPHEROID["
--  "\"x\",1,0.5]],UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // missing UNIT
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEOCCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],PRIMEM[\"x\",0]]"),
--  ParsingException);
--  
--  // ellipsoidal CS is invalid in a GEOCCS
--  EXPECT_THROW(WKTParser().createFromWKT("GEOCCS[\"x\",DATUM[\"x\",SPHEROID["
--  "\"x\",1,0.5]],PRIMEM[\"x\",0],UNIT["
--  "\"degree\",0.0174532925199433],"
--  "AXIS[\"latitude\","
--  "NORTH],AXIS[\"longitude\",EAST]]"),
--  ParsingException);
--  
--  // ellipsoidal CS is invalid in a GEOCCS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "GEOCCS[\"WGS 84\",DATUM[\"World Geodetic System 1984\","
--  "ELLIPSOID[\"WGS 84\",6378274,298.257223564,"
--  "LENGTHUNIT[\"metre\",1]]],"
--  "CS[ellipsoidal,2],AXIS[\"geodetic latitude (Lat)\",north,"
--  "ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "AXIS[\"geodetic longitude (Lon)\",east,"
--  "ANGLEUNIT[\"degree\",0.0174532925199433]]]"),
--  ParsingException);
--  
--  // 3 axis required
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "GEOCCS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],PRIMEM["
--  "\"x\",0],UNIT[\"metre\",1],AXIS["
--  "\"Geocentric X\",OTHER],AXIS[\"Geocentric Y\",OTHER]]"),
--  ParsingException);      
   end wkt_parse_invalid_GEOCCS;

   procedure wkt_parse_invalid_CS_of_GEODCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  std::string startWKT("GEODCRS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]]");
--  
--  // missing CS
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + "]"), ParsingException);
--  
--  // CS: not enough children
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + ",CS[x]]"),
--  ParsingException);
--  
--  // CS: invalid type
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + ",CS[x,2]]"),
--  ParsingException);
--  
--  // CS: invalid number of axis
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + ",CS[ellipsoidal,0]]"),
--  ParsingException);
--  
--  // CS: number of axis is not a number
--  EXPECT_THROW(
--  WKTParser().createFromWKT(startWKT + ",CS[ellipsoidal,\"x\"]]"),
--  ParsingException);
--  
--  // CS: invalid CS type
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT +
--  ",CS[invalid,2],AXIS[\"latitude\","
--  "north],AXIS[\"longitude\",east]]"),
--  ParsingException);
--  
--  // CS: OK
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  startWKT + ",CS[ellipsoidal,2],AXIS[\"latitude\",north],AXIS["
--  "\"longitude\",east],UNIT[\"degree\",0.0174532925199433]]"));
--  
--  // CS: Cartesian with 2 axis unexpected
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT + ",CS[Cartesian,2],AXIS[\"latitude\","
--  "north],AXIS[\"longitude\",east],"
--  "UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // CS: missing axis
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT + ",CS[ellipsoidal,2],AXIS[\"latitude\",north],"
--  "UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // not enough children in AXIS
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  startWKT +
--  ",CS[ellipsoidal,2],AXIS[\"latitude\",north],AXIS[\"longitude\"],"
--  "UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // not enough children in ORDER
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT +
--  ",CS[ellipsoidal,2],AXIS[\"latitude\",north,ORDER[]],AXIS["
--  "\"longitude\",east],"
--  "UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // invalid value in ORDER
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  startWKT +
--  ",CS[ellipsoidal,2],AXIS[\"latitude\",north,ORDER[\"x\"]],AXIS["
--  "\"longitude\",east],UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // unexpected ORDER value
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  startWKT +
--  ",CS[ellipsoidal,2],AXIS[\"latitude\",north,ORDER[2]],AXIS["
--  "\"longitude\",east],UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // Invalid CS type
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT +
--  ",CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);      
   end wkt_parse_invalid_CS_of_GEODCRS;

   procedure wkt_parse_invalid_CS_of_GEOGRAPHICCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // A GeographicCRS must have an ellipsoidal CS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "GEOGRAPHICCRS[\"x\",DATUM[\"x\",SPHEROID[\"x\",1,0.5]],"
--  "CS[Cartesian,3],AXIS[\"(X)\",geocentricX],AXIS[\"(Y)\","
--  "geocentricY],AXIS[\"(Z)\",geocentricZ]]"),
--  ParsingException);      
   end wkt_parse_invalid_CS_of_GEOGRAPHICCRS;

   procedure wkt_parse_invalid_DYNAMIC (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string prefix("GEOGCRS[\"WGS 84 (G1762)\",");
--  std::string suffix(
--  "TRF[\"World Geodetic System 1984 (G1762)\","
--  "ELLIPSOID[\"WGS 84\",6378137,298.257223563]],"
--  "CS[ellipsoidal,3],"
--  "    AXIS[\"(lat)\",north,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"(lon)\",east,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "    AXIS[\"ellipsoidal height (h)\",up,LENGTHUNIT[\"metre\",1.0]]"
--  "]");
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  prefix + "DYNAMIC[FRAMEEPOCH[2015]]," + suffix));
--  
--  EXPECT_THROW(WKTParser().createFromWKT(prefix + "DYNAMIC[]," + suffix),
--  ParsingException);
--  EXPECT_THROW(
--  WKTParser().createFromWKT(prefix + "DYNAMIC[FRAMEEPOCH[]]," + suffix),
--  ParsingException);
--  EXPECT_THROW(WKTParser().createFromWKT(
--  prefix + "DYNAMIC[FRAMEEPOCH[\"invalid\"]]," + suffix),
--  ParsingException);      
   end wkt_parse_invalid_DYNAMIC;

   procedure wkt_parse_invalid_PROJCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // missing BASEGEODCRS
--  EXPECT_THROW(
--  WKTParser().createFromWKT("PROJCRS[\"WGS 84 / UTM zone 31N\"]"),
--  ParsingException);
--  
--  std::string startWKT("PROJCRS[\"WGS 84 / UTM zone 31N\",BASEGEOGCRS[\"WGS "
--  "84\",DATUM[\"WGS_1984\",ELLIPSOID[\"WGS "
--  "84\",6378137,298.257223563]],UNIT[\"degree\",0."
--  "0174532925199433]]");
--  
--  // missing CONVERSION
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + "]"), ParsingException);
--  
--  // not enough children in CONVERSION
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + ",CONVERSION[\"x\"]]"),
--  ParsingException);
--  
--  // not enough children in METHOD
--  EXPECT_THROW(
--  WKTParser().createFromWKT(startWKT + ",CONVERSION[\"x\",METHOD[]]]"),
--  ParsingException);
--  
--  // not enough children in PARAMETER
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  startWKT + ",CONVERSION[\"x\",METHOD[\"y\"],PARAMETER[\"z\"]]]"),
--  ParsingException);
--  
--  // non numeric value for PARAMETER
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  startWKT +
--  ",CONVERSION[\"x\",METHOD[\"y\"],PARAMETER[\"z\",\"foo\"]]]"),
--  ParsingException);
--  
--  // missing CS
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT +
--  ",CONVERSION[\"x\",METHOD[\"y\"]]]"),
--  ParsingException);
--  
--  // CS is not Cartesian
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT + ",CONVERSION[\"x\",METHOD[\"y\"]],CS["
--  "ellipsoidal,2],AXIS[\"latitude\",north],AXIS["
--  "\"longitude\",east]]"),
--  ParsingException);
--  
--  // not enough children in MERIDIAN
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT + ",CONVERSION[\"x\",METHOD[\"y\"]],CS["
--  "Cartesian,2],AXIS[\"easting (X)\",south,"
--  "MERIDIAN[90]],AXIS["
--  "\"northing (Y)\",south]]"),
--  ParsingException);
--  
--  // non numeric angle value for MERIDIAN
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  startWKT +
--  ",CONVERSION[\"x\",METHOD[\"y\"]],CS["
--  "Cartesian,2],AXIS[\"easting (X)\",south,"
--  "MERIDIAN[\"x\",UNIT[\"degree\",0.0174532925199433]]],AXIS["
--  "\"northing (Y)\",south]]"),
--  ParsingException);      
   end wkt_parse_invalid_PROJCRS;

   procedure wkt_parse_invalid_PROJCS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  std::string startWKT(
--  "PROJCS[\"WGS 84 / UTM zone 31N\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563,\n"
--  "                AUTHORITY[\"EPSG\",\"7030\"]],\n"
--  "            AUTHORITY[\"EPSG\",\"6326\"]],\n"
--  "        PRIMEM[\"x\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433,\n"
--  "            AUTHORITY[\"EPSG\",\"9122\"]],\n"
--  "        AXIS[\"latitude\",NORTH],\n"
--  "        AXIS[\"longitude\",EAST],\n"
--  "        AUTHORITY[\"EPSG\",\"4326\"]]\n");
--  
--  // missing PROJECTION
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT + "]"), ParsingException);
--  
--  // not enough children in PROJECTION
--  EXPECT_THROW(WKTParser().createFromWKT(startWKT +
--  ",PROJECTION[],UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // not enough children in PARAMETER
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT +
--  ",PROJECTION[\"x\"],PARAMETER[\"z\"],UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // not enough children in PARAMETER
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT +
--  ",PROJECTION[\"x\"],PARAMETER[\"z\"],UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  startWKT + ",PROJECTION[\"x\"],PARAMETER[\"z\",1],UNIT[\"metre\",1]]"));
--  
--  // missing UNIT
--  EXPECT_THROW(WKTParser().createFromWKT(
--  startWKT + ",PROJECTION[\"x\"],PARAMETER[\"z\",1]]"),
--  ParsingException);      
   end wkt_parse_invalid_PROJCS;

   procedure wkt_parse_invalid_VERTCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  // missing VDATUM
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "VERTCRS[\"foo\",CS[vertical,1],AXIS[\"x\",up]]"),
--  ParsingException);
--  
--  // missing CS
--  EXPECT_THROW(WKTParser().createFromWKT("VERTCRS[\"foo\",VDATUM[\"bar\"]]"),
--  ParsingException);
--  
--  // CS is not of type vertical
--  EXPECT_THROW(WKTParser().createFromWKT("VERTCRS[\"foo\",VDATUM[\"bar\"],CS["
--  "ellipsoidal,2],AXIS[\"latitude\","
--  "north],AXIS["
--  "\"longitude\",east]]"),
--  ParsingException);
--  
--  // verticalCS should have only 1 axis
--  EXPECT_THROW(
--  WKTParser().createFromWKT("VERTCRS[\"foo\",VDATUM[\"bar\"],CS[vertical,"
--  "2],AXIS[\"latitude\",north],AXIS["
--  "\"longitude\",east]]"),
--  ParsingException);      
   end wkt_parse_invalid_VERTCRS;

   procedure wkt_parse_invalid_VERT_CS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "VERT_CS[\"x\",VERT_DATUM[\"y\",2005],UNIT[\"metre\",1]]"));
--  
--  // Missing VERT_DATUM
--  EXPECT_THROW(WKTParser().createFromWKT("VERT_CS[\"x\",UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // Missing UNIT
--  EXPECT_THROW(
--  WKTParser().createFromWKT("VERT_CS[\"x\",VERT_DATUM[\"y\",2005]]"),
--  ParsingException);      
   end wkt_parse_invalid_VERT_CS;

   procedure wkt_parse_invalid_COORDINATEOPERATION (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
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
--  // Valid
--  {
--  auto wkt = "COORDINATEOPERATION[\"transformationName\",\n"
--  "    SOURCECRS[" +
--  src_wkt + "],\n"
--  "    TARGETCRS[" +
--  dst_wkt + "],\n"
--  "    METHOD[\"operationMethodName\"],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"]]";
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(wkt));
--  }
--  
--  // Missing SOURCECRS
--  {
--  auto wkt = "COORDINATEOPERATION[\"transformationName\",\n"
--  "    TARGETCRS[" +
--  dst_wkt + "],\n"
--  "    METHOD[\"operationMethodName\"],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }
--  
--  // Invalid content in SOURCECRS
--  {
--  auto wkt = "COORDINATEOPERATION[\"transformationName\",\n"
--  "    SOURCECRS[FOO],\n"
--  "    TARGETCRS[" +
--  dst_wkt + "],\n"
--  "    METHOD[\"operationMethodName\"],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }
--  
--  // Missing TARGETCRS
--  {
--  auto wkt = "COORDINATEOPERATION[\"transformationName\",\n"
--  "    SOURCECRS[" +
--  src_wkt + "],\n"
--  "    METHOD[\"operationMethodName\"],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }
--  
--  // Invalid content in TARGETCRS
--  {
--  auto wkt = "COORDINATEOPERATION[\"transformationName\",\n"
--  "    SOURCECRS[" +
--  src_wkt + "],\n"
--  "    TARGETCRS[FOO],\n"
--  "    METHOD[\"operationMethodName\"],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }
--  
--  // Missing METHOD
--  {
--  auto wkt = "COORDINATEOPERATION[\"transformationName\",\n"
--  "    SOURCECRS[" +
--  src_wkt + "],\n"
--  "    TARGETCRS[" +
--  dst_wkt + "]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }
--  
--  // Invalid METHOD
--  {
--  auto wkt = "COORDINATEOPERATION[\"transformationName\",\n"
--  "    SOURCECRS[" +
--  src_wkt + "],\n"
--  "    TARGETCRS[" +
--  dst_wkt + "],\n"
--  "    METHOD[],\n"
--  "    PARAMETERFILE[\"paramName\",\"foo.bin\"]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }      
   end wkt_parse_invalid_COORDINATEOPERATION;

   procedure wkt_parse_invalid_CONCATENATEDOPERATION (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  // No STEP
--  EXPECT_THROW(WKTParser().createFromWKT("CONCATENATEDOPERATION[\"name\"]"),
--  ParsingException);
--  
--  auto transf_1 = Transformation::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "transf_1"),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4326),
--  nn_static_pointer_cast<CRS>(GeographicCRS::EPSG_4807), nullptr,
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "operationMethodName"),
--  std::vector<OperationParameterNNPtr>{OperationParameter::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "paramName"))},
--  std::vector<ParameterValueNNPtr>{
--  ParameterValue::createFilename("foo.bin")},
--  std::vector<PositionalAccuracyNNPtr>());
--  
--  // One single STEP
--  {
--  auto wkt =
--  "CONCATENATEDOPERATION[\"name\",\n"
--  "    SOURCECRS[" +
--  transf_1->sourceCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    TARGETCRS[" +
--  transf_1->targetCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    STEP[" +
--  transf_1->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    ID[\"codeSpace\",\"code\"],\n"
--  "    REMARK[\"my remarks\"]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }
--  
--  // empty STEP
--  {
--  auto wkt =
--  "CONCATENATEDOPERATION[\"name\",\n"
--  "    SOURCECRS[" +
--  transf_1->sourceCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    TARGETCRS[" +
--  transf_1->targetCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    STEP[],\n"
--  "    STEP[],\n"
--  "    ID[\"codeSpace\",\"code\"],\n"
--  "    REMARK[\"my remarks\"]]";
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }
--  
--  // Invalid content in STEP
--  {
--  auto wkt =
--  "CONCATENATEDOPERATION[\"name\",\n"
--  "    SOURCECRS[" +
--  transf_1->sourceCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    TARGETCRS[" +
--  transf_1->targetCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    STEP[" +
--  transf_1->sourceCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    STEP[" +
--  transf_1->sourceCRS()->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    ID[\"codeSpace\",\"code\"],\n"
--  "    REMARK[\"my remarks\"]]";
--  
--  EXPECT_THROW(WKTParser().createFromWKT(wkt), ParsingException);
--  }      
   end wkt_parse_invalid_CONCATENATEDOPERATION;

   procedure wkt_parse_invalid_BOUNDCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto projcrs = ProjectedCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "my PROJCRS"),
--  GeographicCRS::create(
--  PropertyMap().set(IdentifiedObject::NAME_KEY, "my GEOGCRS"),
--  GeodeticReferenceFrame::EPSG_6326,
--  EllipsoidalCS::createLatitudeLongitude(UnitOfMeasure::DEGREE)),
--  Conversion::createUTM(PropertyMap(), 31, true),
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE));
--  
--  auto valid_wkt =
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) + "],\n" +
--  "TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    ABRIDGEDTRANSFORMATION[\"foo\",\n"
--  "        METHOD[\"bar\"],PARAMETER[\"foo\",1.0]]]";
--  EXPECT_NO_THROW(WKTParser().createFromWKT(valid_wkt)) << valid_wkt;
--  
--  // Missing SOURCECRS
--  EXPECT_THROW(
--  WKTParser().createFromWKT("BOUNDCRS[TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(
--  WKTFormatter::create().get()) +
--  "],\n"
--  "    ABRIDGEDTRANSFORMATION[\"foo\",\n"
--  "        METHOD[\"bar\"],"
--  "PARAMETER[\"foo\",1.0]]]"),
--  ParsingException);
--  
--  // Invalid SOURCECRS
--  EXPECT_THROW(
--  WKTParser().createFromWKT("BOUNDCRS[SOURCECRS[foo], TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(
--  WKTFormatter::create().get()) +
--  "],\n"
--  "    ABRIDGEDTRANSFORMATION[\"foo\",\n"
--  "        METHOD[\"bar\"],"
--  "PARAMETER[\"foo\",1.0]]]"),
--  ParsingException);
--  
--  // Missing TARGETCRS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) +
--  "],\n"
--  "    ABRIDGEDTRANSFORMATION[\"foo\",\n"
--  "        METHOD[\"bar\"],"
--  "PARAMETER[\"foo\",1.0]]]"),
--  ParsingException);
--  
--  // Invalid TARGETCRS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) +
--  "],TARGETCRS[\"foo\"],\n"
--  "    ABRIDGEDTRANSFORMATION[\"foo\",\n"
--  "        METHOD[\"bar\"],"
--  "PARAMETER[\"foo\",1.0]]]"),
--  ParsingException);
--  
--  // Missing ABRIDGEDTRANSFORMATION
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) +
--  "],\n" + "TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(
--  WKTFormatter::create().get()) +
--  "]]"),
--  ParsingException);
--  
--  // Missing METHOD
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) +
--  "],\n" + "TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(
--  WKTFormatter::create().get()) +
--  "],"
--  "ABRIDGEDTRANSFORMATION[\"foo\"],"
--  "PARAMETER[\"foo\",1.0]]"),
--  ParsingException);
--  
--  // Invalid METHOD
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "BOUNDCRS[SOURCECRS[" +
--  projcrs->exportToWKT(WKTFormatter::create().get()) +
--  "],\n" + "TARGETCRS[" +
--  GeographicCRS::EPSG_4326->exportToWKT(
--  WKTFormatter::create().get()) +
--  "],"
--  "ABRIDGEDTRANSFORMATION[\"foo\",METHOD[],"
--  "PARAMETER[\"foo\",1.0]]]"),
--  ParsingException);      
   end wkt_parse_invalid_BOUNDCRS;

   procedure wkt_parse_invalid_TOWGS84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "GEOGCS[\"WGS 84\","
--  "    DATUM[\"WGS_1984\","
--  "        SPHEROID[\"WGS 84\",6378137,298.257223563],"
--  "        TOWGS84[0]],"
--  "    PRIMEM[\"Greenwich\",0],"
--  "    UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "GEOGCS[\"WGS 84\","
--  "    DATUM[\"WGS_1984\","
--  "        SPHEROID[\"WGS 84\",6378137,298.257223563],"
--  "        TOWGS84[0,0,0,0,0,0,\"foo\"]],"
--  "    PRIMEM[\"Greenwich\",0],"
--  "    UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);      
   end wkt_parse_invalid_TOWGS84;

   procedure wkt_parse_invalid_DerivedGeographicCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "GEODCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]]],\n"
--  "    DERIVINGCONVERSION[\"foo\",\n"
--  "        METHOD[\"bar\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"latitude\",north],\n"
--  "        AXIS[\"longitude\",east],\n"
--  "        UNIT[\"degree\",0.0174532925199433]]"));
--  
--  // Missing DERIVINGCONVERSION
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEODCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"latitude\",north],\n"
--  "        AXIS[\"longitude\",east],\n"
--  "        UNIT[\"degree\",0.0174532925199433]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEODCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]]],\n"
--  "    DERIVINGCONVERSION[\"foo\",\n"
--  "        METHOD[\"bar\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]]"),
--  ParsingException);
--  
--  // CS should be ellipsoidal given root node is GEOGCRS
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEOGCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEOGCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]]],\n"
--  "    DERIVINGCONVERSION[\"foo\",\n"
--  "        METHOD[\"bar\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[Cartesian,3],\n"
--  "        AXIS[\"(X)\",geocentricX],\n"
--  "        AXIS[\"(Y)\",geocentricY],\n"
--  "        AXIS[\"(Z)\",geocentricZ],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // CS should have 3 axis
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEODCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]]],\n"
--  "    DERIVINGCONVERSION[\"foo\",\n"
--  "        METHOD[\"bar\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(X)\",geocentricX],\n"
--  "        AXIS[\"(Y)\",geocentricY],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // Invalid CS type
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "GEODCRS[\"WMO Atlantic Pole\",\n"
--  "    BASEGEODCRS[\"WGS 84\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563]]],\n"
--  "    DERIVINGCONVERSION[\"foo\",\n"
--  "        METHOD[\"bar\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);      
   end wkt_parse_invalid_DerivedGeographicCRS;

   procedure wkt_parse_invalid_TemporalCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_NO_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[temporal,1],\n"
--  "        AXIS[\"time (T)\",future]]"));
--  
--  // Missing TDATUM
--  EXPECT_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    CS[temporal,1],\n"
--  "        AXIS[\"time (T)\",future]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]]]"),
--  ParsingException);
--  
--  // CS should be temporal
--  EXPECT_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(X)\",geocentricX],\n"
--  "        AXIS[\"(Y)\",geocentricY],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // CS should have 1 axis
--  EXPECT_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[temporal,2],\n"
--  "        AXIS[\"time (T)\",future],\n"
--  "        AXIS[\"time2 (T)\",future]]"),
--  ParsingException);
--  
--  // CS should have 1 axis
--  EXPECT_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[TemporalDateTime,2],\n"
--  "        AXIS[\"time (T)\",future],\n"
--  "        AXIS[\"time2 (T)\",future]]"),
--  ParsingException);
--  
--  // CS should have 1 axis
--  EXPECT_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[TemporalCount,2],\n"
--  "        AXIS[\"time (T)\",future],\n"
--  "        AXIS[\"time2 (T)\",future]]"),
--  ParsingException);
--  
--  // CS should have 1 axis
--  EXPECT_THROW(
--  WKTParser().createFromWKT("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[TemporalMeasure,2],\n"
--  "        AXIS[\"time (T)\",future],\n"
--  "        AXIS[\"time2 (T)\",future]]"),
--  ParsingException);      
   end wkt_parse_invalid_TemporalCRS;

   procedure wkt_parse_invalid_EngineeingCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_NO_THROW(
--  WKTParser().createFromWKT("ENGCRS[\"name\",\n"
--  "    EDATUM[\"name\"],\n"
--  "    CS[temporal,1],\n"
--  "        AXIS[\"time (T)\",future]]"));
--  
--  // Missing EDATUM
--  EXPECT_THROW(
--  WKTParser().createFromWKT("ENGCRS[\"name\",\n"
--  "    CS[temporal,1],\n"
--  "        AXIS[\"time (T)\",future]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(WKTParser().createFromWKT("ENGCRS[\"name\",\n"
--  "    EDATUM[\"name\"]]"),
--  ParsingException);      
   end wkt_parse_invalid_EngineeingCRS;

   procedure wkt_parse_invalid_LOCAL_CS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_THROW(
--  WKTParser().createFromWKT("LOCAL_CS[\"name\",\n"
--  "  LOCAL_DATUM[\"name\",1234],\n"
--  "  AXIS[\"Geodetic latitude\",NORTH],\n"
--  "  AXIS[\"Geodetic longitude\",EAST],\n"
--  "  AXIS[\"Ellipsoidal height\",UP]]"),
--  ParsingException);      
   end wkt_parse_invalid_LOCAL_CS;

   procedure wkt_parse_invalid_ParametricCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "PARAMETRICCRS[\"name\",\n"
--  "    PDATUM[\"name\"],\n"
--  "    CS[parametric,1],\n"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]]"));
--  
--  // Missing PDATUM
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "PARAMETRICCRS[\"name\",\n"
--  "    CS[parametric,1],\n"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(WKTParser().createFromWKT("PARAMETRICCRS[\"name\",\n"
--  "    PDATUM[\"name\"]]"),
--  ParsingException);
--  
--  // Invalid number of axis for CS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "PARAMETRICCRS[\"name\",\n"
--  "    PDATUM[\"name\"],\n"
--  "    CS[parametric,2],\n"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]]"),
--  ParsingException);
--  
--  // Invalid CS type
--  EXPECT_THROW(
--  WKTParser().createFromWKT("PARAMETRICCRS[\"name\",\n"
--  "    PDATUM[\"name\"],\n"
--  "    CS[temporal,1],\n"
--  "        AXIS[\"time (T)\",future]]"),
--  ParsingException);      
   end wkt_parse_invalid_ParametricCRS;

   procedure wkt_parse_invalid_DERIVEDPROJCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "DERIVEDPROJCRS[\"derived projectedCRS\",\n"
--  "    BASEPROJCRS[\"BASEPROJCRS\",\n"
--  "        BASEGEOGCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]]],\n"
--  "        CONVERSION[\"unnamed\",\n"
--  "            METHOD[\"PROJ unimplemented\"],\n"
--  "            PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        UNIT[\"metre\",1]]"));
--  
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "DERIVEDPROJCRS[\"derived projectedCRS\",\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // Missing DERIVINGCONVERSION
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "DERIVEDPROJCRS[\"derived projectedCRS\",\n"
--  "    BASEPROJCRS[\"BASEPROJCRS\",\n"
--  "        BASEGEOGCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]]],\n"
--  "        CONVERSION[\"unnamed\",\n"
--  "            METHOD[\"PROJ unimplemented\"],\n"
--  "            PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(
--  WKTParser().createFromWKT(
--  "DERIVEDPROJCRS[\"derived projectedCRS\",\n"
--  "    BASEPROJCRS[\"BASEPROJCRS\",\n"
--  "        BASEGEOGCRS[\"WGS 84\",\n"
--  "            DATUM[\"World Geodetic System 1984\",\n"
--  "                ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                    LENGTHUNIT[\"metre\",1]]]],\n"
--  "        CONVERSION[\"unnamed\",\n"
--  "            METHOD[\"PROJ unimplemented\"],\n"
--  "            PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]]"),
--  ParsingException);      
   end wkt_parse_invalid_DERIVEDPROJCRS;

   procedure wkt_parse_invalid_DerivedVerticalCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "VERTCRS[\"Derived vertCRS\",\n"
--  "    BASEVERTCRS[\"ODN height\",\n"
--  "        VDATUM[\"Ordnance Datum Newlyn\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up],\n"
--  "        UNIT[\"metre\",1]]"));
--  
--  // Missing DERIVINGCONVERSION
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "VERTCRS[\"Derived vertCRS\",\n"
--  "    BASEVERTCRS[\"ODN height\",\n"
--  "        VDATUM[\"Ordnance Datum Newlyn\"]],\n"
--  "    CS[vertical,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "VERTCRS[\"Derived vertCRS\",\n"
--  "    BASEVERTCRS[\"ODN height\",\n"
--  "        VDATUM[\"Ordnance Datum Newlyn\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]]"),
--  ParsingException);
--  
--  // Wrong CS type
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "VERTCRS[\"Derived vertCRS\",\n"
--  "    BASEVERTCRS[\"ODN height\",\n"
--  "        VDATUM[\"Ordnance Datum Newlyn\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[parametric,1],\n"
--  "        AXIS[\"gravity-related height (H)\",up],\n"
--  "        UNIT[\"metre\",1]]"),
--  ParsingException);      
   end wkt_parse_invalid_DerivedVerticalCRS;

   procedure wkt_parse_invalid_DerivedEngineeringCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "ENGCRS[\"Derived EngineeringCRS\",\n"
--  "    BASEENGCRS[\"Engineering CRS\",\n"
--  "        EDATUM[\"Engineering datum\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        LENGTHUNIT[\"metre\",1]]"));
--  
--  // Missing DERIVINGCONVERSION
--  EXPECT_THROW(
--  WKTParser().createFromWKT("ENGCRS[\"Derived EngineeringCRS\",\n"
--  "    BASEENGCRS[\"Engineering CRS\",\n"
--  "        EDATUM[\"Engineering datum\"]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east],\n"
--  "        AXIS[\"(N)\",north],\n"
--  "        LENGTHUNIT[\"metre\",1]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "ENGCRS[\"Derived EngineeringCRS\",\n"
--  "    BASEENGCRS[\"Engineering CRS\",\n"
--  "        EDATUM[\"Engineering datum\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]]"),
--  ParsingException);      
   end wkt_parse_invalid_DerivedEngineeringCRS;

   procedure wkt_parse_invalid_DerivedParametricCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "PARAMETRICCRS[\"Derived ParametricCRS\",\n"
--  "    BASEPARAMCRS[\"Parametric CRS\",\n"
--  "        PDATUM[\"Parametric datum\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[parametric,1],\n"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]]"));
--  
--  // Missing DERIVINGCONVERSION
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "PARAMETRICCRS[\"Derived ParametricCRS\",\n"
--  "    BASEPARAMCRS[\"Parametric CRS\",\n"
--  "        PDATUM[\"Parametric datum\"]],\n"
--  "    CS[parametric,1],\n"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "PARAMETRICCRS[\"Derived ParametricCRS\",\n"
--  "    BASEPARAMCRS[\"Parametric CRS\",\n"
--  "        PDATUM[\"Parametric datum\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]]"),
--  ParsingException);
--  
--  // Wrong CS type
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "PARAMETRICCRS[\"Derived ParametricCRS\",\n"
--  "    BASEPARAMCRS[\"Parametric CRS\",\n"
--  "        PDATUM[\"Parametric datum\"]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[TemporalDateTime,1],\n"
--  "        AXIS[\"time (T)\",future]]"),
--  ParsingException);      
   end wkt_parse_invalid_DerivedParametricCRS;

   procedure wkt_parse_invalid_DerivedTemporalCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_NO_THROW(WKTParser().createFromWKT(
--  "TIMECRS[\"Derived TemporalCRS\",\n"
--  "    BASETIMECRS[\"Temporal CRS\",\n"
--  "        TDATUM[\"Gregorian calendar\",\n"
--  "            CALENDAR[\"proleptic Gregorian\"],\n"
--  "            TIMEORIGIN[0000-01-01]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[TemporalDateTime,1],\n"
--  "        AXIS[\"time (T)\",future]]"));
--  
--  // Missing DERIVINGCONVERSION
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "TIMECRS[\"Derived TemporalCRS\",\n"
--  "    BASETIMECRS[\"Temporal CRS\",\n"
--  "        TDATUM[\"Gregorian calendar\",\n"
--  "            CALENDAR[\"proleptic Gregorian\"],\n"
--  "            TIMEORIGIN[0000-01-01]]],\n"
--  "    CS[TemporalDateTime,1],\n"
--  "        AXIS[\"time (T)\",future]]"),
--  ParsingException);
--  
--  // Missing CS
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "TIMECRS[\"Derived TemporalCRS\",\n"
--  "    BASETIMECRS[\"Temporal CRS\",\n"
--  "        TDATUM[\"Gregorian calendar\",\n"
--  "            CALENDAR[\"proleptic Gregorian\"],\n"
--  "            TIMEORIGIN[0000-01-01]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]]]"),
--  ParsingException);
--  
--  // Wrong CS type
--  EXPECT_THROW(WKTParser().createFromWKT(
--  "TIMECRS[\"Derived TemporalCRS\",\n"
--  "    BASETIMECRS[\"Temporal CRS\",\n"
--  "        TDATUM[\"Gregorian calendar\",\n"
--  "            CALENDAR[\"proleptic Gregorian\"],\n"
--  "            TIMEORIGIN[0000-01-01]]],\n"
--  "    DERIVINGCONVERSION[\"unnamed\",\n"
--  "        METHOD[\"PROJ unimplemented\"],\n"
--  "        PARAMETER[\"foo\",1.0,UNIT[\"metre\",1]]],\n"
--  "    CS[parametric,1],\n"
--  "        AXIS[\"pressure (hPa)\",up,\n"
--  "            PARAMETRICUNIT[\"HectoPascal\",100]]]"),
--  ParsingException);      
   end wkt_parse_invalid_DerivedTemporalCRS;

   procedure io_projstringformatter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("my_proj");
--  EXPECT_EQ(fmt->toString(), "+proj=my_proj");
--  }
--  
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("my_proj");
--  fmt->setCurrentStepInverted(true);
--  EXPECT_EQ(fmt->toString(), "+proj=pipeline +step +inv +proj=my_proj");
--  }
--  
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("my_proj1");
--  fmt->addStep("my_proj2");
--  EXPECT_EQ(fmt->toString(),
--  "+proj=pipeline +step +proj=my_proj1 +step +proj=my_proj2");
--  }
--  
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("my_proj1");
--  fmt->setCurrentStepInverted(true);
--  fmt->addStep("my_proj2");
--  EXPECT_EQ(
--  fmt->toString(),
--  "+proj=pipeline +step +inv +proj=my_proj1 +step +proj=my_proj2");
--  }
--  
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->startInversion();
--  fmt->addStep("my_proj1");
--  fmt->setCurrentStepInverted(true);
--  fmt->addStep("my_proj2");
--  fmt->stopInversion();
--  EXPECT_EQ(
--  fmt->toString(),
--  "+proj=pipeline +step +inv +proj=my_proj2 +step +proj=my_proj1");
--  }
--  
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->startInversion();
--  fmt->addStep("my_proj1");
--  fmt->setCurrentStepInverted(true);
--  fmt->startInversion();
--  fmt->addStep("my_proj2");
--  fmt->stopInversion();
--  fmt->stopInversion();
--  EXPECT_EQ(fmt->toString(),
--  "+proj=pipeline +step +proj=my_proj2 +step +proj=my_proj1");
--  }      
   end io_projstringformatter;

   procedure io_projstringformatter_helmert_3_param_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("helmert");
--  fmt->addParam("x", 0);
--  fmt->addParam("y", 0);
--  fmt->addParam("z", 0);
--  EXPECT_EQ(fmt->toString(), "+proj=noop");      
   end io_projstringformatter_helmert_3_param_noop;

   procedure io_projstringformatter_helmert_7_param_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("helmert");
--  fmt->addParam("x", 0);
--  fmt->addParam("y", 0);
--  fmt->addParam("z", 0);
--  fmt->addParam("rx", 0);
--  fmt->addParam("ry", 0);
--  fmt->addParam("rz", 0);
--  fmt->addParam("s", 0);
--  fmt->addParam("convention", "position_vector");
--  EXPECT_EQ(fmt->toString(), "+proj=noop");      
   end io_projstringformatter_helmert_7_param_noop;

   procedure io_projstringformatter_merge_consecutive_helmert_3_param (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("helmert");
--  fmt->addParam("x", 10);
--  fmt->addParam("y", 20);
--  fmt->addParam("z", 30);
--  fmt->addStep("helmert");
--  fmt->addParam("x", -1);
--  fmt->addParam("y", -2);
--  fmt->addParam("z", -3);
--  EXPECT_EQ(fmt->toString(), "+proj=helmert +x=9 +y=18 +z=27");      
   end io_projstringformatter_merge_consecutive_helmert_3_param;

   procedure io_projstringformatter_merge_consecutive_helmert_3_param_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("helmert");
--  fmt->addParam("x", 10);
--  fmt->addParam("y", 20);
--  fmt->addParam("z", 30);
--  fmt->addStep("helmert");
--  fmt->addParam("x", -10);
--  fmt->addParam("y", -20);
--  fmt->addParam("z", -30);
--  EXPECT_EQ(fmt->toString(), "+proj=noop");      
   end io_projstringformatter_merge_consecutive_helmert_3_param_noop;

   procedure io_projstringformatter_cart_grs80_wgs84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("cart");
--  fmt->addParam("ellps", "WGS84");
--  fmt->addStep("cart");
--  fmt->setCurrentStepInverted(true);
--  fmt->addParam("ellps", "GRS80");
--  EXPECT_EQ(fmt->toString(), "+proj=noop");      
   end io_projstringformatter_cart_grs80_wgs84;

   procedure io_projstringformatter_axisswap_unitconvert_axisswap (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("axisswap");
--  fmt->addParam("order", "2,1");
--  fmt->addStep("unitconvert");
--  fmt->addParam("xy_in", "rad");
--  fmt->addParam("xy_out", "deg");
--  fmt->addStep("axisswap");
--  fmt->addParam("order", "2,1");
--  EXPECT_EQ(fmt->toString(), "+proj=unitconvert +xy_in=rad +xy_out=deg");      
   end io_projstringformatter_axisswap_unitconvert_axisswap;

   procedure io_projstringformatter_optim_hgridshift_vgridshift_hgridshift_inv (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // Nominal case
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo");
--  
--  fmt->addStep("vgridshift");
--  fmt->addParam("grids", "bar");
--  
--  fmt->startInversion();
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo");
--  fmt->stopInversion();
--  
--  EXPECT_EQ(fmt->toString(),
--  "+proj=pipeline "
--  "+step +proj=push +v_1 +v_2 "
--  "+step +proj=hgridshift +grids=foo +omit_inv "
--  "+step +proj=vgridshift +grids=bar "
--  "+step +inv +proj=hgridshift +grids=foo +omit_fwd "
--  "+step +proj=pop +v_1 +v_2");
--  }
--  
--  // Test omit_fwd->omit_inv when inversing the pipeline
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->startInversion();
--  fmt->ingestPROJString("+proj=hgridshift +grids=foo +omit_fwd");
--  fmt->stopInversion();
--  
--  EXPECT_EQ(fmt->toString(),
--  "+proj=pipeline "
--  "+step +inv +proj=hgridshift +grids=foo +omit_inv");
--  }
--  
--  // Test omit_inv->omit_fwd when inversing the pipeline
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->startInversion();
--  fmt->ingestPROJString("+proj=hgridshift +grids=foo +omit_inv");
--  fmt->stopInversion();
--  
--  EXPECT_EQ(fmt->toString(),
--  "+proj=pipeline "
--  "+step +inv +proj=hgridshift +grids=foo +omit_fwd");
--  }
--  
--  // Variant with first hgridshift inverted, and second forward
--  {
--  auto fmt = PROJStringFormatter::create();
--  
--  fmt->startInversion();
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo");
--  fmt->stopInversion();
--  
--  fmt->addStep("vgridshift");
--  fmt->addParam("grids", "bar");
--  
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo");
--  
--  EXPECT_EQ(fmt->toString(),
--  "+proj=pipeline "
--  "+step +proj=push +v_1 +v_2 "
--  "+step +inv +proj=hgridshift +grids=foo +omit_inv "
--  "+step +proj=vgridshift +grids=bar "
--  "+step +proj=hgridshift +grids=foo +omit_fwd "
--  "+step +proj=pop +v_1 +v_2");
--  }
--  
--  // Do not apply ! not same grid name
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo");
--  
--  fmt->addStep("vgridshift");
--  fmt->addParam("grids", "bar");
--  
--  fmt->startInversion();
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo2");
--  fmt->stopInversion();
--  
--  EXPECT_EQ(fmt->toString(), "+proj=pipeline "
--  "+step +proj=hgridshift +grids=foo "
--  "+step +proj=vgridshift +grids=bar "
--  "+step +inv +proj=hgridshift +grids=foo2");
--  }
--  
--  // Do not apply ! missing inversion
--  {
--  auto fmt = PROJStringFormatter::create();
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo");
--  
--  fmt->addStep("vgridshift");
--  fmt->addParam("grids", "bar");
--  
--  fmt->addStep("hgridshift");
--  fmt->addParam("grids", "foo");
--  
--  EXPECT_EQ(fmt->toString(), "+proj=pipeline "
--  "+step +proj=hgridshift +grids=foo "
--  "+step +proj=vgridshift +grids=bar "
--  "+step +proj=hgridshift +grids=foo");
--  }      
   end io_projstringformatter_optim_hgridshift_vgridshift_hgridshift_inv;

   procedure io_projparse_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        ID[\"EPSG\",6326]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8901]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]]";
--  {
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=longlat +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  crs->exportToWKT(f.get());
--  EXPECT_EQ(f->toString(), expected);
--  }
--  
--  {
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=WGS84 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  crs->exportToWKT(f.get());
--  EXPECT_EQ(f->toString(), expected);
--  }      
   end io_projparse_longlat;

   procedure io_projparse_longlat_datum_NAD83 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=NAD83 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  crs->exportToWKT(f.get());
--  EXPECT_EQ(f->toString(),
--  "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"North American Datum 1983\",\n"
--  "        ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        ID[\"EPSG\",6269]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8901]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]]");      
   end io_projparse_longlat_datum_NAD83;

   procedure io_projparse_longlat_datum_NAD27 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=NAD27 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  crs->exportToWKT(f.get());
--  EXPECT_EQ(f->toString(),
--  "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"North American Datum 1927\",\n"
--  "        ELLIPSOID[\"Clarke 1866\",6378206.4,294.978698213898,\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        ID[\"EPSG\",6267]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8901]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]]");      
   end io_projparse_longlat_datum_NAD27;

   procedure io_projparse_longlat_datum_other (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=carthage +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  crs->exportToWKT(f.get());
--  EXPECT_EQ(f->toString(),
--  "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"Carthage\",\n"
--  "        ELLIPSOID[\"Clarke 1880 (IGN)\",6378249.2,293.4660213,\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        ID[\"EPSG\",6223]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8901]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433,\n"
--  "                ID[\"EPSG\",9122]]]]");      
   end io_projparse_longlat_datum_other;

   procedure io_projparse_longlat_ellps_WGS84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=WGS84 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"Unknown based on WGS84 ellipsoid\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_longlat_ellps_WGS84;

   procedure io_projparse_longlat_ellps_GRS80 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"Unknown based on GRS80 ellipsoid\",\n"
--  "        ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_longlat_ellps_GRS80;

   procedure io_projparse_longlat_a_b (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=2 +b=1.5 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"unknown\",\n"
--  "        ELLIPSOID[\"unknown\",2,4,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Reference meridian\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  EXPECT_EQ(f->toString(), expected);
--  EXPECT_EQ(crs->ellipsoid()->celestialBody(), "Non-Earth body");      
   end io_projparse_longlat_a_b;

   procedure io_projparse_longlat_a_rf_WGS84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=6378137 +rf=298.257223563 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"unknown\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Greenwich\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  EXPECT_EQ(f->toString(), expected);
--  EXPECT_EQ(crs->ellipsoid()->celestialBody(), Ellipsoid::EARTH);      
   end io_projparse_longlat_a_rf_WGS84;

   procedure io_projparse_longlat_a_rf (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=2 +rf=4 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"unknown\",\n"
--  "        ELLIPSOID[\"unknown\",2,4,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Reference meridian\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_longlat_a_rf;

   procedure io_projparse_longlat_a_f_zero (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=2 +f=0 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"unknown\",\n"
--  "        ELLIPSOID[\"unknown\",2,0,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Reference meridian\",0,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_longlat_a_f_zero;

   procedure io_projparse_longlat_a_f_non_zero (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=2 +f=0.5 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->ellipsoid()->semiMajorAxis().getSIValue(), 2);
--  auto rf = crs->ellipsoid()->computedInverseFlattening();
--  EXPECT_EQ(rf, 2) << rf;      
   end io_projparse_longlat_a_f_non_zero;

   procedure io_projparse_longlat_a_e (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=2 +e=0.5 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->ellipsoid()->semiMajorAxis().getSIValue(), 2);
--  auto rf = crs->ellipsoid()->computedInverseFlattening();
--  EXPECT_NEAR(rf, 7.46410161513775, 1e-14) << rf;      
   end io_projparse_longlat_a_e;

   procedure io_projparse_longlat_a_es (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=2 +es=0.5 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->ellipsoid()->semiMajorAxis().getSIValue(), 2);
--  auto rf = crs->ellipsoid()->computedInverseFlattening();
--  EXPECT_NEAR(rf, 3.4142135623730958, 1e-14) << rf;      
   end io_projparse_longlat_a_es;

   procedure io_projparse_longlat_R (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=longlat +R=2 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_TRUE(crs->ellipsoid()->isSphere());
--  EXPECT_EQ(crs->ellipsoid()->semiMajorAxis().getSIValue(), 2);      
   end io_projparse_longlat_R;

   procedure io_projparse_longlat_a (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=longlat +a=2 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_TRUE(crs->ellipsoid()->isSphere());
--  EXPECT_EQ(crs->ellipsoid()->semiMajorAxis().getSIValue(), 2);      
   end io_projparse_longlat_a;

   procedure io_projparse_longlat_a_override_ellps (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=2 +ellps=WGS84 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_TRUE(!crs->ellipsoid()->isSphere());
--  EXPECT_EQ(crs->ellipsoid()->semiMajorAxis().getSIValue(), 2);
--  EXPECT_EQ(crs->ellipsoid()->computedInverseFlattening(), 298.25722356300003)
--  << crs->ellipsoid()->computedInverseFlattening();      
   end io_projparse_longlat_a_override_ellps;

   procedure io_projparse_longlat_pm_paris (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +pm=paris +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"Unknown based on WGS 84 ellipsoid\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Paris\",2.5969213,\n"
--  "        ANGLEUNIT[\"grad\",0.015707963267949]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_longlat_pm_paris;

   procedure io_projparse_longlat_pm_ferro (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=bessel +pm=ferro +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected =
--  "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"Unknown based on Bessel 1841 ellipsoid\",\n"
--  "        ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"Ferro\",-17.6666666666667,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_longlat_pm_ferro;

   procedure io_projparse_longlat_pm_numeric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +pm=2.5 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "GEODCRS[\"unknown\",\n"
--  "    DATUM[\"Unknown based on WGS 84 ellipsoid\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "            LENGTHUNIT[\"metre\",1]]],\n"
--  "    PRIMEM[\"unknown\",2.5,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            ORDER[1],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            ORDER[2],\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]]";
--  
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_longlat_pm_numeric;

   procedure io_projparse_longlat_pm_overriding_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  // It is arguable that we allow the prime meridian of a datum defined by
--  // its name to be overridden, but this is found at least in a regression
--  // test
--  // of GDAL. So let's keep the ellipsoid part of the datum in that case and
--  // use the specified prime meridian.
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=WGS84 +pm=ferro +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->datum()->nameStr(), "Unknown based on WGS 84 ellipsoid");
--  EXPECT_EQ(crs->datum()->primeMeridian()->nameStr(), "Ferro");      
   end io_projparse_longlat_pm_overriding_datum;

   procedure io_projparse_longlat_complex (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input =
--  "+step +proj=longlat +ellps=clrk80ign "
--  "+pm=paris +step +proj=unitconvert +xy_in=rad +xy_out=grad +step "
--  "+proj=axisswap +order=2,1";
--  auto obj = PROJStringParser().createFromPROJString(
--  "+type=crs +proj=pipeline " + input);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad " +
--  input);      
   end io_projparse_longlat_complex;

   procedure io_projparse_longlat_towgs84_3_terms (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +towgs84=1.2,2,3 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Geocentric translations") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"X-axis translation\",1.2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Y-axis translation\",2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Z-axis translation\",3") !=
--  std::string::npos)
--  << wkt;
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=longlat +ellps=GRS80 +towgs84=1.2,2,3,0,0,0,0 +no_defs "
--  "+type=crs");      
   end io_projparse_longlat_towgs84_3_terms;

   procedure io_projparse_longlat_towgs84_7_terms (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +towgs84=1.2,2,3,4,5,6,7 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Position Vector transformation") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"X-axis translation\",1.2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Y-axis translation\",2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Z-axis translation\",3") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Scale difference\",1.000007") !=
--  std::string::npos)
--  << wkt;
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=longlat +ellps=GRS80 +towgs84=1.2,2,3,4,5,6,7 +no_defs "
--  "+type=crs");      
   end io_projparse_longlat_towgs84_7_terms;

   procedure io_projparse_longlat_nadgrids (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +nadgrids=foo.gsb +type=crs");
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"NTv2\"") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETERFILE[\"Latitude and longitude difference "
--  "file\",\"foo.gsb\"]") != std::string::npos)
--  << wkt;
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=longlat +ellps=GRS80 +nadgrids=foo.gsb +no_defs +type=crs");      
   end io_projparse_longlat_nadgrids;

   procedure io_projparse_longlat_nadgrids_towgs84_ignored (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +towgs84=1,2,3 +nadgrids=foo.gsb "
--  "+type=crs");
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_TRUE(dynamic_cast<GeographicCRS *>(crs->baseCRS().get()) != nullptr);      
   end io_projparse_longlat_nadgrids_towgs84_ignored;

   procedure io_projparse_longlat_geoidgrids (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +geoidgrids=foo.gtx +type=crs");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find(
--  "ABRIDGEDTRANSFORMATION[\"unknown to WGS84 ellipsoidal height\"") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETERFILE[\"Geoid (height correction) model "
--  "file\",\"foo.gtx\"]") != std::string::npos)
--  << wkt;
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=longlat +ellps=GRS80 +geoidgrids=foo.gtx +vunits=m +no_defs "
--  "+type=crs");      
   end io_projparse_longlat_geoidgrids;

   procedure io_projparse_longlat_geoidgrids_vunits (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +geoidgrids=foo.gtx +vunits=ft +type=crs");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("AXIS[\"gravity-related height "
--  "(H)\",up,LENGTHUNIT[\"foot\",0.3048]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_longlat_geoidgrids_vunits;

   procedure io_projparse_longlat_vunits (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +vunits=ft +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("AXIS[\"ellipsoidal height "
--  "(h)\",up,ORDER[3],LENGTHUNIT[\"foot\",0.3048]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_longlat_vunits;

   procedure io_projparse_vunits (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString("+vunits=ft +type=crs");
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+vunits=ft +no_defs +type=crs");      
   end io_projparse_vunits;

   procedure io_projparse_vto_meter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+vto_meter=2 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+vto_meter=2 +no_defs +type=crs");      
   end io_projparse_vto_meter;

   procedure io_projparse_longlat_axis_enu (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +axis=enu +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("AXIS[\"longitude\",east,ORDER[1]") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("AXIS[\"latitude\",north,ORDER[2]") !=
--  std::string::npos)
--  << wkt;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=2,1");      
   end io_projparse_longlat_axis_enu;

   procedure io_projparse_longlat_axis_neu (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +axis=neu +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("AXIS[\"latitude\",north,ORDER[1]") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("AXIS[\"longitude\",east,ORDER[2]") !=
--  std::string::npos)
--  << wkt;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=noop");      
   end io_projparse_longlat_axis_neu;

   procedure io_projparse_longlat_axis_swu (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 +axis=swu +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("AXIS[\"latitude\",south,ORDER[1]") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("AXIS[\"longitude\",west,ORDER[2]") !=
--  std::string::npos)
--  << wkt;
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=axisswap +order=-2,-1");      
   end io_projparse_longlat_axis_swu;

   procedure io_projparse_longlat_unitconvert_deg (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+type=crs +proj=pipeline +step +proj=longlat +ellps=GRS80 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=deg");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=axisswap +order=2,1");      
   end io_projparse_longlat_unitconvert_deg;

   procedure io_projparse_longlat_unitconvert_grad (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+type=crs +proj=pipeline +step +proj=longlat +ellps=GRS80 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=grad");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=grad");      
   end io_projparse_longlat_unitconvert_grad;

   procedure io_projparse_longlat_unitconvert_rad (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+type=crs +proj=pipeline +step +proj=longlat +ellps=GRS80 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=rad");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad");      
   end io_projparse_longlat_unitconvert_rad;

   procedure io_projparse_longlat_axisswap (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  for (auto order1 : {"1", "-1", "2", "-2"}) {
--  for (auto order2 : {"1", "-1", "2", "-2"}) {
--  if (std::abs(atoi(order1) * atoi(order2)) == 2 &&
--  !(atoi(order1) == 1 && atoi(order2) == 2)) {
--  auto str =
--  "+type=crs +proj=pipeline +step +proj=longlat +ellps=GRS80 "
--  "+step +proj=axisswap +order=" +
--  std::string(order1) + "," + order2;
--  auto obj = PROJStringParser().createFromPROJString(str);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(
--  op->exportToPROJString(PROJStringFormatter::create().get()),
--  (atoi(order1) == 2 && atoi(order2) == 1)
--  ? "+proj=noop"
--  : "+proj=pipeline +step +proj=axisswap +order=2,1 "
--  "+step +proj=axisswap +order=" +
--  std::string(order1) + "," + order2);
--  }
--  }
--  }      
   end io_projparse_longlat_axisswap;

   procedure io_projparse_tmerc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=tmerc +x_0=1 +lat_0=1 +k_0=2 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected = "PROJCRS[\"unknown\",\n"
--  "    BASEGEODCRS[\"unknown\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    CONVERSION[\"unknown\",\n"
--  "        METHOD[\"Transverse Mercator\",\n"
--  "            ID[\"EPSG\",9807]],\n"
--  "        PARAMETER[\"Latitude of natural origin\",1,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8801]],\n"
--  "        PARAMETER[\"Longitude of natural origin\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8802]],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",2,\n"
--  "            SCALEUNIT[\"unity\",1],\n"
--  "            ID[\"EPSG\",8805]],\n"
--  "        PARAMETER[\"False easting\",1,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8807]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"(E)\",east,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        AXIS[\"(N)\",north,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1]]]";
--  
--  EXPECT_EQ(f->toString(), expected);      
   end io_projparse_tmerc;

   procedure io_projparse_tmerc_south_oriented (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=tmerc +axis=wsu +x_0=1 +lat_0=1 +k_0=2 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  crs->exportToWKT(f.get());
--  auto expected =
--  "PROJCRS[\"unknown\",\n"
--  "    BASEGEODCRS[\"unknown\",\n"
--  "        DATUM[\"World Geodetic System 1984\",\n"
--  "            ELLIPSOID[\"WGS 84\",6378137,298.257223563,\n"
--  "                LENGTHUNIT[\"metre\",1]]],\n"
--  "        PRIMEM[\"Greenwich\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433]]],\n"
--  "    CONVERSION[\"unknown\",\n"
--  "        METHOD[\"Transverse Mercator (South Orientated)\",\n"
--  "            ID[\"EPSG\",9808]],\n"
--  "        PARAMETER[\"Latitude of natural origin\",1,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8801]],\n"
--  "        PARAMETER[\"Longitude of natural origin\",0,\n"
--  "            ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "            ID[\"EPSG\",8802]],\n"
--  "        PARAMETER[\"Scale factor at natural origin\",2,\n"
--  "            SCALEUNIT[\"unity\",1],\n"
--  "            ID[\"EPSG\",8805]],\n"
--  "        PARAMETER[\"False easting\",1,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8806]],\n"
--  "        PARAMETER[\"False northing\",0,\n"
--  "            LENGTHUNIT[\"metre\",1],\n"
--  "            ID[\"EPSG\",8807]]],\n"
--  "    CS[Cartesian,2],\n"
--  "        AXIS[\"westing\",west,\n"
--  "            ORDER[1],\n"
--  "            LENGTHUNIT[\"metre\",1]],\n"
--  "        AXIS[\"southing\",south,\n"
--  "            ORDER[2],\n"
--  "            LENGTHUNIT[\"metre\",1]]]";
--  
--  EXPECT_EQ(f->toString(), expected);
--  
--  obj = PROJStringParser().createFromPROJString(
--  "+type=crs +proj=pipeline +step +proj=tmerc +x_0=1 +lat_0=1 +k_0=2 "
--  "+step "
--  "+proj=axisswap +order=-1,-2");
--  crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->derivingConversion()->method()->nameStr(),
--  "Transverse Mercator (South Orientated)");      
   end io_projparse_tmerc_south_oriented;

   procedure io_projparse_lcc_as_lcc1sp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=lcc +lat_0=45 +lat_1=45 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("Lambert Conic Conformal (1SP)") != std::string::npos)
--  << wkt;      
   end io_projparse_lcc_as_lcc1sp;

   procedure io_projparse_lcc_as_lcc2sp (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=lcc +lat_0=45 +lat_1=46 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("Lambert Conic Conformal (2SP)") != std::string::npos)
--  << wkt;      
   end io_projparse_lcc_as_lcc2sp;

   procedure io_projparse_lcc_as_lcc2sp_michigan (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=lcc +lat_0=45 +lat_1=46 +k_0=1.02 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("Lambert Conic Conformal (2SP Michigan)") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_lcc_as_lcc2sp_michigan;

   procedure io_projparse_aeqd_guam (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=aeqd +guam +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("Guam Projection") != std::string::npos) << wkt;      
   end io_projparse_aeqd_guam;

   procedure io_projparse_cea_ellipsoidal (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=cea +ellps=GRS80 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find(
--  "METHOD[\"Lambert Cylindrical Equal Area\",ID[\"EPSG\",9835]]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_cea_ellipsoidal;

   procedure io_projparse_cea_ellipsoidal_with_k_0 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=cea +ellps=GRS80 +k_0=0.99 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find("PARAMETER[\"Latitude of 1st standard parallel\",8.1365") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_cea_ellipsoidal_with_k_0;

   procedure io_projparse_geos_sweep_x (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=geos +sweep=x +h=1 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("Geostationary Satellite (Sweep X)") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_geos_sweep_x;

   procedure io_projparse_geos_sweep_y (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=geos +h=1 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("Geostationary Satellite (Sweep Y)") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_geos_sweep_y;

   procedure io_projparse_omerc_nouoff (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=omerc +no_uoff +alpha=2 +gamma=3 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Hotine Oblique Mercator (variant "
--  "A)\",ID[\"EPSG\",9812]]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Azimuth of initial line\",2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Angle from Rectified to Skew Grid\",3") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_omerc_nouoff;

   procedure io_projparse_omerc_tpno (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=omerc +lat_1=1 +lat_2=2 +lon_1=3 +lon_2=4 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find(
--  "METHOD[\"Hotine Oblique Mercator Two Point Natural Origin\"]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_omerc_tpno;

   procedure io_projparse_omerc_variant_b (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=omerc +alpha=2 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Hotine Oblique Mercator (variant "
--  "B)\",ID[\"EPSG\",9815]]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Angle from Rectified to Skew Grid\",2") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_omerc_variant_b;

   procedure io_projparse_somerc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=somerc +lat_0=1 +lon_0=2 +k_0=3 +x_0=4 +y_0=5 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Hotine Oblique Mercator (variant "
--  "B)\",ID[\"EPSG\",9815]]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Latitude of projection centre\",1") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Longitude of projection centre\",2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Scale factor on initial line\",3") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Azimuth of initial line\",90") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Angle from Rectified to Skew Grid\",90") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Easting at projection centre\",4") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Northing at projection centre\",5") !=
--  std::string::npos)
--  << wkt;
--  
--  auto wkt1 = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  EXPECT_TRUE(wkt1.find("EXTENSION") == std::string::npos) << wkt1;      
   end io_projparse_somerc;

   procedure io_projparse_krovak (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=krovak +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find("METHOD[\"Krovak (North Orientated)\",ID[\"EPSG\",1041]]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_krovak;

   procedure io_projparse_krovak_axis_swu (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=krovak +axis=swu +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Krovak\",ID[\"EPSG\",9819]]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_krovak_axis_swu;

   procedure io_projparse_etmerc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=etmerc +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto wkt2 = crs->exportToWKT(
--  &WKTFormatter::create()->simulCurNodeHasId().setMultiLine(false));
--  EXPECT_TRUE(
--  wkt2.find("METHOD[\"Transverse Mercator\",ID[\"EPSG\",9807]]") !=
--  std::string::npos)
--  << wkt2;
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=tmerc +lat_0=0 +lon_0=0 +k=1 +x_0=0 +y_0=0 "
--  "+datum=WGS84 +units=m +no_defs +type=crs");
--  
--  auto wkt1 = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  EXPECT_TRUE(wkt1.find("EXTENSION[\"PROJ4\"") == std::string::npos) << wkt1;      
   end io_projparse_etmerc;

   procedure io_projparse_tmerc_approx (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=tmerc +approx +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto wkt2 = crs->exportToWKT(
--  &WKTFormatter::create()->simulCurNodeHasId().setMultiLine(false));
--  EXPECT_TRUE(
--  wkt2.find("METHOD[\"Transverse Mercator\",ID[\"EPSG\",9807]]") !=
--  std::string::npos)
--  << wkt2;
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=tmerc +approx +lat_0=0 +lon_0=0 +k=1 +x_0=0 +y_0=0 "
--  "+datum=WGS84 +units=m +no_defs +type=crs");
--  
--  auto wkt1 = crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get());
--  EXPECT_TRUE(wkt1.find("EXTENSION[\"PROJ4\",\"+proj=tmerc +approx +lat_0=0 "
--  "+lon_0=0 +k=1 +x_0=0 +y_0=0 +datum=WGS84 +units=m "
--  "+no_defs\"]") != std::string::npos)
--  << wkt1;      
   end io_projparse_tmerc_approx;

   procedure io_projparse_merc_variant_B (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=merc +lat_ts=1 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find("METHOD[\"Mercator (variant B)\",ID[\"EPSG\",9805]]") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Latitude of 1st standard parallel\",1") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_merc_variant_B;

   procedure io_projparse_merc_google_mercator (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projString =
--  "+proj=merc +a=6378137 +b=6378137 +lat_ts=0 +lon_0=0 +x_0=0 +y_0=0 "
--  "+k=1 +units=m +nadgrids=@null +no_defs +type=crs";
--  auto obj = PROJStringParser().createFromPROJString(projString);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Popular Visualisation Pseudo "
--  "Mercator\",ID[\"EPSG\",1024]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("DATUM[\"World Geodetic System 1984\"") !=
--  std::string::npos)
--  << wkt;
--  
--  EXPECT_EQ(
--  replaceAll(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  " +wktext", ""),
--  projString);      
   end io_projparse_merc_google_mercator;

   procedure io_projparse_merc_not_quite_google_mercator (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto projString =
--  "+proj=merc +a=6378137 +b=6378137 +lat_ts=0 +lon_0=10 +x_0=0 +y_0=0 "
--  "+k=1 +units=m +nadgrids=@null +no_defs +type=crs";
--  auto obj = PROJStringParser().createFromPROJString(projString);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Popular Visualisation Pseudo "
--  "Mercator\",ID[\"EPSG\",1024]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("DATUM[\"unknown\",") != std::string::npos) << wkt;
--  
--  EXPECT_EQ(
--  replaceAll(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  " +wktext", ""),
--  projString);      
   end io_projparse_merc_not_quite_google_mercator;

   procedure io_projparse_merc_stere_polar_variant_B (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=stere +lat_0=90 +lat_ts=70 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find(
--  "METHOD[\"Polar Stereographic (variant B)\",ID[\"EPSG\",9829]]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_merc_stere_polar_variant_B;

   procedure io_projparse_merc_stere_polar_variant_A (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=stere +lat_0=-90 +k=0.994 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find(
--  "METHOD[\"Polar Stereographic (variant A)\",ID[\"EPSG\",9810]]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_merc_stere_polar_variant_A;

   procedure io_projparse_merc_stere_polar_k_and_lat_ts (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=stere +lat_0=90 +lat_ts=90 +k=1 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto wkt = crs->exportToWKT(
--  &(WKTFormatter::create()->simulCurNodeHasId().setMultiLine(false)));
--  EXPECT_TRUE(
--  wkt.find(
--  "METHOD[\"Polar Stereographic (variant B)\",ID[\"EPSG\",9829]]") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Latitude of standard parallel\",90") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=stere +lat_0=90 +lat_ts=90 +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 "
--  "+units=m +no_defs +type=crs");      
   end io_projparse_merc_stere_polar_k_and_lat_ts;

   procedure io_projparse_merc_stere_polar_k_and_lat_ts_incompatible (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=stere +lat_0=90 +lat_ts=70 +k=0.994 +type=crs"),
--  ParsingException);      
   end io_projparse_merc_stere_polar_k_and_lat_ts_incompatible;

   procedure io_projparse_merc_stere (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=stere +lat_0=30 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("METHOD[\"Stereographic\"]") != std::string::npos)
--  << wkt;      
   end io_projparse_merc_stere;

   procedure io_projparse_utm (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj =
--  PROJStringParser().createFromPROJString("+proj=utm +zone=1 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("CONVERSION[\"UTM zone 1N\",METHOD[\"Transverse "
--  "Mercator\",ID[\"EPSG\",9807]]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Longitude of natural origin\",-177,") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"False northing\",0,") != std::string::npos) << wkt;      
   end io_projparse_utm;

   procedure io_projparse_utm_south (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=utm +zone=1 +south +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("CONVERSION[\"UTM zone 1S\",METHOD[\"Transverse "
--  "Mercator\",ID[\"EPSG\",9807]]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"Longitude of natural origin\",-177,") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("\"False northing\",10000000,") != std::string::npos)
--  << wkt;      
   end io_projparse_utm_south;

   procedure io_projparse_laea_north_pole (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=laea +lat_0=90 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("AXIS[\"(E)\",south") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("AXIS[\"(N)\",south") != std::string::npos) << wkt;      
   end io_projparse_laea_north_pole;

   procedure io_projparse_laea_south_pole (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=laea +lat_0=-90 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("AXIS[\"(E)\",north") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("AXIS[\"(N)\",north") != std::string::npos) << wkt;      
   end io_projparse_laea_south_pole;

   procedure io_projparse_laea_spherical (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=laea +R=6371228 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->derivingConversion()->method()->getEPSGCode(),
--  EPSG_CODE_METHOD_LAMBERT_AZIMUTHAL_EQUAL_AREA_SPHERICAL);
--  
--  auto crs2 = ProjectedCRS::create(
--  PropertyMap(), crs->baseCRS(),
--  Conversion::createLambertAzimuthalEqualArea(
--  PropertyMap(), Angle(0), Angle(0), Length(0), Length(0)),
--  crs->coordinateSystem());
--  EXPECT_EQ(crs2->derivingConversion()->method()->getEPSGCode(),
--  EPSG_CODE_METHOD_LAMBERT_AZIMUTHAL_EQUAL_AREA);
--  
--  EXPECT_TRUE(
--  crs->isEquivalentTo(crs2.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs2->isEquivalentTo(crs.get(), IComparable::Criterion::EQUIVALENT));      
   end io_projparse_laea_spherical;

   procedure io_projparse_eqc_spherical (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=eqc +R=6371228 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->derivingConversion()->method()->getEPSGCode(),
--  EPSG_CODE_METHOD_EQUIDISTANT_CYLINDRICAL_SPHERICAL);
--  
--  auto crs2 = ProjectedCRS::create(
--  PropertyMap(), crs->baseCRS(),
--  Conversion::createEquidistantCylindrical(
--  PropertyMap(), Angle(0), Angle(0), Length(0), Length(0)),
--  crs->coordinateSystem());
--  EXPECT_EQ(crs2->derivingConversion()->method()->getEPSGCode(),
--  EPSG_CODE_METHOD_EQUIDISTANT_CYLINDRICAL);
--  
--  EXPECT_TRUE(
--  crs->isEquivalentTo(crs2.get(), IComparable::Criterion::EQUIVALENT));
--  EXPECT_TRUE(
--  crs2->isEquivalentTo(crs.get(), IComparable::Criterion::EQUIVALENT));      
   end io_projparse_eqc_spherical;

   procedure io_projparse_non_earth_ellipsoid (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input("+proj=merc +lon_0=0 +k=1 +x_0=0 +y_0=0 +R=1 +units=m "
--  "+no_defs +type=crs");
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  input);      
   end io_projparse_non_earth_ellipsoid;

   procedure io_projparse_axisswap_unitconvert_longlat_proj (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input =
--  "+type=crs +proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=grad +xy_out=rad +step +inv +proj=longlat "
--  "+ellps=clrk80ign +pm=paris +step +proj=lcc +lat_1=49.5 "
--  "+lat_0=49.5 +lon_0=0 +k_0=0.999877341 +x_0=600000 +y_0=200000 "
--  "+ellps=clrk80ign +pm=paris";
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=lcc "
--  "+lat_1=49.5 +lat_0=49.5 +lon_0=0 +k_0=0.999877341 +x_0=600000 "
--  "+y_0=200000 +ellps=clrk80ign +pm=paris");      
   end io_projparse_axisswap_unitconvert_longlat_proj;

   procedure io_projparse_axisswap_unitconvert_proj_axisswap (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input =
--  "+type=crs +proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=igh "
--  "+lon_0=0 +x_0=0 +y_0=0 +ellps=GRS80 +step +proj=axisswap +order=2,1";
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=igh "
--  "+lon_0=0 +x_0=0 +y_0=0 +ellps=GRS80 +step +proj=axisswap "
--  "+order=2,1");      
   end io_projparse_axisswap_unitconvert_proj_axisswap;

   procedure io_projparse_axisswap_unitconvert_proj_unitconvert (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input =
--  "+type=crs +proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=igh "
--  "+lon_0=0 +x_0=0 +y_0=0 +ellps=GRS80 +step +proj=unitconvert +xy_in=m "
--  "+xy_out=ft";
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=igh "
--  "+lon_0=0 +x_0=0 +y_0=0 +ellps=GRS80 +step +proj=unitconvert "
--  "+xy_in=m +xy_out=ft");      
   end io_projparse_axisswap_unitconvert_proj_unitconvert;

   procedure io_projparse_axisswap_unitconvert_proj_unitconvert_numeric_axisswap (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input =
--  "+type=crs +proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=igh "
--  "+lon_0=0 +x_0=0 +y_0=0 +ellps=GRS80 +step +proj=unitconvert +xy_in=m "
--  "+xy_out=2.5 +step +proj=axisswap +order=-2,-1";
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=igh "
--  "+lon_0=0 +x_0=0 +y_0=0 +ellps=GRS80 +step +proj=unitconvert "
--  "+xy_in=m +xy_out=2.5 +step +proj=axisswap "
--  "+order=-2,-1");      
   end io_projparse_axisswap_unitconvert_proj_unitconvert_numeric_axisswap;

   procedure io_projparse_projected_units (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=tmerc +x_0=0.304800609601219 +units=us-ft +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("PARAMETER[\"False easting\",1,LENGTHUNIT[\"US survey "
--  "foot\",0.304800609601219]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("AXIS[\"(E)\",east,ORDER[1],LENGTHUNIT[\"US survey "
--  "foot\",0.304800609601219]") != std::string::npos)
--  << wkt;      
   end io_projparse_projected_units;

   procedure io_projparse_projected_to_meter_known (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=tmerc +to_meter=0.304800609601219 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("PARAMETER[\"False easting\",0,LENGTHUNIT[\"US survey "
--  "foot\",0.304800609601219]") != std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("AXIS[\"(E)\",east,ORDER[1],LENGTHUNIT[\"US survey "
--  "foot\",0.304800609601219]") != std::string::npos)
--  << wkt;      
   end io_projparse_projected_to_meter_known;

   procedure io_projparse_projected_to_meter_unknown (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=tmerc +to_meter=0.1234 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find(
--  "PARAMETER[\"False easting\",0,LENGTHUNIT[\"unknown\",0.1234]") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(
--  wkt.find("AXIS[\"(E)\",east,ORDER[1],LENGTHUNIT[\"unknown\",0.1234]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_projected_to_meter_unknown;

   procedure io_projparse_projected_vunits (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=tmerc +vunits=ft +type=crs");
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(wkt.find("CS[Cartesian,2]") != std::string::npos) << wkt;
--  EXPECT_TRUE(wkt.find("CS[vertical,1],AXIS[\"gravity-related height "
--  "(H)\",up,LENGTHUNIT[\"foot\",0.3048]") !=
--  std::string::npos)
--  << wkt;      
   end io_projparse_projected_vunits;

   procedure io_projparse_projected_unknown (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=mbt_s +unused_flag +lat_0=45 +lon_0=0 +k=1 +x_0=10 +y_0=0 "
--  "+datum=WGS84 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  {
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find("CONVERSION[\"unknown\",METHOD[\"PROJ mbt_s\"],"
--  "PARAMETER[\"lat_0\",45,ANGLEUNIT["
--  "\"degree\",0.0174532925199433]],PARAMETER[\"lon_0\","
--  "0,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "PARAMETER[\"k\",1,SCALEUNIT[\"unity\",1]],PARAMETER["
--  "\"x_0\",10,LENGTHUNIT[\"metre\",1]],PARAMETER[\"y_0\","
--  "0,LENGTHUNIT[\"metre\",1]]]") != std::string::npos)
--  << wkt;
--  }
--  
--  std::string expected_wkt1 =
--  "PROJCS[\"unknown\",GEOGCS[\"unknown\",DATUM[\"WGS_1984\",SPHEROID["
--  "\"WGS "
--  "84\",6378137,298.257223563,AUTHORITY[\"EPSG\",\"7030\"]],AUTHORITY["
--  "\"EPSG\",\"6326\"]],PRIMEM[\"Greenwich\",0,AUTHORITY[\"EPSG\","
--  "\"8901\"]],UNIT[\"degree\",0.0174532925199433,AUTHORITY[\"EPSG\","
--  "\"9122\"]]],"
--  "PROJECTION[\"custom_proj4\"],UNIT[\"metre\",1,AUTHORITY[\"EPSG\","
--  "\"9001\"]],AXIS[\"Easting\",EAST],AXIS[\"Northing\",NORTH],EXTENSION["
--  "\"PROJ4\",\"+proj=mbt_s +lat_0=45 "
--  "+lon_0=0 +k=1 +x_0=10 +y_0=0 +datum=WGS84\"]]";
--  
--  {
--  WKTFormatterNNPtr f(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL));
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_EQ(wkt, expected_wkt1);
--  }
--  
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=mbt_s +lat_0=45 +lon_0=0 +k=1 +x_0=10 "
--  "+y_0=0 +datum=WGS84 +type=crs");
--  
--  {
--  auto obj2 = WKTParser().createFromWKT(expected_wkt1);
--  auto crs2 = nn_dynamic_pointer_cast<ProjectedCRS>(obj2);
--  ASSERT_TRUE(crs2 != nullptr);
--  
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs2->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find("CONVERSION[\"unknown\",METHOD[\"PROJ mbt_s\"],"
--  "PARAMETER[\"lat_0\",45,ANGLEUNIT["
--  "\"degree\",0.0174532925199433]],PARAMETER[\"lon_0\","
--  "0,ANGLEUNIT[\"degree\",0.0174532925199433]],"
--  "PARAMETER[\"k\",1,SCALEUNIT[\"unity\",1]],PARAMETER["
--  "\"x_0\",10,LENGTHUNIT[\"metre\",1]],PARAMETER[\"y_0\","
--  "0,LENGTHUNIT[\"metre\",1]]]") != std::string::npos)
--  << wkt;
--  }      
   end io_projparse_projected_unknown;

   procedure io_projparse_geocent (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=geocent +ellps=WGS84 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_EQ(wkt, "GEODCRS[\"unknown\",DATUM[\"Unknown based on WGS84 "
--  "ellipsoid\",ELLIPSOID[\"WGS "
--  "84\",6378137,298.257223563,LENGTHUNIT[\"metre\",1]]],"
--  "PRIMEM[\"Greenwich\",0,ANGLEUNIT[\"degree\",0."
--  "0174532925199433]],CS[Cartesian,3],AXIS[\"(X)\","
--  "geocentricX,ORDER[1],LENGTHUNIT[\"metre\",1]],AXIS[\"(Y)\","
--  "geocentricY,ORDER[2],LENGTHUNIT[\"metre\",1]],AXIS[\"(Z)\","
--  "geocentricZ,ORDER[3],LENGTHUNIT[\"metre\",1]]]");      
   end io_projparse_geocent;

   procedure io_projparse_geocent_towgs84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto obj = PROJStringParser().createFromPROJString(
--  "+proj=geocent +ellps=WGS84 +towgs84=1,2,3 +type=crs");
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  WKTFormatterNNPtr f(WKTFormatter::create());
--  f->simulCurNodeHasId();
--  f->setMultiLine(false);
--  crs->exportToWKT(f.get());
--  auto wkt = f->toString();
--  EXPECT_TRUE(
--  wkt.find("METHOD[\"Geocentric translations (geocentric domain)") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"X-axis translation\",1") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Y-axis translation\",2") !=
--  std::string::npos)
--  << wkt;
--  EXPECT_TRUE(wkt.find("PARAMETER[\"Z-axis translation\",3") !=
--  std::string::npos)
--  << wkt;
--  
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=geocent +ellps=WGS84 +towgs84=1,2,3,0,0,0,0 +units=m +no_defs "
--  "+type=crs");      
   end io_projparse_geocent_towgs84;

   procedure io_projparse_cart_unit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input(
--  "+proj=pipeline +step +proj=cart +ellps=WGS84 +step "
--  "+proj=unitconvert +xy_in=m +z_in=m +xy_out=km +z_out=km");
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=cart "
--  "+ellps=WGS84 +step +proj=unitconvert +xy_in=m +z_in=m "
--  "+xy_out=km +z_out=km");      
   end io_projparse_cart_unit;

   procedure io_projparse_cart_unit_numeric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input(
--  "+proj=pipeline +step +proj=cart +ellps=WGS84 +step "
--  "+proj=unitconvert +xy_in=m +z_in=m +xy_out=500 +z_out=500");
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=cart "
--  "+ellps=WGS84 +step +proj=unitconvert +xy_in=m +z_in=m "
--  "+xy_out=500 +z_out=500");      
   end io_projparse_cart_unit_numeric;

   procedure io_projparse_longlat_wktext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input("+proj=longlat +foo +wktext +type=crs");
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=longlat +datum=WGS84 +no_defs +type=crs");      
   end io_projparse_longlat_wktext;

   procedure io_projparse_geocent_wktext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input("+proj=geocent +foo +wktext +type=crs");
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=geocent +datum=WGS84 +units=m +no_defs +type=crs");      
   end io_projparse_geocent_wktext;

   procedure io_projparse_projected_wktext (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string input("+proj=merc +foo +wktext +type=crs");
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=merc +lon_0=0 +k=1 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs "
--  "+type=crs");      
   end io_projparse_projected_wktext;

   procedure io_projparse_ob_tran_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  for (const char *o_proj : {"longlat", "lonlat", "latlong", "latlon"}) {
--  std::string input(
--  "+type=crs +proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=ob_tran "
--  "+o_proj=");
--  input += o_proj;
--  input += " +o_lat_p=52 +o_lon_p=-30 +lon_0=-25 +ellps=WGS84 "
--  "+step +proj=axisswap +order=2,1";
--  auto obj = PROJStringParser().createFromPROJString(input);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto op = CoordinateOperationFactory::create()->createOperation(
--  GeographicCRS::EPSG_4326, NN_NO_CHECK(crs));
--  ASSERT_TRUE(op != nullptr);
--  std::string expected(
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=ob_tran "
--  "+o_proj=");
--  expected += o_proj;
--  expected +=
--  " +o_lat_p=52 +o_lon_p=-30 +lon_0=-25 "
--  "+ellps=WGS84 +step +proj=unitconvert +xy_in=rad +xy_out=deg "
--  "+step +proj=axisswap +order=2,1";
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  expected);
--  }      
   end io_projparse_ob_tran_longlat;

   procedure io_projparse_longlat_title (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string projString("+title=Ile d'Amsterdam 1963 +proj=longlat "
--  "+towgs84=109.7530,-528.1330,-362.2440 "
--  "+a=6378388.0000 +rf=297.0000000000000 +units=m "
--  "+no_defs +type=crs");
--  auto obj = PROJStringParser().createFromPROJString(projString);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto baseCRS = nn_dynamic_pointer_cast<GeographicCRS>(crs->baseCRS());
--  ASSERT_TRUE(baseCRS != nullptr);
--  EXPECT_EQ(baseCRS->nameStr(), "Ile d'Amsterdam 1963");
--  EXPECT_EQ(baseCRS->datum()->nameStr(), "Ile d'Amsterdam 1963");
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=longlat +ellps=intl +towgs84=109.753,-528.133,-362.244,0,0,0,0 "
--  "+no_defs +type=crs");      
   end io_projparse_longlat_title;

   procedure io_projparse_projected_title (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  std::string projString(
--  "+title=Amsterdam 1963 +proj=tmerc "
--  "+towgs84=109.7530,-528.1330,-362.2440 +a=6378388.0000 "
--  "+rf=297.0000000000000 +lat_0=0.000000000 +lon_0=75.000000000 "
--  "+k_0=0.99960000 +x_0=500000.000 +y_0=10000000.000 +units=m +no_defs "
--  "+type=crs");
--  auto obj = PROJStringParser().createFromPROJString(projString);
--  auto crs = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto baseCRS = nn_dynamic_pointer_cast<ProjectedCRS>(crs->baseCRS());
--  ASSERT_TRUE(baseCRS != nullptr);
--  EXPECT_EQ(baseCRS->nameStr(), "Amsterdam 1963");
--  EXPECT_EQ(baseCRS->baseCRS()->nameStr(), "unknown");
--  EXPECT_EQ(
--  crs->exportToPROJString(
--  PROJStringFormatter::create(PROJStringFormatter::Convention::PROJ_4)
--  .get()),
--  "+proj=utm +zone=43 +south +ellps=intl "
--  "+towgs84=109.753,-528.133,-362.244,0,0,0,0 +units=m +no_defs "
--  "+type=crs");      
   end io_projparse_projected_title;

   procedure io_projparse_init (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto dbContext = DatabaseContext::create();
--  
--  // Not allowed in non-compatibillity mode
--  EXPECT_THROW(
--  PROJStringParser().createFromPROJString("init=epsg:4326 +type=crs"),
--  ParsingException);
--  
--  {
--  // EPSG:4326 is normally latitude-longitude order with degree,
--  // but in compatibillity mode it will be long-lat
--  auto obj = createFromUserInput("init=epsg:4326", dbContext, true);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_TRUE(crs->coordinateSystem()->isEquivalentTo(
--  EllipsoidalCS::createLongitudeLatitude(UnitOfMeasure::DEGREE)
--  .get()));
--  }
--  
--  {
--  // Test that +no_defs +type=crs have no effect
--  auto obj = createFromUserInput("+init=epsg:4326 +no_defs +type=crs",
--  dbContext, true);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  auto wkt = crs->exportToWKT(WKTFormatter::create().get());
--  EXPECT_TRUE(wkt.find("GEODCRS[\"WGS 84\"") == 0) << wkt;
--  }
--  
--  {
--  // EPSG:3040 is normally northing-easting order, but in compatibillity
--  // mode it will be easting-northing
--  auto obj =
--  createFromUserInput("init=epsg:3040 +type=crs", dbContext, true);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_TRUE(crs->coordinateSystem()->isEquivalentTo(
--  CartesianCS::createEastingNorthing(UnitOfMeasure::METRE).get()));
--  }
--  
--  {
--  auto obj =
--  PROJStringParser().createFromPROJString("init=ITRF2000:ITRF2005");
--  auto co = nn_dynamic_pointer_cast<CoordinateOperation>(obj);
--  ASSERT_TRUE(co != nullptr);
--  EXPECT_EQ(co->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=helmert +x=-0.0001 +y=0.0008 +z=0.0058 +s=-0.0004 "
--  "+dx=0.0002 +dy=-0.0001 +dz=0.0018 +ds=-0.00008 "
--  "+t_epoch=2000.0 +convention=position_vector");
--  }
--  
--  {
--  auto obj = createFromUserInput("+title=mytitle +geoc +init=epsg:4326",
--  dbContext, true);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "mytitle");
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=longlat +geoc +datum=WGS84 +no_defs +type=crs");
--  }
--  
--  {
--  auto obj = createFromUserInput(
--  "proj=pipeline step init=epsg:4326 step proj=longlat ellps=WGS84",
--  dbContext, true);
--  auto co = nn_dynamic_pointer_cast<CoordinateOperation>(obj);
--  ASSERT_TRUE(co != nullptr);
--  EXPECT_EQ(co->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +init=epsg:4326 +step +proj=longlat "
--  "+ellps=WGS84");
--  }      
   end io_projparse_init;

   procedure io_projparse_errors (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(PROJStringParser().createFromPROJString(""), ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString("foo"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString("inv"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString("step"),
--  ParsingException);
--  
--  EXPECT_THROW(
--  PROJStringParser().createFromPROJString("proj=unknown +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(
--  PROJStringParser().createFromPROJString(
--  "proj=pipeline step proj=unitconvert step proj=longlat a=invalid"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "proj=pipeline step proj=pipeline"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "proj=pipeline step init=epsg:4326 init=epsg:4326"),
--  ParsingException);
--  
--  EXPECT_THROW(
--  PROJStringParser().createFromPROJString("proj=\tinit= +type=crs"),
--  ParsingException);      
   end io_projparse_errors;

   procedure io_projparse_longlat_errors (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +datum=unknown +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=unknown +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=invalid +b=1 +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=1 +b=invalid +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=invalid +rf=1 +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=1 +rf=invalid +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +a=1 +f=invalid +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +R=invalid +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(
--  PROJStringParser().createFromPROJString("+proj=longlat +b=1 +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +rf=1 +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(
--  PROJStringParser().createFromPROJString("+proj=longlat +f=0 +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +pm=unknown +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +ellps=GRS80 "
--  "+towgs84=1.2,2,3,4,5,6,invalid +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=longlat +axis=foo +type=crs"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=pipeline +step +proj=longlat +ellps=GRS80 +step "
--  "+proj=unitconvert +xy_in=rad +xy_out=foo"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=pipeline +step +proj=longlat +ellps=GRS80 +step "
--  "+proj=axisswap"),
--  ParsingException);
--  
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=pipeline +step +proj=longlat +ellps=GRS80 +step "
--  "+proj=axisswap +order=0,0"),
--  ParsingException);
--  
--  // We just want to check that we don't loop forever
--  PROJStringParser().createFromPROJString(
--  "+=x;proj=pipeline step proj=push +type=crs");      
   end io_projparse_longlat_errors;

   procedure io_projparse_projected_errors (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=tmerc +units=foo +type=crs"),
--  ParsingException);
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=tmerc +x_0=foo +type=crs"),
--  ParsingException);
--  EXPECT_THROW(PROJStringParser().createFromPROJString(
--  "+proj=tmerc +lat_0=foo +type=crs"),
--  ParsingException);
--  // Inconsistent pm values between geogCRS and projectedCRS
--  EXPECT_THROW(
--  PROJStringParser().createFromPROJString(
--  "+type=crs +proj=pipeline +step +proj=longlat +ellps=WGS84 "
--  "+step +proj=tmerc +ellps=WGS84 +lat_0=0 +pm=paris"),
--  ParsingException);      
   end io_projparse_projected_errors;

   procedure io_createFromUserInput (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto dbContext = DatabaseContext::create();
--  EXPECT_THROW(createFromUserInput("foo", nullptr), ParsingException);
--  EXPECT_THROW(createFromUserInput("GEOGCRS", nullptr), ParsingException);
--  EXPECT_THROW(createFromUserInput("+proj=unhandled +type=crs", nullptr),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("EPSG:4326", nullptr), ParsingException);
--  EXPECT_THROW(
--  createFromUserInput("urn:ogc:def:unhandled:EPSG::4326", dbContext),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("urn:ogc:def:crs:non_existing_auth::4326",
--  dbContext),
--  NoSuchAuthorityCodeException);
--  EXPECT_THROW(createFromUserInput(
--  "urn:ogc:def:crs,crs:EPSG::2393,unhandled_type:EPSG::5717",
--  dbContext),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput(
--  "urn:ogc:def:crs,crs:EPSG::2393,crs:EPSG::unexisting_code",
--  dbContext),
--  NoSuchAuthorityCodeException);
--  EXPECT_THROW(
--  createFromUserInput(
--  "urn:ogc:def:crs,crs:EPSG::2393::extra_element,crs:EPSG::EPSG",
--  dbContext),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("urn:ogc:def:coordinateOperation,"
--  "coordinateOperation:EPSG::3895,"
--  "unhandled_type:EPSG::1618",
--  dbContext),
--  ParsingException);
--  EXPECT_THROW(
--  createFromUserInput("urn:ogc:def:coordinateOperation,"
--  "coordinateOperation:EPSG::3895,"
--  "coordinateOperation:EPSG::unexisting_code",
--  dbContext),
--  NoSuchAuthorityCodeException);
--  EXPECT_THROW(
--  createFromUserInput("urn:ogc:def:coordinateOperation,"
--  "coordinateOperation:EPSG::3895::extra_element,"
--  "coordinateOperation:EPSG::1618",
--  dbContext),
--  ParsingException);
--  
--  EXPECT_NO_THROW(createFromUserInput("+proj=longlat", nullptr));
--  EXPECT_NO_THROW(createFromUserInput("EPSG:4326", dbContext));
--  EXPECT_NO_THROW(createFromUserInput("epsg:4326", dbContext));
--  EXPECT_NO_THROW(
--  createFromUserInput("urn:ogc:def:crs:EPSG::4326", dbContext));
--  EXPECT_NO_THROW(createFromUserInput(
--  "urn:ogc:def:coordinateOperation:EPSG::1671", dbContext));
--  EXPECT_NO_THROW(
--  createFromUserInput("urn:ogc:def:datum:EPSG::6326", dbContext));
--  EXPECT_NO_THROW(
--  createFromUserInput("urn:ogc:def:meridian:EPSG::8901", dbContext));
--  EXPECT_NO_THROW(
--  createFromUserInput("urn:ogc:def:ellipsoid:EPSG::7030", dbContext));
--  {
--  auto obj = createFromUserInput("EPSG:2393+5717", dbContext);
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(),
--  "KKJ / Finland Uniform Coordinate System + N60 height");
--  }
--  {
--  auto obj = createFromUserInput(
--  "urn:ogc:def:crs,crs:EPSG::2393,crs:EPSG::5717", dbContext);
--  auto crs = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(),
--  "KKJ / Finland Uniform Coordinate System + N60 height");
--  }
--  
--  {
--  auto obj = createFromUserInput("urn:ogc:def:crs,crs:EPSG::4979,"
--  "cs:PROJ::ENh,"
--  "coordinateOperation:EPSG::16031",
--  dbContext);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->nameStr(), "UTM zone 31N / WGS 84 (3D)");
--  EXPECT_EQ(crs->baseCRS()->getEPSGCode(), 4979);
--  EXPECT_EQ(crs->coordinateSystem()->axisList().size(), 3U);
--  EXPECT_EQ(crs->derivingConversion()->getEPSGCode(), 16031);
--  }
--  
--  EXPECT_THROW(createFromUserInput(
--  "urn:ogc:def:crs,crs:EPSG::4979,"
--  "cs:PROJ::ENh,"
--  "coordinateOperation:EPSG::1024", // not a conversion
--  dbContext),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("urn:ogc:def:crs,crs:,"
--  "cs:PROJ::ENh,"
--  "coordinateOperation:EPSG::16031",
--  dbContext),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("urn:ogc:def:crs,crs:EPSG::4979,"
--  "cs:,"
--  "coordinateOperation:EPSG::16031",
--  dbContext),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("urn:ogc:def:crs,crs:EPSG::4979,"
--  "cs:PROJ::ENh,"
--  "coordinateOperation:",
--  dbContext),
--  ParsingException);
--  
--  {
--  // Completely non-sensical from a geodesic point of view...
--  auto obj = createFromUserInput("urn:ogc:def:crs,crs:EPSG::4978,"
--  "cs:EPSG::6500,"
--  "coordinateOperation:EPSG::16031",
--  dbContext);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->baseCRS()->getEPSGCode(), 4978);
--  EXPECT_EQ(crs->coordinateSystem()->getEPSGCode(), 6500);
--  EXPECT_EQ(crs->derivingConversion()->getEPSGCode(), 16031);
--  }
--  {
--  // Completely non-sensical from a geodesic point of view...
--  auto obj = createFromUserInput("urn:ogc:def:crs,crs:EPSG::4979,"
--  "cs:EPSG::6423,"
--  "coordinateOperation:EPSG::16031",
--  dbContext);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->baseCRS()->getEPSGCode(), 4979);
--  EXPECT_EQ(crs->coordinateSystem()->getEPSGCode(), 6423);
--  EXPECT_EQ(crs->derivingConversion()->getEPSGCode(), 16031);
--  }
--  {
--  // Completely non-sensical from a geodesic point of view...
--  auto obj = createFromUserInput("urn:ogc:def:crs,crs:EPSG::32631,"
--  "cs:EPSG::4400,"
--  "coordinateOperation:EPSG::16031",
--  dbContext);
--  auto crs = nn_dynamic_pointer_cast<DerivedProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->baseCRS()->getEPSGCode(), 32631);
--  EXPECT_EQ(crs->coordinateSystem()->getEPSGCode(), 4400);
--  EXPECT_EQ(crs->derivingConversion()->getEPSGCode(), 16031);
--  }
--  {
--  // Completely non-sensical from a geodesic point of view...
--  auto obj = createFromUserInput("urn:ogc:def:crs,crs:EPSG::3855,"
--  "cs:EPSG::6499,"
--  "coordinateOperation:EPSG::16031",
--  dbContext);
--  auto crs = nn_dynamic_pointer_cast<DerivedVerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->baseCRS()->getEPSGCode(), 3855);
--  EXPECT_EQ(crs->coordinateSystem()->getEPSGCode(), 6499);
--  EXPECT_EQ(crs->derivingConversion()->getEPSGCode(), 16031);
--  }
--  
--  {
--  auto obj = createFromUserInput("urn:ogc:def:coordinateOperation,"
--  "coordinateOperation:EPSG::3895,"
--  "coordinateOperation:EPSG::1618",
--  dbContext);
--  auto concat = nn_dynamic_pointer_cast<ConcatenatedOperation>(obj);
--  ASSERT_TRUE(concat != nullptr);
--  EXPECT_EQ(concat->nameStr(),
--  "MGI (Ferro) to MGI (1) + MGI to WGS 84 (3)");
--  }
--  EXPECT_NO_THROW(createFromUserInput(
--  "GEOGCRS[\"WGS 84\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[ellipsoidal,3],\n"
--  "        AXIS[\"latitude\",north,\n"
--  "            UNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"longitude\",east,\n"
--  "            UNIT[\"degree\",0.0174532925199433]],\n"
--  "        AXIS[\"ellipsoidal height\",up,\n"
--  "            UNIT[\"metre\",1]],\n"
--  "    ID[\"EPSG\",4979]]",
--  nullptr));
--  
--  // Search names in the database
--  EXPECT_THROW(createFromUserInput("foobar", dbContext), ParsingException);
--  EXPECT_NO_THROW(createFromUserInput("WGS 84", dbContext));
--  EXPECT_NO_THROW(createFromUserInput("WGS84", dbContext));
--  EXPECT_NO_THROW(createFromUserInput("UTM zone 31N", dbContext));
--  EXPECT_THROW(createFromUserInput("UTM zone 31", dbContext),
--  ParsingException);
--  EXPECT_NO_THROW(createFromUserInput("WGS84 UTM zone 31N", dbContext));
--  EXPECT_NO_THROW(createFromUserInput("ID74", dbContext));      
   end io_createFromUserInput;

   procedure io_createFromUserInput_hack_EPSG_102100 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto dbContext = DatabaseContext::create();
--  auto obj = createFromUserInput("EPSG:102100", dbContext);
--  auto crs = nn_dynamic_pointer_cast<CRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  const auto &ids = crs->identifiers();
--  ASSERT_EQ(ids.size(), 1U);
--  // we do not lie on the real authority
--  EXPECT_EQ(*ids[0]->codeSpace(), "ESRI");
--  EXPECT_EQ(ids[0]->code(), "102100");      
   end io_createFromUserInput_hack_EPSG_102100;

   procedure io_guessDialect (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_EQ(WKTParser().guessDialect("LOCAL_CS[\"foo\"]"),
--  WKTParser::WKTGuessedDialect::WKT1_GDAL);
--  
--  EXPECT_EQ(WKTParser().guessDialect(
--  "GEOGCS[\"GCS_WGS_1984\",DATUM[\"D_WGS_1984\",SPHEROID[\"WGS_"
--  "1984\",6378137.0,298.257223563]],PRIMEM[\"Greenwich\",0.0],"
--  "UNIT[\"Degree\",0.0174532925199433]]"),
--  WKTParser::WKTGuessedDialect::WKT1_ESRI);
--  
--  EXPECT_EQ(WKTParser().guessDialect(
--  "GEOGCRS[\"WGS 84\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"geodetic latitude (Lat)\",north],\n"
--  "        AXIS[\"geodetic longitude (Lon)\",east],\n"
--  "        UNIT[\"degree\",0.0174532925199433]]"),
--  WKTParser::WKTGuessedDialect::WKT2_2019);
--  
--  EXPECT_EQ(
--  WKTParser().guessDialect("TIMECRS[\"Temporal CRS\",\n"
--  "    TDATUM[\"Gregorian calendar\",\n"
--  "        CALENDAR[\"proleptic Gregorian\"],\n"
--  "        TIMEORIGIN[0000-01-01]],\n"
--  "    CS[TemporalDateTime,1],\n"
--  "        AXIS[\"time (T)\",future]]"),
--  WKTParser::WKTGuessedDialect::WKT2_2019);
--  
--  EXPECT_EQ(WKTParser().guessDialect(
--  "GEODCRS[\"WGS 84\",\n"
--  "    DATUM[\"World Geodetic System 1984\",\n"
--  "        ELLIPSOID[\"WGS 84\",6378137,298.257223563]],\n"
--  "    CS[ellipsoidal,2],\n"
--  "        AXIS[\"geodetic latitude (Lat)\",north],\n"
--  "        AXIS[\"geodetic longitude (Lon)\",east],\n"
--  "        UNIT[\"degree\",0.0174532925199433]]"),
--  WKTParser::WKTGuessedDialect::WKT2_2015);
--  
--  EXPECT_EQ(WKTParser().guessDialect("foo"),
--  WKTParser::WKTGuessedDialect::NOT_WKT);
--  EXPECT_EQ(WKTParser().guessDialect("ID74"),
--  WKTParser::WKTGuessedDialect::NOT_WKT);      
   end io_guessDialect;

   procedure wkt_export_precision (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"RGF93 / Lambert-93\",\n"
--  "    GEOGCS[\"RGF93\",\n"
--  "        DATUM[\"Reseau_Geodesique_Francais_1993\",\n"
--  "            SPHEROID[\"GRS 80\",6378137,298.257222101],\n"
--  "            AUTHORITY[\"EPSG\",\"6171\"]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Lambert_Conformal_Conic_2SP\"],\n"
--  "    PARAMETER[\"standard_parallel_1\",49.00000000001],\n"
--  "    PARAMETER[\"standard_parallel_2\",44],\n"
--  "    PARAMETER[\"latitude_of_origin\",46.5],\n"
--  "    PARAMETER[\"central_meridian\",3],\n"
--  "    PARAMETER[\"false_easting\",700000],\n"
--  "    PARAMETER[\"false_northing\",6600000],\n"
--  "    UNIT[\"Meter\",1],\n"
--  "    AXIS[\"Easting\",EAST],\n"
--  "    AXIS[\"Northing\",NORTH]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_EQ(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  wkt);      
   end wkt_export_precision;

   procedure wkt_export_invalid_linear_unit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"WGS 84 / UTM zone 31N\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"degree\",0.0174532925199433]],\n"
--  "    PROJECTION[\"Transverse_Mercator\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",0],\n"
--  "    PARAMETER[\"central_meridian\",3],\n"
--  "    PARAMETER[\"scale_factor\",0.9996],\n"
--  "    PARAMETER[\"false_easting\",500000],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"foo\",0]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_THROW(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  FormattingException);      
   end wkt_export_invalid_linear_unit;

   procedure wkt_export_invalid_angular_unit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto wkt = "PROJCS[\"WGS 84 / UTM zone 31N\",\n"
--  "    GEOGCS[\"WGS 84\",\n"
--  "        DATUM[\"WGS_1984\",\n"
--  "            SPHEROID[\"WGS 84\",6378137,298.257223563]],\n"
--  "        PRIMEM[\"Greenwich\",0],\n"
--  "        UNIT[\"foo\",0]],\n"
--  "    PROJECTION[\"Transverse_Mercator\"],\n"
--  "    PARAMETER[\"latitude_of_origin\",0],\n"
--  "    PARAMETER[\"central_meridian\",3],\n"
--  "    PARAMETER[\"scale_factor\",0.9996],\n"
--  "    PARAMETER[\"false_easting\",500000],\n"
--  "    PARAMETER[\"false_northing\",0],\n"
--  "    UNIT[\"meter\",1]]";
--  
--  auto obj = WKTParser().createFromWKT(wkt);
--  auto crs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  
--  EXPECT_THROW(
--  crs->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT1_GDAL).get()),
--  FormattingException);      
   end wkt_export_invalid_angular_unit;

   procedure json_import_ellipsoid_flattened_sphere (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"Ellipsoid\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"semi_major_axis\": 6378137,\n"
--  "  \"inverse_flattening\": 298.257223563,\n"
--  "  \"id\": {\n"
--  "    \"authority\": \"EPSG\",\n"
--  "    \"code\": 7030\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto ellps = nn_dynamic_pointer_cast<Ellipsoid>(obj);
--  ASSERT_TRUE(ellps != nullptr);
--  EXPECT_EQ(ellps->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_ellipsoid_flattened_sphere;

   procedure json_import_ellipsoid_major_minor_custom_unit (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"Ellipsoid\",\n"
--  "  \"name\": \"foo\",\n"
--  "  \"semi_major_axis\": 6378137,\n"
--  "  \"semi_minor_axis\": {\n"
--  "    \"value\": 6370000,\n"
--  "    \"unit\": {\n"
--  "      \"type\": \"LinearUnit\",\n"
--  "      \"name\": \"my_unit\",\n"
--  "      \"conversion_factor\": 2\n"
--  "    }\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto ellps = nn_dynamic_pointer_cast<Ellipsoid>(obj);
--  ASSERT_TRUE(ellps != nullptr);
--  EXPECT_EQ(ellps->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_ellipsoid_major_minor_custom_unit;

   procedure json_import_ellipsoid_sphere (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"Ellipsoid\",\n"
--  "  \"name\": \"Sphere\",\n"
--  "  \"radius\": 6371000,\n"
--  "  \"id\": {\n"
--  "    \"authority\": \"EPSG\",\n"
--  "    \"code\": 7035\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto ellps = nn_dynamic_pointer_cast<Ellipsoid>(obj);
--  ASSERT_TRUE(ellps != nullptr);
--  EXPECT_EQ(ellps->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_ellipsoid_sphere;

   procedure json_import_ellipsoid_errors (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(createFromUserInput("{", nullptr), ParsingException);
--  EXPECT_THROW(createFromUserInput("{}", nullptr), ParsingException);
--  EXPECT_THROW(createFromUserInput("{ \"type\": \"Ellipsoid\" }", nullptr),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput(
--  "{ \"type\": \"Ellipsoid\", \"name\": \"foo\" }", nullptr),
--  ParsingException);
--  EXPECT_THROW(
--  createFromUserInput(
--  "{ \"type\": \"Ellipsoid\", \"name\": \"foo\", \"radius\": null }",
--  nullptr),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("{ \"type\": \"Ellipsoid\", \"name\": "
--  "\"foo\", \"semi_major_axis\": 1 }",
--  nullptr),
--  ParsingException);      
   end json_import_ellipsoid_errors;

   procedure json_import_prime_meridian (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"PrimeMeridian\",\n"
--  "  \"name\": \"Paris\",\n"
--  "  \"longitude\": {\n"
--  "    \"value\": 2.5969213,\n"
--  "    \"unit\": {\n"
--  "      \"type\": \"AngularUnit\",\n"
--  "      \"name\": \"grad\",\n"
--  "      \"conversion_factor\": 0.0157079632679489\n"
--  "    }\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto pm = nn_dynamic_pointer_cast<PrimeMeridian>(obj);
--  ASSERT_TRUE(pm != nullptr);
--  EXPECT_EQ(pm->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_prime_meridian;

   procedure json_import_prime_meridian_errors (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(createFromUserInput("{ \"type\": \"PrimeMeridian\", \"name\": "
--  "\"foo\" }",
--  nullptr),
--  ParsingException);
--  EXPECT_THROW(createFromUserInput("{ \"type\": \"PrimeMeridian\", \"name\": "
--  "\"foo\", \"longitude\": null }",
--  nullptr),
--  ParsingException);      
   end json_import_prime_meridian_errors;

   procedure json_import_geodetic_reference_frame_with_implicit_prime_meridian (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"GeodeticReferenceFrame\",\n"
--  "  \"name\": \"World Geodetic System 1984\",\n"
--  "  \"ellipsoid\": {\n"
--  "    \"name\": \"WGS 84\",\n"
--  "    \"semi_major_axis\": 6378137,\n"
--  "    \"inverse_flattening\": 298.257223563\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto grf = nn_dynamic_pointer_cast<GeodeticReferenceFrame>(obj);
--  ASSERT_TRUE(grf != nullptr);
--  EXPECT_EQ(grf->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_geodetic_reference_frame_with_implicit_prime_meridian;

   procedure json_import_geodetic_reference_frame_with_explicit_prime_meridian (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"GeodeticReferenceFrame\",\n"
--  "  \"name\": \"Nouvelle Triangulation Francaise (Paris)\",\n"
--  "  \"ellipsoid\": {\n"
--  "    \"name\": \"Clarke 1880 (IGN)\",\n"
--  "    \"semi_major_axis\": 6378249.2,\n"
--  "    \"semi_minor_axis\": 6356515\n"
--  "  },\n"
--  "  \"prime_meridian\": {\n"
--  "    \"name\": \"Paris\",\n"
--  "    \"longitude\": {\n"
--  "      \"value\": 2.5969213,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"AngularUnit\",\n"
--  "        \"name\": \"grad\",\n"
--  "        \"conversion_factor\": 0.0157079632679489\n"
--  "      }\n"
--  "    }\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto grf = nn_dynamic_pointer_cast<GeodeticReferenceFrame>(obj);
--  ASSERT_TRUE(grf != nullptr);
--  EXPECT_EQ(grf->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_geodetic_reference_frame_with_explicit_prime_meridian;

   procedure json_import_geodetic_reference_frame_errors (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(
--  createFromUserInput(
--  "{ \"type\": \"GeodeticReferenceFrame\", \"name\": \"foo\" }",
--  nullptr),
--  ParsingException);      
   end json_import_geodetic_reference_frame_errors;

   procedure json_import_dynamic_vertical_reference_frame (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DynamicVerticalReferenceFrame\",\n"
--  "  \"name\": \"bar\",\n"
--  "  \"frame_reference_epoch\": 1,\n"
--  "  \"deformation_model\": \"foo\"\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto dvrf = nn_dynamic_pointer_cast<DynamicVerticalReferenceFrame>(obj);
--  ASSERT_TRUE(dvrf != nullptr);
--  EXPECT_EQ(dvrf->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_dynamic_vertical_reference_frame;

   procedure json_import_several_usages (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"GeodeticReferenceFrame\",\n"
--  "  \"name\": \"World Geodetic System 1984\",\n"
--  "  \"ellipsoid\": {\n"
--  "    \"name\": \"WGS 84\",\n"
--  "    \"semi_major_axis\": 6378137,\n"
--  "    \"inverse_flattening\": 298.257223563\n"
--  "  },\n"
--  "  \"usages\": [\n"
--  "    {\n"
--  "      \"area\": \"World\",\n"
--  "      \"bbox\": {\n"
--  "        \"south_latitude\": -90,\n"
--  "        \"west_longitude\": -180,\n"
--  "        \"north_latitude\": 90,\n"
--  "        \"east_longitude\": 180\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"scope\": \"my_scope\",\n"
--  "      \"area\": \"my_area\"\n"
--  "    }\n"
--  "  ]\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto gdr = nn_dynamic_pointer_cast<GeodeticReferenceFrame>(obj);
--  ASSERT_TRUE(gdr != nullptr);
--  EXPECT_EQ(gdr->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_several_usages;

   procedure json_import_geographic_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"GeographicCRS\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"datum\": {\n"
--  "    \"type\": \"GeodeticReferenceFrame\",\n"
--  "    \"name\": \"World Geodetic System 1984\",\n"
--  "    \"ellipsoid\": {\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"semi_major_axis\": 6378137,\n"
--  "      \"inverse_flattening\": 298.257223563\n"
--  "    }\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"ellipsoidal\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Geodetic latitude\",\n"
--  "        \"abbreviation\": \"Lat\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Geodetic longitude\",\n"
--  "        \"abbreviation\": \"Lon\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"area\": \"World\",\n"
--  "  \"bbox\": {\n"
--  "    \"south_latitude\": -90,\n"
--  "    \"west_longitude\": -180,\n"
--  "    \"north_latitude\": 90,\n"
--  "    \"east_longitude\": 180\n"
--  "  },\n"
--  "  \"id\": {\n"
--  "    \"authority\": \"EPSG\",\n"
--  "    \"code\": 4326\n"
--  "  },\n"
--  "  \"remarks\": \"my_remarks\"\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(gcrs != nullptr);
--  EXPECT_EQ(gcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_geographic_crs;

   procedure json_import_geographic_crs_errors (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(
--  createFromUserInput(
--  "{ \"type\": \"GeographicCRS\", \"name\": \"foo\" }", nullptr),
--  ParsingException);
--  EXPECT_THROW(
--  createFromUserInput("{\n"
--  "  \"type\": \"GeographicCRS\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"datum\": {\n"
--  "    \"type\": \"GeodeticReferenceFrame\",\n"
--  "    \"name\": \"World Geodetic System 1984\",\n"
--  "    \"ellipsoid\": {\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"semi_major_axis\": 6378137,\n"
--  "      \"inverse_flattening\": 298.257223563\n"
--  "    }\n"
--  "  }\n"
--  "}",
--  nullptr),
--  ParsingException);
--  EXPECT_THROW(
--  createFromUserInput("{\n"
--  "  \"type\": \"GeographicCRS\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"datum\": {\n"
--  "    \"type\": \"GeodeticReferenceFrame\",\n"
--  "    \"name\": \"World Geodetic System 1984\",\n"
--  "    \"ellipsoid\": {\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"semi_major_axis\": 6378137,\n"
--  "      \"inverse_flattening\": 298.257223563\n"
--  "    }\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"Cartesian\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Easting\",\n"
--  "        \"abbreviation\": \"E\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Northing\",\n"
--  "        \"abbreviation\": \"N\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}",
--  nullptr),
--  ParsingException);      
   end json_import_geographic_crs_errors;

   procedure json_import_geocentric_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"GeodeticCRS\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"datum\": {\n"
--  "    \"type\": \"GeodeticReferenceFrame\",\n"
--  "    \"name\": \"World Geodetic System 1984\",\n"
--  "    \"ellipsoid\": {\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"semi_major_axis\": 6378137,\n"
--  "      \"inverse_flattening\": 298.257223563\n"
--  "    }\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"Cartesian\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Geocentric X\",\n"
--  "        \"abbreviation\": \"X\",\n"
--  "        \"direction\": \"geocentricX\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Geocentric Y\",\n"
--  "        \"abbreviation\": \"Y\",\n"
--  "        \"direction\": \"geocentricY\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Geocentric Z\",\n"
--  "        \"abbreviation\": \"Z\",\n"
--  "        \"direction\": \"geocentricZ\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto gdcrs = nn_dynamic_pointer_cast<GeodeticCRS>(obj);
--  ASSERT_TRUE(gdcrs != nullptr);
--  EXPECT_EQ(gdcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_geocentric_crs;

   procedure json_import_projected_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"ProjectedCRS\",\n"
--  "  \"name\": \"WGS 84 / UTM zone 31N\",\n"
--  "  \"base_crs\": {\n"
--  "    \"name\": \"WGS 84\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"World Geodetic System 1984\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"WGS 84\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257223563\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Geodetic latitude\",\n"
--  "          \"abbreviation\": \"Lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Geodetic longitude\",\n"
--  "          \"abbreviation\": \"Lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    },\n"
--  "    \"id\": {\n"
--  "      \"authority\": \"EPSG\",\n"
--  "      \"code\": 4326\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"UTM zone 31N\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"Transverse Mercator\",\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 9807\n"
--  "      }\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"Latitude of natural origin\",\n"
--  "        \"value\": 0,\n"
--  "        \"unit\": \"degree\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 8801\n"
--  "        }\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Longitude of natural origin\",\n"
--  "        \"value\": 3,\n"
--  "        \"unit\": \"degree\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 8802\n"
--  "        }\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Scale factor at natural origin\",\n"
--  "        \"value\": 0.9996,\n"
--  "        \"unit\": \"unity\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 8805\n"
--  "        }\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"False easting\",\n"
--  "        \"value\": 500000,\n"
--  "        \"unit\": \"metre\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 8806\n"
--  "        }\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"False northing\",\n"
--  "        \"value\": 0,\n"
--  "        \"unit\": \"metre\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 8807\n"
--  "        }\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"Cartesian\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Easting\",\n"
--  "        \"abbreviation\": \"E\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Northing\",\n"
--  "        \"abbreviation\": \"N\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto pcrs = nn_dynamic_pointer_cast<ProjectedCRS>(obj);
--  ASSERT_TRUE(pcrs != nullptr);
--  EXPECT_EQ(pcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_projected_crs;

   procedure json_import_compound_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"CompoundCRS\",\n"
--  "  \"name\": \"WGS 84 + EGM2008 height\",\n"
--  "  \"components\": [\n"
--  "    {\n"
--  "      \"type\": \"GeographicCRS\",\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"datum\": {\n"
--  "        \"type\": \"GeodeticReferenceFrame\",\n"
--  "        \"name\": \"World Geodetic System 1984\",\n"
--  "        \"ellipsoid\": {\n"
--  "          \"name\": \"WGS 84\",\n"
--  "          \"semi_major_axis\": 6378137,\n"
--  "          \"inverse_flattening\": 298.257223563\n"
--  "        }\n"
--  "      },\n"
--  "      \"coordinate_system\": {\n"
--  "        \"subtype\": \"ellipsoidal\",\n"
--  "        \"axis\": [\n"
--  "          {\n"
--  "            \"name\": \"Geodetic latitude\",\n"
--  "            \"abbreviation\": \"Lat\",\n"
--  "            \"direction\": \"north\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          },\n"
--  "          {\n"
--  "            \"name\": \"Geodetic longitude\",\n"
--  "            \"abbreviation\": \"Lon\",\n"
--  "            \"direction\": \"east\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          }\n"
--  "        ]\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 4326\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"type\": \"VerticalCRS\",\n"
--  "      \"name\": \"EGM2008 height\",\n"
--  "      \"datum\": {\n"
--  "        \"type\": \"VerticalReferenceFrame\",\n"
--  "        \"name\": \"EGM2008 geoid\"\n"
--  "      },\n"
--  "      \"coordinate_system\": {\n"
--  "        \"subtype\": \"vertical\",\n"
--  "        \"axis\": [\n"
--  "          {\n"
--  "            \"name\": \"Gravity-related height\",\n"
--  "            \"abbreviation\": \"H\",\n"
--  "            \"direction\": \"up\",\n"
--  "            \"unit\": \"metre\"\n"
--  "          }\n"
--  "        ]\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 3855\n"
--  "      }\n"
--  "    }\n"
--  "  ]\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto compoundCRS = nn_dynamic_pointer_cast<CompoundCRS>(obj);
--  ASSERT_TRUE(compoundCRS != nullptr);
--  EXPECT_EQ(
--  compoundCRS->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_compound_crs;

   procedure json_import_bound_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json =
--  "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"BoundCRS\",\n"
--  "  \"source_crs\": {\n"
--  "    \"type\": \"GeographicCRS\",\n"
--  "    \"name\": \"unknown\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"Unknown based on GRS80 ellipsoid\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"GRS 1980\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257222101,\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 7019\n"
--  "        }\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Longitude\",\n"
--  "          \"abbreviation\": \"lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Latitude\",\n"
--  "          \"abbreviation\": \"lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"target_crs\": {\n"
--  "    \"type\": \"GeographicCRS\",\n"
--  "    \"name\": \"WGS 84\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"World Geodetic System 1984\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"WGS 84\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257223563\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Latitude\",\n"
--  "          \"abbreviation\": \"lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Longitude\",\n"
--  "          \"abbreviation\": \"lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    },\n"
--  "    \"id\": {\n"
--  "      \"authority\": \"EPSG\",\n"
--  "      \"code\": 4326\n"
--  "    }\n"
--  "  },\n"
--  "  \"transformation\": {\n"
--  "    \"name\": \"unknown to WGS84\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"NTv2\",\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 9615\n"
--  "      }\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"Latitude and longitude difference file\",\n"
--  "        \"value\": \"@foo\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 8656\n"
--  "        }\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto boundCRS = nn_dynamic_pointer_cast<BoundCRS>(obj);
--  ASSERT_TRUE(boundCRS != nullptr);
--  EXPECT_EQ(
--  boundCRS->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_bound_crs;

   procedure json_import_transformation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"Transformation\",\n"
--  "  \"name\": \"GDA94 to GDA2020 (1)\",\n"
--  "  \"source_crs\": {\n"
--  "    \"type\": \"GeographicCRS\",\n"
--  "    \"name\": \"GDA94\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"Geocentric Datum of Australia 1994\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"GRS 1980\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257222101\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Geodetic latitude\",\n"
--  "          \"abbreviation\": \"Lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Geodetic longitude\",\n"
--  "          \"abbreviation\": \"Lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"target_crs\": {\n"
--  "    \"type\": \"GeographicCRS\",\n"
--  "    \"name\": \"GDA2020\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"Geocentric Datum of Australia 2020\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"GRS 1980\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257222101\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Geodetic latitude\",\n"
--  "          \"abbreviation\": \"Lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Geodetic longitude\",\n"
--  "          \"abbreviation\": \"Lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"method\": {\n"
--  "    \"name\": \"Coordinate Frame rotation (geog2D domain)\",\n"
--  "    \"id\": {\n"
--  "      \"authority\": \"EPSG\",\n"
--  "      \"code\": 9607\n"
--  "    }\n"
--  "  },\n"
--  "  \"parameters\": [\n"
--  "    {\n"
--  "      \"name\": \"X-axis translation\",\n"
--  "      \"value\": 61.55,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"LinearUnit\",\n"
--  "        \"name\": \"millimetre\",\n"
--  "        \"conversion_factor\": 0.001\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8605\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"Y-axis translation\",\n"
--  "      \"value\": -10.87,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"LinearUnit\",\n"
--  "        \"name\": \"millimetre\",\n"
--  "        \"conversion_factor\": 0.001\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8606\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"Z-axis translation\",\n"
--  "      \"value\": -40.19,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"LinearUnit\",\n"
--  "        \"name\": \"millimetre\",\n"
--  "        \"conversion_factor\": 0.001\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8607\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"X-axis rotation\",\n"
--  "      \"value\": -39.4924,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"AngularUnit\",\n"
--  "        \"name\": \"milliarc-second\",\n"
--  "        \"conversion_factor\": 4.84813681109536e-09\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8608\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"Y-axis rotation\",\n"
--  "      \"value\": -32.7221,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"AngularUnit\",\n"
--  "        \"name\": \"milliarc-second\",\n"
--  "        \"conversion_factor\": 4.84813681109536e-09\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8609\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"Z-axis rotation\",\n"
--  "      \"value\": -32.8979,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"AngularUnit\",\n"
--  "        \"name\": \"milliarc-second\",\n"
--  "        \"conversion_factor\": 4.84813681109536e-09\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8610\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"Scale difference\",\n"
--  "      \"value\": -9.994,\n"
--  "      \"unit\": {\n"
--  "        \"type\": \"ScaleUnit\",\n"
--  "        \"name\": \"parts per billion\",\n"
--  "        \"conversion_factor\": 1e-09\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8611\n"
--  "      }\n"
--  "    }\n"
--  "  ],\n"
--  "  \"accuracy\": \"0.01\",\n"
--  "  \"scope\": \"scope\",\n"
--  "  \"area\": \"Australia - GDA\",\n"
--  "  \"bbox\": {\n"
--  "    \"south_latitude\": -60.56,\n"
--  "    \"west_longitude\": 93.41,\n"
--  "    \"north_latitude\": -8.47,\n"
--  "    \"east_longitude\": 173.35\n"
--  "  },\n"
--  "  \"id\": {\n"
--  "    \"authority\": \"EPSG\",\n"
--  "    \"code\": 8048\n"
--  "  },\n"
--  "  \"remarks\": \"foo\"\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto transf = nn_dynamic_pointer_cast<Transformation>(obj);
--  ASSERT_TRUE(transf != nullptr);
--  EXPECT_EQ(
--  transf->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_transformation;

   procedure json_import_concatenated_operation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json =
--  "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"ConcatenatedOperation\",\n"
--  "  \"name\": \"Inverse of Vicgrid + GDA94 to GDA2020 (1)\",\n"
--  "  \"source_crs\": {\n"
--  "    \"type\": \"ProjectedCRS\",\n"
--  "    \"name\": \"GDA94 / Vicgrid\",\n"
--  "    \"base_crs\": {\n"
--  "      \"name\": \"GDA94\",\n"
--  "      \"datum\": {\n"
--  "        \"type\": \"GeodeticReferenceFrame\",\n"
--  "        \"name\": \"Geocentric Datum of Australia 1994\",\n"
--  "        \"ellipsoid\": {\n"
--  "          \"name\": \"GRS 1980\",\n"
--  "          \"semi_major_axis\": 6378137,\n"
--  "          \"inverse_flattening\": 298.257222101\n"
--  "        }\n"
--  "      },\n"
--  "      \"coordinate_system\": {\n"
--  "        \"subtype\": \"ellipsoidal\",\n"
--  "        \"axis\": [\n"
--  "          {\n"
--  "            \"name\": \"Geodetic latitude\",\n"
--  "            \"abbreviation\": \"Lat\",\n"
--  "            \"direction\": \"north\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          },\n"
--  "          {\n"
--  "            \"name\": \"Geodetic longitude\",\n"
--  "            \"abbreviation\": \"Lon\",\n"
--  "            \"direction\": \"east\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          }\n"
--  "        ]\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 4283\n"
--  "      }\n"
--  "    },\n"
--  "    \"conversion\": {\n"
--  "      \"name\": \"Vicgrid\",\n"
--  "      \"method\": {\n"
--  "        \"name\": \"Lambert Conic Conformal (2SP)\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 9802\n"
--  "        }\n"
--  "      },\n"
--  "      \"parameters\": [\n"
--  "        {\n"
--  "          \"name\": \"Latitude of false origin\",\n"
--  "          \"value\": -37,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8821\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Longitude of false origin\",\n"
--  "          \"value\": 145,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8822\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Latitude of 1st standard parallel\",\n"
--  "          \"value\": -36,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8823\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Latitude of 2nd standard parallel\",\n"
--  "          \"value\": -38,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8824\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Easting at false origin\",\n"
--  "          \"value\": 2500000,\n"
--  "          \"unit\": \"metre\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8826\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Northing at false origin\",\n"
--  "          \"value\": 2500000,\n"
--  "          \"unit\": \"metre\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8827\n"
--  "          }\n"
--  "        }\n"
--  "      ]\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"Cartesian\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Easting\",\n"
--  "          \"abbreviation\": \"E\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"metre\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Northing\",\n"
--  "          \"abbreviation\": \"N\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"metre\"\n"
--  "        }\n"
--  "      ]\n"
--  "    },\n"
--  "    \"id\": {\n"
--  "      \"authority\": \"EPSG\",\n"
--  "      \"code\": 3111\n"
--  "    }\n"
--  "  },\n"
--  "  \"target_crs\": {\n"
--  "    \"type\": \"GeographicCRS\",\n"
--  "    \"name\": \"GDA2020\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"Geocentric Datum of Australia 2020\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"GRS 1980\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257222101\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Geodetic latitude\",\n"
--  "          \"abbreviation\": \"Lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Geodetic longitude\",\n"
--  "          \"abbreviation\": \"Lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    },\n"
--  "    \"id\": {\n"
--  "      \"authority\": \"EPSG\",\n"
--  "      \"code\": 7844\n"
--  "    }\n"
--  "  },\n"
--  "  \"steps\": [\n"
--  "    {\n"
--  "      \"type\": \"Conversion\",\n"
--  "      \"name\": \"Inverse of Vicgrid\",\n"
--  "      \"method\": {\n"
--  "        \"name\": \"Inverse of Lambert Conic Conformal (2SP)\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"INVERSE(EPSG)\",\n"
--  "          \"code\": 9802\n"
--  "        }\n"
--  "      },\n"
--  "      \"parameters\": [\n"
--  "        {\n"
--  "          \"name\": \"Latitude of false origin\",\n"
--  "          \"value\": -37,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8821\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Longitude of false origin\",\n"
--  "          \"value\": 145,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8822\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Latitude of 1st standard parallel\",\n"
--  "          \"value\": -36,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8823\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Latitude of 2nd standard parallel\",\n"
--  "          \"value\": -38,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8824\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Easting at false origin\",\n"
--  "          \"value\": 2500000,\n"
--  "          \"unit\": \"metre\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8826\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Northing at false origin\",\n"
--  "          \"value\": 2500000,\n"
--  "          \"unit\": \"metre\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8827\n"
--  "          }\n"
--  "        }\n"
--  "      ],\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"INVERSE(EPSG)\",\n"
--  "        \"code\": 17361\n"
--  "      }\n"
--  "    },\n"
--  "    {\n"
--  "      \"type\": \"Transformation\",\n"
--  "      \"name\": \"GDA94 to GDA2020 (1)\",\n"
--  "      \"source_crs\": {\n"
--  "        \"type\": \"GeographicCRS\",\n"
--  "        \"name\": \"GDA94\",\n"
--  "        \"datum\": {\n"
--  "          \"type\": \"GeodeticReferenceFrame\",\n"
--  "          \"name\": \"Geocentric Datum of Australia 1994\",\n"
--  "          \"ellipsoid\": {\n"
--  "            \"name\": \"GRS 1980\",\n"
--  "            \"semi_major_axis\": 6378137,\n"
--  "            \"inverse_flattening\": 298.257222101\n"
--  "          }\n"
--  "        },\n"
--  "        \"coordinate_system\": {\n"
--  "          \"subtype\": \"ellipsoidal\",\n"
--  "          \"axis\": [\n"
--  "            {\n"
--  "              \"name\": \"Geodetic latitude\",\n"
--  "              \"abbreviation\": \"Lat\",\n"
--  "              \"direction\": \"north\",\n"
--  "              \"unit\": \"degree\"\n"
--  "            },\n"
--  "            {\n"
--  "              \"name\": \"Geodetic longitude\",\n"
--  "              \"abbreviation\": \"Lon\",\n"
--  "              \"direction\": \"east\",\n"
--  "              \"unit\": \"degree\"\n"
--  "            }\n"
--  "          ]\n"
--  "        },\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 4283\n"
--  "        }\n"
--  "      },\n"
--  "      \"target_crs\": {\n"
--  "        \"type\": \"GeographicCRS\",\n"
--  "        \"name\": \"GDA2020\",\n"
--  "        \"datum\": {\n"
--  "          \"type\": \"GeodeticReferenceFrame\",\n"
--  "          \"name\": \"Geocentric Datum of Australia 2020\",\n"
--  "          \"ellipsoid\": {\n"
--  "            \"name\": \"GRS 1980\",\n"
--  "            \"semi_major_axis\": 6378137,\n"
--  "            \"inverse_flattening\": 298.257222101\n"
--  "          }\n"
--  "        },\n"
--  "        \"coordinate_system\": {\n"
--  "          \"subtype\": \"ellipsoidal\",\n"
--  "          \"axis\": [\n"
--  "            {\n"
--  "              \"name\": \"Geodetic latitude\",\n"
--  "              \"abbreviation\": \"Lat\",\n"
--  "              \"direction\": \"north\",\n"
--  "              \"unit\": \"degree\"\n"
--  "            },\n"
--  "            {\n"
--  "              \"name\": \"Geodetic longitude\",\n"
--  "              \"abbreviation\": \"Lon\",\n"
--  "              \"direction\": \"east\",\n"
--  "              \"unit\": \"degree\"\n"
--  "            }\n"
--  "          ]\n"
--  "        },\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 7844\n"
--  "        }\n"
--  "      },\n"
--  "      \"method\": {\n"
--  "        \"name\": \"Coordinate Frame rotation (geog2D domain)\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 9607\n"
--  "        }\n"
--  "      },\n"
--  "      \"parameters\": [\n"
--  "        {\n"
--  "          \"name\": \"X-axis translation\",\n"
--  "          \"value\": 61.55,\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"LinearUnit\",\n"
--  "            \"name\": \"millimetre\",\n"
--  "            \"conversion_factor\": 0.001\n"
--  "          },\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8605\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Y-axis translation\",\n"
--  "          \"value\": -10.87,\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"LinearUnit\",\n"
--  "            \"name\": \"millimetre\",\n"
--  "            \"conversion_factor\": 0.001\n"
--  "          },\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8606\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Z-axis translation\",\n"
--  "          \"value\": -40.19,\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"LinearUnit\",\n"
--  "            \"name\": \"millimetre\",\n"
--  "            \"conversion_factor\": 0.001\n"
--  "          },\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8607\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"X-axis rotation\",\n"
--  "          \"value\": -39.4924,\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"AngularUnit\",\n"
--  "            \"name\": \"milliarc-second\",\n"
--  "            \"conversion_factor\": 4.84813681109536e-09\n"
--  "          },\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8608\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Y-axis rotation\",\n"
--  "          \"value\": -32.7221,\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"AngularUnit\",\n"
--  "            \"name\": \"milliarc-second\",\n"
--  "            \"conversion_factor\": 4.84813681109536e-09\n"
--  "          },\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8609\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Z-axis rotation\",\n"
--  "          \"value\": -32.8979,\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"AngularUnit\",\n"
--  "            \"name\": \"milliarc-second\",\n"
--  "            \"conversion_factor\": 4.84813681109536e-09\n"
--  "          },\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8610\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Scale difference\",\n"
--  "          \"value\": -9.994,\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"ScaleUnit\",\n"
--  "            \"name\": \"parts per billion\",\n"
--  "            \"conversion_factor\": 1e-09\n"
--  "          },\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8611\n"
--  "          }\n"
--  "        }\n"
--  "      ],\n"
--  "      \"accuracy\": \"0.01\",\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 8048\n"
--  "      },\n"
--  "      \"remarks\": \"remarks\"\n"
--  "    }\n"
--  "  ],\n"
--  "  \"area\": \"Australia - GDA\",\n"
--  "  \"bbox\": {\n"
--  "    \"south_latitude\": -60.56,\n"
--  "    \"west_longitude\": 93.41,\n"
--  "    \"north_latitude\": -8.47,\n"
--  "    \"east_longitude\": 173.35\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto concat = nn_dynamic_pointer_cast<ConcatenatedOperation>(obj);
--  ASSERT_TRUE(concat != nullptr);
--  EXPECT_EQ(
--  concat->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_concatenated_operation;

   procedure json_import_geographic_crs_with_datum_ensemble (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"GeographicCRS\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"datum_ensemble\": {\n"
--  "    \"name\": \"WGS 84 ensemble\",\n"
--  "    \"members\": [\n"
--  "      {\n"
--  "        \"name\": \"World Geodetic System 1984 (Transit)\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"World Geodetic System 1984 (G730)\"\n"
--  "      }\n"
--  "    ],\n"
--  "    \"ellipsoid\": {\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"semi_major_axis\": 6378137,\n"
--  "      \"inverse_flattening\": 298.257223563\n"
--  "    },\n"
--  "    \"accuracy\": \"2\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"ellipsoidal\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Latitude\",\n"
--  "        \"abbreviation\": \"lat\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Longitude\",\n"
--  "        \"abbreviation\": \"lon\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  
--  auto expected_json =
--  "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"GeographicCRS\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"datum_ensemble\": {\n"
--  "    \"name\": \"WGS 84 ensemble\",\n"
--  "    \"members\": [\n"
--  "      {\n"
--  "        \"name\": \"World Geodetic System 1984 (Transit)\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 1166\n"
--  "        }\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"World Geodetic System 1984 (G730)\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 1152\n"
--  "        }\n"
--  "      }\n"
--  "    ],\n"
--  "    \"ellipsoid\": {\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"semi_major_axis\": 6378137,\n"
--  "      \"inverse_flattening\": 298.257223563,\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 7030\n"
--  "      }\n"
--  "    },\n"
--  "    \"accuracy\": \"2\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"ellipsoidal\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Latitude\",\n"
--  "        \"abbreviation\": \"lat\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Longitude\",\n"
--  "        \"abbreviation\": \"lon\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  
--  {
--  // No database
--  auto obj = createFromUserInput(json, nullptr);
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(gcrs != nullptr);
--  EXPECT_EQ(
--  gcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);
--  }
--  {
--  auto obj = createFromUserInput(json, DatabaseContext::create());
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(gcrs != nullptr);
--  EXPECT_EQ(
--  gcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  expected_json);
--  }
--  {
--  auto obj =
--  createFromUserInput(expected_json, DatabaseContext::create());
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(gcrs != nullptr);
--  EXPECT_EQ(
--  gcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  expected_json);
--  }      
   end json_import_geographic_crs_with_datum_ensemble;

   procedure json_import_datum_ensemble_without_ellipsoid (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DatumEnsemble\",\n"
--  "  \"name\": \"ensemble\",\n"
--  "  \"members\": [\n"
--  "    {\n"
--  "      \"name\": \"member1\"\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"member2\"\n"
--  "    }\n"
--  "  ],\n"
--  "  \"accuracy\": \"2\"\n"
--  "}";
--  
--  // No database
--  auto obj = createFromUserInput(json, nullptr);
--  auto ensemble = nn_dynamic_pointer_cast<DatumEnsemble>(obj);
--  ASSERT_TRUE(ensemble != nullptr);
--  EXPECT_EQ(
--  ensemble->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_datum_ensemble_without_ellipsoid;

   procedure json_import_vertical_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"VerticalCRS\",\n"
--  "  \"name\": \"EGM2008 height\",\n"
--  "  \"datum\": {\n"
--  "    \"type\": \"VerticalReferenceFrame\",\n"
--  "    \"name\": \"EGM2008 geoid\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"vertical\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Gravity-related height\",\n"
--  "        \"abbreviation\": \"H\",\n"
--  "        \"direction\": \"up\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);
--  
--  auto datum = crs->datum();
--  auto datum_json =
--  datum->exportToJSON(&(JSONFormatter::create()->setSchema("foo")));
--  auto datum_obj = createFromUserInput(datum_json, nullptr);
--  auto datum_got = nn_dynamic_pointer_cast<VerticalReferenceFrame>(datum_obj);
--  ASSERT_TRUE(datum_got != nullptr);      
   end json_import_vertical_crs;

   procedure json_import_vertical_crs_with_datum_ensemble (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"VerticalCRS\",\n"
--  "  \"name\": \"foo\",\n"
--  "  \"datum_ensemble\": {\n"
--  "    \"name\": \"ensemble\",\n"
--  "    \"members\": [\n"
--  "      {\n"
--  "        \"name\": \"member1\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"member2\"\n"
--  "      }\n"
--  "    ],\n"
--  "    \"accuracy\": \"2\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"vertical\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Gravity-related height\",\n"
--  "        \"abbreviation\": \"H\",\n"
--  "        \"direction\": \"up\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  
--  // No database
--  auto obj = createFromUserInput(json, nullptr);
--  auto vcrs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(vcrs != nullptr);
--  EXPECT_EQ(vcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_vertical_crs_with_datum_ensemble;

   procedure json_import_vertical_crs_with_geoid_model (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"VerticalCRS\",\n"
--  "  \"name\": \"CGVD2013\",\n"
--  "  \"datum\": {\n"
--  "    \"type\": \"VerticalReferenceFrame\",\n"
--  "    \"name\": \"Canadian Geodetic Vertical Datum of 2013\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"vertical\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Gravity-related height\",\n"
--  "        \"abbreviation\": \"H\",\n"
--  "        \"direction\": \"up\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"geoid_model\": {\n"
--  "    \"name\": \"CGG2013\",\n"
--  "    \"id\": {\n"
--  "      \"authority\": \"EPSG\",\n"
--  "      \"code\": 6648\n"
--  "    }\n"
--  "  }\n"
--  "}";
--  
--  // No database
--  auto obj = createFromUserInput(json, nullptr);
--  auto vcrs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(vcrs != nullptr);
--  EXPECT_EQ(vcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_vertical_crs_with_geoid_model;

   procedure json_import_vertical_crs_with_geoid_model_and_interpolation_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"VerticalCRS\",\n"
--  "  \"name\": \"foo\",\n"
--  "  \"datum\": {\n"
--  "    \"type\": \"VerticalReferenceFrame\",\n"
--  "    \"name\": \"bar\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"vertical\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Gravity-related height\",\n"
--  "        \"abbreviation\": \"H\",\n"
--  "        \"direction\": \"up\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"geoid_model\": {\n"
--  "    \"name\": \"baz\",\n"
--  "    \"interpolation_crs\": {\n"
--  "      \"type\": \"GeographicCRS\",\n"
--  "      \"name\": \"NAD83(2011)\",\n"
--  "      \"datum\": {\n"
--  "        \"type\": \"GeodeticReferenceFrame\",\n"
--  "        \"name\": \"NAD83 (National Spatial Reference System "
--  "2011)\",\n"
--  "        \"ellipsoid\": {\n"
--  "          \"name\": \"GRS 1980\",\n"
--  "          \"semi_major_axis\": 6378137,\n"
--  "          \"inverse_flattening\": 298.257222101\n"
--  "        }\n"
--  "      },\n"
--  "      \"coordinate_system\": {\n"
--  "        \"subtype\": \"ellipsoidal\",\n"
--  "        \"axis\": [\n"
--  "          {\n"
--  "            \"name\": \"Geodetic latitude\",\n"
--  "            \"abbreviation\": \"Lat\",\n"
--  "            \"direction\": \"north\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          },\n"
--  "          {\n"
--  "            \"name\": \"Geodetic longitude\",\n"
--  "            \"abbreviation\": \"Lon\",\n"
--  "            \"direction\": \"east\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          },\n"
--  "          {\n"
--  "            \"name\": \"Ellipsoidal height\",\n"
--  "            \"abbreviation\": \"h\",\n"
--  "            \"direction\": \"up\",\n"
--  "            \"unit\": \"metre\"\n"
--  "          }\n"
--  "        ]\n"
--  "      },\n"
--  "      \"id\": {\n"
--  "        \"authority\": \"EPSG\",\n"
--  "        \"code\": 6319\n"
--  "      }\n"
--  "    }\n"
--  "  }\n"
--  "}";
--  
--  // No database
--  auto obj = createFromUserInput(json, nullptr);
--  auto vcrs = nn_dynamic_pointer_cast<VerticalCRS>(obj);
--  ASSERT_TRUE(vcrs != nullptr);
--  EXPECT_EQ(vcrs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_vertical_crs_with_geoid_model_and_interpolation_crs;

   procedure json_import_parametric_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"ParametricCRS\",\n"
--  "  \"name\": \"WMO standard atmosphere layer 0\",\n"
--  "  \"datum\": {\n"
--  "    \"name\": \"Mean Sea Level\",\n"
--  "    \"anchor\": \"1013.25 hPa at 15°C\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"parametric\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Pressure\",\n"
--  "        \"abbreviation\": \"hPa\",\n"
--  "        \"direction\": \"up\",\n"
--  "        \"unit\": {\n"
--  "          \"type\": \"ParametricUnit\",\n"
--  "          \"name\": \"HectoPascal\",\n"
--  "          \"conversion_factor\": 100\n"
--  "        }\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<ParametricCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);
--  
--  auto datum = crs->datum();
--  auto datum_json =
--  datum->exportToJSON(&(JSONFormatter::create()->setSchema("foo")));
--  auto datum_obj = createFromUserInput(datum_json, nullptr);
--  auto datum_got = nn_dynamic_pointer_cast<ParametricDatum>(datum_obj);
--  ASSERT_TRUE(datum_got != nullptr);      
   end json_import_parametric_crs;

   procedure json_import_engineering_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"EngineeringCRS\",\n"
--  "  \"name\": \"Engineering CRS\",\n"
--  "  \"datum\": {\n"
--  "    \"name\": \"Engineering datum\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"Cartesian\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Easting\",\n"
--  "        \"abbreviation\": \"E\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Northing\",\n"
--  "        \"abbreviation\": \"N\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<EngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);
--  
--  auto datum = crs->datum();
--  auto datum_json =
--  datum->exportToJSON(&(JSONFormatter::create()->setSchema("foo")));
--  auto datum_obj = createFromUserInput(datum_json, nullptr);
--  auto datum_got = nn_dynamic_pointer_cast<EngineeringDatum>(datum_obj);
--  ASSERT_TRUE(datum_got != nullptr);      
   end json_import_engineering_crs;

   procedure json_import_temporal_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"TemporalCRS\",\n"
--  "  \"name\": \"Temporal CRS\",\n"
--  "  \"datum\": {\n"
--  "    \"name\": \"Gregorian calendar\",\n"
--  "    \"calendar\": \"proleptic Gregorian\",\n"
--  "    \"time_origin\": \"0000-01-01\"\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"TemporalDateTime\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Time\",\n"
--  "        \"abbreviation\": \"T\",\n"
--  "        \"direction\": \"future\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<TemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);
--  
--  auto datum = crs->datum();
--  auto datum_json =
--  datum->exportToJSON(&(JSONFormatter::create()->setSchema("foo")));
--  auto datum_obj = createFromUserInput(datum_json, nullptr);
--  auto datum_got = nn_dynamic_pointer_cast<TemporalDatum>(datum_obj);
--  ASSERT_TRUE(datum_got != nullptr);      
   end json_import_temporal_crs;

   procedure json_import_derived_geodetic_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DerivedGeodeticCRS\",\n"
--  "  \"name\": \"Derived geodetic CRS\",\n"
--  "  \"base_crs\": {\n"
--  "    \"type\": \"GeographicCRS\",\n"
--  "    \"name\": \"WGS 84\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"World Geodetic System 1984\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"WGS 84\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257223563\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Latitude\",\n"
--  "          \"abbreviation\": \"lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Longitude\",\n"
--  "          \"abbreviation\": \"lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"Some conversion\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"Some method\"\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"foo\",\n"
--  "        \"value\": 1,\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"Cartesian\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Geocentric X\",\n"
--  "        \"abbreviation\": \"X\",\n"
--  "        \"direction\": \"geocentricX\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Geocentric Y\",\n"
--  "        \"abbreviation\": \"Y\",\n"
--  "        \"direction\": \"geocentricY\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Geocentric Z\",\n"
--  "        \"abbreviation\": \"Z\",\n"
--  "        \"direction\": \"geocentricZ\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeodeticCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_derived_geodetic_crs;

   procedure json_import_derived_geographic_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DerivedGeographicCRS\",\n"
--  "  \"name\": \"WMO Atlantic Pole\",\n"
--  "  \"base_crs\": {\n"
--  "    \"type\": \"GeographicCRS\",\n"
--  "    \"name\": \"WGS 84\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"GeodeticReferenceFrame\",\n"
--  "      \"name\": \"World Geodetic System 1984\",\n"
--  "      \"ellipsoid\": {\n"
--  "        \"name\": \"WGS 84\",\n"
--  "        \"semi_major_axis\": 6378137,\n"
--  "        \"inverse_flattening\": 298.257223563\n"
--  "      }\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"ellipsoidal\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Latitude\",\n"
--  "          \"abbreviation\": \"lat\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Longitude\",\n"
--  "          \"abbreviation\": \"lon\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"degree\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"Atlantic pole\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"Pole rotation\"\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"Latitude of rotated pole\",\n"
--  "        \"value\": 52,\n"
--  "        \"unit\": \"degree\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Longitude of rotated pole\",\n"
--  "        \"value\": -30,\n"
--  "        \"unit\": \"degree\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Axis rotation\",\n"
--  "        \"value\": -25,\n"
--  "        \"unit\": \"degree\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"ellipsoidal\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Latitude\",\n"
--  "        \"abbreviation\": \"lat\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Longitude\",\n"
--  "        \"abbreviation\": \"lon\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"degree\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<DerivedGeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_derived_geographic_crs;

   procedure json_import_derived_projected_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DerivedProjectedCRS\",\n"
--  "  \"name\": \"derived projectedCRS\",\n"
--  "  \"base_crs\": {\n"
--  "    \"type\": \"ProjectedCRS\",\n"
--  "    \"name\": \"WGS 84 / UTM zone 31N\",\n"
--  "    \"base_crs\": {\n"
--  "      \"name\": \"WGS 84\",\n"
--  "      \"datum\": {\n"
--  "        \"type\": \"GeodeticReferenceFrame\",\n"
--  "        \"name\": \"World Geodetic System 1984\",\n"
--  "        \"ellipsoid\": {\n"
--  "          \"name\": \"WGS 84\",\n"
--  "          \"semi_major_axis\": 6378137,\n"
--  "          \"inverse_flattening\": 298.257223563\n"
--  "        }\n"
--  "      },\n"
--  "      \"coordinate_system\": {\n"
--  "        \"subtype\": \"ellipsoidal\",\n"
--  "        \"axis\": [\n"
--  "          {\n"
--  "            \"name\": \"Latitude\",\n"
--  "            \"abbreviation\": \"lat\",\n"
--  "            \"direction\": \"north\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          },\n"
--  "          {\n"
--  "            \"name\": \"Longitude\",\n"
--  "            \"abbreviation\": \"lon\",\n"
--  "            \"direction\": \"east\",\n"
--  "            \"unit\": \"degree\"\n"
--  "          }\n"
--  "        ]\n"
--  "      }\n"
--  "    },\n"
--  "    \"conversion\": {\n"
--  "      \"name\": \"UTM zone 31N\",\n"
--  "      \"method\": {\n"
--  "        \"name\": \"Transverse Mercator\",\n"
--  "        \"id\": {\n"
--  "          \"authority\": \"EPSG\",\n"
--  "          \"code\": 9807\n"
--  "        }\n"
--  "      },\n"
--  "      \"parameters\": [\n"
--  "        {\n"
--  "          \"name\": \"Latitude of natural origin\",\n"
--  "          \"value\": 0,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8801\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Longitude of natural origin\",\n"
--  "          \"value\": 3,\n"
--  "          \"unit\": \"degree\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8802\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Scale factor at natural origin\",\n"
--  "          \"value\": 0.9996,\n"
--  "          \"unit\": \"unity\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8805\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"False easting\",\n"
--  "          \"value\": 500000,\n"
--  "          \"unit\": \"metre\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8806\n"
--  "          }\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"False northing\",\n"
--  "          \"value\": 0,\n"
--  "          \"unit\": \"metre\",\n"
--  "          \"id\": {\n"
--  "            \"authority\": \"EPSG\",\n"
--  "            \"code\": 8807\n"
--  "          }\n"
--  "        }\n"
--  "      ]\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"Cartesian\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Easting\",\n"
--  "          \"abbreviation\": \"E\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"metre\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Northing\",\n"
--  "          \"abbreviation\": \"N\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"metre\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"unnamed\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"PROJ unimplemented\"\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"foo\",\n"
--  "        \"value\": 1,\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"Cartesian\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Easting\",\n"
--  "        \"abbreviation\": \"E\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Northing\",\n"
--  "        \"abbreviation\": \"N\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<DerivedProjectedCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_derived_projected_crs;

   procedure json_import_derived_vertical_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DerivedVerticalCRS\",\n"
--  "  \"name\": \"Derived vertCRS\",\n"
--  "  \"base_crs\": {\n"
--  "    \"type\": \"VerticalCRS\",\n"
--  "    \"name\": \"ODN height\",\n"
--  "    \"datum\": {\n"
--  "      \"type\": \"VerticalReferenceFrame\",\n"
--  "      \"name\": \"Ordnance Datum Newlyn\"\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"vertical\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Gravity-related height\",\n"
--  "          \"abbreviation\": \"H\",\n"
--  "          \"direction\": \"up\",\n"
--  "          \"unit\": \"metre\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"unnamed\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"PROJ unimplemented\"\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"foo\",\n"
--  "        \"value\": 1,\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"vertical\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Gravity-related height\",\n"
--  "        \"abbreviation\": \"H\",\n"
--  "        \"direction\": \"up\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<DerivedVerticalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_derived_vertical_crs;

   procedure json_import_derived_engineering_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DerivedEngineeringCRS\",\n"
--  "  \"name\": \"Derived EngineeringCRS\",\n"
--  "  \"base_crs\": {\n"
--  "    \"type\": \"EngineeringCRS\",\n"
--  "    \"name\": \"Engineering CRS\",\n"
--  "    \"datum\": {\n"
--  "      \"name\": \"Engineering datum\"\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"Cartesian\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"Easting\",\n"
--  "          \"abbreviation\": \"E\",\n"
--  "          \"direction\": \"east\",\n"
--  "          \"unit\": \"metre\"\n"
--  "        },\n"
--  "        {\n"
--  "          \"name\": \"Northing\",\n"
--  "          \"abbreviation\": \"N\",\n"
--  "          \"direction\": \"north\",\n"
--  "          \"unit\": \"metre\"\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"unnamed\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"PROJ unimplemented\"\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"foo\",\n"
--  "        \"value\": 1,\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"Cartesian\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Easting\",\n"
--  "        \"abbreviation\": \"E\",\n"
--  "        \"direction\": \"east\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      },\n"
--  "      {\n"
--  "        \"name\": \"Northing\",\n"
--  "        \"abbreviation\": \"N\",\n"
--  "        \"direction\": \"north\",\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<DerivedEngineeringCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_derived_engineering_crs;

   procedure json_import_derived_parametric_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DerivedParametricCRS\",\n"
--  "  \"name\": \"Derived ParametricCRS\",\n"
--  "  \"base_crs\": {\n"
--  "    \"type\": \"ParametricCRS\",\n"
--  "    \"name\": \"Parametric CRS\",\n"
--  "    \"datum\": {\n"
--  "      \"name\": \"Parametric datum\"\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"parametric\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"unknown parametric\",\n"
--  "          \"abbreviation\": \"\",\n"
--  "          \"direction\": \"unspecified\",\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"ParametricUnit\",\n"
--  "            \"name\": \"unknown\",\n"
--  "            \"conversion_factor\": 1\n"
--  "          }\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"unnamed\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"PROJ unimplemented\"\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"foo\",\n"
--  "        \"value\": 1,\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"parametric\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Pressure\",\n"
--  "        \"abbreviation\": \"hPa\",\n"
--  "        \"direction\": \"up\",\n"
--  "        \"unit\": {\n"
--  "          \"type\": \"ParametricUnit\",\n"
--  "          \"name\": \"HectoPascal\",\n"
--  "          \"conversion_factor\": 100\n"
--  "        }\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<DerivedParametricCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_derived_parametric_crs;

   procedure json_import_derived_temporal_crs (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"DerivedTemporalCRS\",\n"
--  "  \"name\": \"Derived TemporalCRS\",\n"
--  "  \"base_crs\": {\n"
--  "    \"type\": \"TemporalCRS\",\n"
--  "    \"name\": \"Temporal CRS\",\n"
--  "    \"datum\": {\n"
--  "      \"name\": \"Gregorian calendar\",\n"
--  "      \"calendar\": \"proleptic Gregorian\",\n"
--  "      \"time_origin\": \"0000-01-01\"\n"
--  "    },\n"
--  "    \"coordinate_system\": {\n"
--  "      \"subtype\": \"TemporalDateTime\",\n"
--  "      \"axis\": [\n"
--  "        {\n"
--  "          \"name\": \"unknown temporal\",\n"
--  "          \"abbreviation\": \"\",\n"
--  "          \"direction\": \"future\",\n"
--  "          \"unit\": {\n"
--  "            \"type\": \"TimeUnit\",\n"
--  "            \"name\": \"unknown\",\n"
--  "            \"conversion_factor\": 1\n"
--  "          }\n"
--  "        }\n"
--  "      ]\n"
--  "    }\n"
--  "  },\n"
--  "  \"conversion\": {\n"
--  "    \"name\": \"unnamed\",\n"
--  "    \"method\": {\n"
--  "      \"name\": \"PROJ unimplemented\"\n"
--  "    },\n"
--  "    \"parameters\": [\n"
--  "      {\n"
--  "        \"name\": \"foo\",\n"
--  "        \"value\": 1,\n"
--  "        \"unit\": \"metre\"\n"
--  "      }\n"
--  "    ]\n"
--  "  },\n"
--  "  \"coordinate_system\": {\n"
--  "    \"subtype\": \"TemporalDateTime\",\n"
--  "    \"axis\": [\n"
--  "      {\n"
--  "        \"name\": \"Time\",\n"
--  "        \"abbreviation\": \"T\",\n"
--  "        \"direction\": \"future\"\n"
--  "      }\n"
--  "    ]\n"
--  "  }\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto crs = nn_dynamic_pointer_cast<DerivedTemporalCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  EXPECT_EQ(crs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_derived_temporal_crs;

   procedure json_import_multiple_ids (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"Ellipsoid\",\n"
--  "  \"name\": \"WGS 84\",\n"
--  "  \"semi_major_axis\": 6378137,\n"
--  "  \"inverse_flattening\": 298.257223563,\n"
--  "  \"ids\": [\n"
--  "    {\n"
--  "      \"authority\": \"EPSG\",\n"
--  "      \"code\": 4326\n"
--  "    },\n"
--  "    {\n"
--  "      \"authority\": \"FOO\",\n"
--  "      \"code\": \"BAR\"\n"
--  "    }\n"
--  "  ]\n"
--  "}";
--  auto obj = createFromUserInput(json, nullptr);
--  auto ellps = nn_dynamic_pointer_cast<Ellipsoid>(obj);
--  ASSERT_TRUE(ellps != nullptr);
--  EXPECT_EQ(ellps->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_import_multiple_ids;

   procedure json_export_coordinate_system_id (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto json = "{\n"
--  "  \"$schema\": \"foo\",\n"
--  "  \"type\": \"CoordinateSystem\",\n"
--  "  \"subtype\": \"ellipsoidal\",\n"
--  "  \"axis\": [\n"
--  "    {\n"
--  "      \"name\": \"Geodetic latitude\",\n"
--  "      \"abbreviation\": \"Lat\",\n"
--  "      \"direction\": \"north\",\n"
--  "      \"unit\": \"degree\"\n"
--  "    },\n"
--  "    {\n"
--  "      \"name\": \"Geodetic longitude\",\n"
--  "      \"abbreviation\": \"Lon\",\n"
--  "      \"direction\": \"east\",\n"
--  "      \"unit\": \"degree\"\n"
--  "    }\n"
--  "  ],\n"
--  "  \"id\": {\n"
--  "    \"authority\": \"EPSG\",\n"
--  "    \"code\": 6422\n"
--  "  }\n"
--  "}";
--  
--  auto dbContext = DatabaseContext::create();
--  auto obj = createFromUserInput("EPSG:4326", dbContext);
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(obj);
--  ASSERT_TRUE(crs != nullptr);
--  auto cs = crs->coordinateSystem();
--  ASSERT_TRUE(cs != nullptr);
--  EXPECT_EQ(cs->exportToJSON(&(JSONFormatter::create()->setSchema("foo"))),
--  json);      
   end json_export_coordinate_system_id;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, io_wkt_parsing'Access, "io_wkt_parsing");

      Registration.Register_Routine (Test, io_wkt_parsing_with_parenthesis'Access, "io_wkt_parsing_with_parenthesis");

      Registration.Register_Routine (Test, io_wkt_parsing_with_double_quotes_inside'Access, "io_wkt_parsing_with_double_quotes_inside");

      Registration.Register_Routine (Test, io_wkt_parsing_with_printed_quotes'Access, "io_wkt_parsing_with_printed_quotes");

      Registration.Register_Routine (Test, wkt_parse_sphere'Access, "wkt_parse_sphere");

      Registration.Register_Routine (Test, wkt_parse_datum_with_ANCHOR'Access, "wkt_parse_datum_with_ANCHOR");

      Registration.Register_Routine (Test, wkt_parse_datum_no_pm_not_earth'Access, "wkt_parse_datum_no_pm_not_earth");

      Registration.Register_Routine (Test, wkt_parse_dynamic_geodetic_reference_frame'Access, "wkt_parse_dynamic_geodetic_reference_frame");

      Registration.Register_Routine (Test, wkt_parse_dynamic_geodetic_reference_frame_with_model'Access, "wkt_parse_dynamic_geodetic_reference_frame_with_model");

      Registration.Register_Routine (Test, wkt_parse_dynamic_geodetic_reference_frame_with_velocitygrid'Access, "wkt_parse_dynamic_geodetic_reference_frame_with_velocitygrid");

      Registration.Register_Routine (Test, wkt_parse_geogcrs_with_ensemble'Access, "wkt_parse_geogcrs_with_ensemble");

      Registration.Register_Routine (Test, wkt_parse_invalid_geogcrs_with_ensemble'Access, "wkt_parse_invalid_geogcrs_with_ensemble");

      Registration.Register_Routine (Test, wkt_parse_wkt1_EPSG_4326'Access, "wkt_parse_wkt1_EPSG_4326");

      Registration.Register_Routine (Test, wkt_parse_wkt1_EPSG_4267'Access, "wkt_parse_wkt1_EPSG_4267");

      Registration.Register_Routine (Test, wkt_parse_wkt1_EPSG_4807_grad_mess'Access, "wkt_parse_wkt1_EPSG_4807_grad_mess");

      Registration.Register_Routine (Test, wkt_parse_wkt1_geographic_old_datum_name_from_EPSG_code'Access, "wkt_parse_wkt1_geographic_old_datum_name_from_EPSG_code");

      Registration.Register_Routine (Test, wkt_parse_wkt1_geographic_old_datum_name_without_EPSG_code'Access, "wkt_parse_wkt1_geographic_old_datum_name_without_EPSG_code");

      Registration.Register_Routine (Test, wkt_parse_wkt1_geographic_deprecated'Access, "wkt_parse_wkt1_geographic_deprecated");

      Registration.Register_Routine (Test, wkt_parse_wkt1_geographic_with_PROJ4_extension'Access, "wkt_parse_wkt1_geographic_with_PROJ4_extension");

      Registration.Register_Routine (Test, wkt_parse_wkt1_geocentric_with_PROJ4_extension'Access, "wkt_parse_wkt1_geocentric_with_PROJ4_extension");

      Registration.Register_Routine (Test, wkt_parse_wkt2_GEODCRS_EPSG_4326'Access, "wkt_parse_wkt2_GEODCRS_EPSG_4326");

      Registration.Register_Routine (Test, wkt_parse_wkt2_long_GEODETICCRS_EPSG_4326'Access, "wkt_parse_wkt2_long_GEODETICCRS_EPSG_4326");

      Registration.Register_Routine (Test, wkt_parse_wkt2_2019_GEOGCRS_EPSG_4326'Access, "wkt_parse_wkt2_2019_GEOGCRS_EPSG_4326");

      Registration.Register_Routine (Test, wkt_parse_wkt2_2019_long_GEOGRAPHICCRS_EPSG_4326'Access, "wkt_parse_wkt2_2019_long_GEOGRAPHICCRS_EPSG_4326");

      Registration.Register_Routine (Test, wkt_parse_wkt2_simplified_EPSG_4326'Access, "wkt_parse_wkt2_simplified_EPSG_4326");

      Registration.Register_Routine (Test, wkt_parse_wkt2_GEODETICDATUM'Access, "wkt_parse_wkt2_GEODETICDATUM");

      Registration.Register_Routine (Test, wkt_parse_wkt2_TRF'Access, "wkt_parse_wkt2_TRF");

      Registration.Register_Routine (Test, wkt_parse_wkt2_EPSG_4979'Access, "wkt_parse_wkt2_EPSG_4979");

      Registration.Register_Routine (Test, wkt_parse_wkt2_geocentric'Access, "wkt_parse_wkt2_geocentric");

      Registration.Register_Routine (Test, wkt_parse_wkt2_simplified_geocentric'Access, "wkt_parse_wkt2_simplified_geocentric");

      Registration.Register_Routine (Test, wkt_parse_wkt1_geocentric'Access, "wkt_parse_wkt1_geocentric");

      Registration.Register_Routine (Test, wkt_parse_wkt1_geocentric_with_z_OTHER'Access, "wkt_parse_wkt1_geocentric_with_z_OTHER");

      Registration.Register_Routine (Test, wkt_parse_wkt1_projected'Access, "wkt_parse_wkt1_projected");

      Registration.Register_Routine (Test, wkt_parse_wkt1_projected_no_axis'Access, "wkt_parse_wkt1_projected_no_axis");

      Registration.Register_Routine (Test, wkt_parse_wkt1_projected_wrong_axis_geogcs'Access, "wkt_parse_wkt1_projected_wrong_axis_geogcs");

      Registration.Register_Routine (Test, wkt_parse_wkt1_projected_with_PROJ4_extension'Access, "wkt_parse_wkt1_projected_with_PROJ4_extension");

      Registration.Register_Routine (Test, wkt_parse_wkt1_Mercator_1SP_with_latitude_origin_0'Access, "wkt_parse_wkt1_Mercator_1SP_with_latitude_origin_0");

      Registration.Register_Routine (Test, wkt_parse_wkt1_Mercator_1SP_without_scale_factor'Access, "wkt_parse_wkt1_Mercator_1SP_without_scale_factor");

      Registration.Register_Routine (Test, wkt_parse_wkt1_krovak_south_west'Access, "wkt_parse_wkt1_krovak_south_west");

      Registration.Register_Routine (Test, wkt_parse_wkt1_krovak_north_oriented'Access, "wkt_parse_wkt1_krovak_north_oriented");

      Registration.Register_Routine (Test, wkt_parse_wkt1_polar_stereographic_latitude_of_origin_70'Access, "wkt_parse_wkt1_polar_stereographic_latitude_of_origin_70");

      Registration.Register_Routine (Test, wkt_parse_wkt1_polar_stereographic_latitude_of_origin_minus_70'Access, "wkt_parse_wkt1_polar_stereographic_latitude_of_origin_minus_70");

      Registration.Register_Routine (Test, wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90'Access, "wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90");

      Registration.Register_Routine (Test, wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90_scale_factor_1'Access, "wkt_parse_wkt1_polar_stereographic_latitude_of_origin_90_scale_factor_1");

      Registration.Register_Routine (Test, wkt_parse_wkt1_polar_stereographic_scale_factor'Access, "wkt_parse_wkt1_polar_stereographic_scale_factor");

      Registration.Register_Routine (Test, wkt_parse_wkt1_Spherical_Cross_Track_Height'Access, "wkt_parse_wkt1_Spherical_Cross_Track_Height");

      Registration.Register_Routine (Test, wkt_parse_wkt2_projected'Access, "wkt_parse_wkt2_projected");

      Registration.Register_Routine (Test, wkt_parse_wkt2_2019_projected_with_id_in_basegeodcrs'Access, "wkt_parse_wkt2_2019_projected_with_id_in_basegeodcrs");

      Registration.Register_Routine (Test, wkt_parse_wkt2_2019_projected_no_id_but_id_in_basegeodcrs'Access, "wkt_parse_wkt2_2019_projected_no_id_but_id_in_basegeodcrs");

      Registration.Register_Routine (Test, wkt_parse_wkt2_2019_simplified_projected'Access, "wkt_parse_wkt2_2019_simplified_projected");

      Registration.Register_Routine (Test, wkt_parse_wkt2_2019_projected_3D'Access, "wkt_parse_wkt2_2019_projected_3D");

      Registration.Register_Routine (Test, wkt_parse_wkt2_2019_projected_utm_3D'Access, "wkt_parse_wkt2_2019_projected_utm_3D");

      Registration.Register_Routine (Test, crs_projected_angular_unit_from_primem'Access, "crs_projected_angular_unit_from_primem");

      Registration.Register_Routine (Test, wkt_parse_cs_with_MERIDIAN'Access, "wkt_parse_cs_with_MERIDIAN");

      Registration.Register_Routine (Test, wkt_parse_cs_with_multiple_ID'Access, "wkt_parse_cs_with_multiple_ID");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_WKT2'Access, "wkt_parse_vertcrs_WKT2");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_VRF_WKT2'Access, "wkt_parse_vertcrs_VRF_WKT2");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_with_GEOIDMODEL'Access, "wkt_parse_vertcrs_with_GEOIDMODEL");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_WKT1_GDAL'Access, "wkt_parse_vertcrs_WKT1_GDAL");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_WKT1_GDAL_minimum'Access, "wkt_parse_vertcrs_WKT1_GDAL_minimum");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_WKT1_LAS_ftUS'Access, "wkt_parse_vertcrs_WKT1_LAS_ftUS");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_WKT1_LAS_metre'Access, "wkt_parse_vertcrs_WKT1_LAS_metre");

      Registration.Register_Routine (Test, wkt_parse_dynamic_vertical_reference_frame'Access, "wkt_parse_dynamic_vertical_reference_frame");

      Registration.Register_Routine (Test, wkt_parse_vertcrs_with_ensemble'Access, "wkt_parse_vertcrs_with_ensemble");

      Registration.Register_Routine (Test, wkt_parse_vdatum_with_ANCHOR'Access, "wkt_parse_vdatum_with_ANCHOR");

      Registration.Register_Routine (Test, wkt_parse_COMPOUNDCRS'Access, "wkt_parse_COMPOUNDCRS");

      Registration.Register_Routine (Test, wkt_parse_COMPOUNDCRS_spatio_parametric_2015'Access, "wkt_parse_COMPOUNDCRS_spatio_parametric_2015");

      Registration.Register_Routine (Test, wkt_parse_COMPOUNDCRS_spatio_parametric_2019'Access, "wkt_parse_COMPOUNDCRS_spatio_parametric_2019");

      Registration.Register_Routine (Test, wkt_parse_COMPOUNDCRS_spatio_temporal_2015'Access, "wkt_parse_COMPOUNDCRS_spatio_temporal_2015");

      Registration.Register_Routine (Test, wkt_parse_COMPOUNDCRS_spatio_temporal_2019'Access, "wkt_parse_COMPOUNDCRS_spatio_temporal_2019");

      Registration.Register_Routine (Test, wkt_parse_COMPD_CS'Access, "wkt_parse_COMPD_CS");

      Registration.Register_Routine (Test, wkt_parse_COORDINATEOPERATION'Access, "wkt_parse_COORDINATEOPERATION");

      Registration.Register_Routine (Test, wkt_parse_COORDINATEOPERATION_wkt2_2019'Access, "wkt_parse_COORDINATEOPERATION_wkt2_2019");

      Registration.Register_Routine (Test, wkt_parse_conversion_proj_based'Access, "wkt_parse_conversion_proj_based");

      Registration.Register_Routine (Test, wkt_parse_CONCATENATEDOPERATION'Access, "wkt_parse_CONCATENATEDOPERATION");

      Registration.Register_Routine (Test, wkt_parse_CONCATENATEDOPERATION_with_conversion_and_conversion'Access, "wkt_parse_CONCATENATEDOPERATION_with_conversion_and_conversion");

      Registration.Register_Routine (Test, wkt_parse_BOUNDCRS_transformation_from_names'Access, "wkt_parse_BOUNDCRS_transformation_from_names");

      Registration.Register_Routine (Test, wkt_parse_BOUNDCRS_transformation_from_codes'Access, "wkt_parse_BOUNDCRS_transformation_from_codes");

      Registration.Register_Routine (Test, wkt_parse_boundcrs_of_verticalcrs_to_geog3Dcrs'Access, "wkt_parse_boundcrs_of_verticalcrs_to_geog3Dcrs");

      Registration.Register_Routine (Test, wkt_parse_geogcs_TOWGS84_3terms'Access, "wkt_parse_geogcs_TOWGS84_3terms");

      Registration.Register_Routine (Test, wkt_parse_projcs_TOWGS84_7terms'Access, "wkt_parse_projcs_TOWGS84_7terms");

      Registration.Register_Routine (Test, wkt_parse_WKT1_VERT_DATUM_EXTENSION'Access, "wkt_parse_WKT1_VERT_DATUM_EXTENSION");

      Registration.Register_Routine (Test, wkt_parse_WKT1_DATUM_EXTENSION'Access, "wkt_parse_WKT1_DATUM_EXTENSION");

      Registration.Register_Routine (Test, wkt_parse_DerivedGeographicCRS_WKT2'Access, "wkt_parse_DerivedGeographicCRS_WKT2");

      Registration.Register_Routine (Test, wkt_parse_DerivedGeographicCRS_WKT2_2019'Access, "wkt_parse_DerivedGeographicCRS_WKT2_2019");

      Registration.Register_Routine (Test, wkt_parse_DerivedGeodeticCRS'Access, "wkt_parse_DerivedGeodeticCRS");

      Registration.Register_Routine (Test, wkt_parse_DerivedProjectedCRS'Access, "wkt_parse_DerivedProjectedCRS");

      Registration.Register_Routine (Test, wkt_parse_DerivedProjectedCRS_ordinal'Access, "wkt_parse_DerivedProjectedCRS_ordinal");

      Registration.Register_Routine (Test, wkt_parse_TemporalDatum'Access, "wkt_parse_TemporalDatum");

      Registration.Register_Routine (Test, wkt_parse_TemporalDatum_no_calendar'Access, "wkt_parse_TemporalDatum_no_calendar");

      Registration.Register_Routine (Test, wkt_parse_dateTimeTemporalCRS_WKT2'Access, "wkt_parse_dateTimeTemporalCRS_WKT2");

      Registration.Register_Routine (Test, wkt_parse_dateTimeTemporalCRS_WKT2_2019'Access, "wkt_parse_dateTimeTemporalCRS_WKT2_2019");

      Registration.Register_Routine (Test, wkt_parse_temporalCountCRSWithConvFactor_WKT2_2019'Access, "wkt_parse_temporalCountCRSWithConvFactor_WKT2_2019");

      Registration.Register_Routine (Test, wkt_parse_temporalCountCRSWithoutConvFactor_WKT2_2019'Access, "wkt_parse_temporalCountCRSWithoutConvFactor_WKT2_2019");

      Registration.Register_Routine (Test, wkt_parse_temporalMeasureCRSWithoutConvFactor_WKT2_2019'Access, "wkt_parse_temporalMeasureCRSWithoutConvFactor_WKT2_2019");

      Registration.Register_Routine (Test, wkt_parse_EDATUM'Access, "wkt_parse_EDATUM");

      Registration.Register_Routine (Test, wkt_parse_ENGINEERINGDATUM'Access, "wkt_parse_ENGINEERINGDATUM");

      Registration.Register_Routine (Test, wkt_parse_ENGCRS'Access, "wkt_parse_ENGCRS");

      Registration.Register_Routine (Test, wkt_parse_ENGINEERINGCRS'Access, "wkt_parse_ENGINEERINGCRS");

      Registration.Register_Routine (Test, wkt_parse_LOCAL_CS_short'Access, "wkt_parse_LOCAL_CS_short");

      Registration.Register_Routine (Test, wkt_parse_LOCAL_CS_long_one_axis'Access, "wkt_parse_LOCAL_CS_long_one_axis");

      Registration.Register_Routine (Test, wkt_parse_LOCAL_CS_long_two_axis'Access, "wkt_parse_LOCAL_CS_long_two_axis");

      Registration.Register_Routine (Test, wkt_parse_PDATUM'Access, "wkt_parse_PDATUM");

      Registration.Register_Routine (Test, wkt_parse_PARAMETRICDATUM'Access, "wkt_parse_PARAMETRICDATUM");

      Registration.Register_Routine (Test, wkt_parse_PARAMETRICCRS'Access, "wkt_parse_PARAMETRICCRS");

      Registration.Register_Routine (Test, wkt_parse_PARAMETRICCRS_PARAMETRICDATUM'Access, "wkt_parse_PARAMETRICCRS_PARAMETRICDATUM");

      Registration.Register_Routine (Test, wkt_parse_DerivedVerticalCRS'Access, "wkt_parse_DerivedVerticalCRS");

      Registration.Register_Routine (Test, wkt_parse_DerivedEngineeringCRS'Access, "wkt_parse_DerivedEngineeringCRS");

      Registration.Register_Routine (Test, wkt_parse_DerivedParametricCRS'Access, "wkt_parse_DerivedParametricCRS");

      Registration.Register_Routine (Test, wkt_parse_DerivedTemporalCRS'Access, "wkt_parse_DerivedTemporalCRS");

      Registration.Register_Routine (Test, wkt_parse_ensemble'Access, "wkt_parse_ensemble");

      Registration.Register_Routine (Test, wkt_parse_ensemble_vdatum'Access, "wkt_parse_ensemble_vdatum");

      Registration.Register_Routine (Test, wkt_parse_esri_geogcs_datum_spheroid_name_hardcoded_substitution'Access, "wkt_parse_esri_geogcs_datum_spheroid_name_hardcoded_substitution");

      Registration.Register_Routine (Test, wkt_parse_esri_geogcs_datum_spheroid_name_from_db_substitution'Access, "wkt_parse_esri_geogcs_datum_spheroid_name_from_db_substitution");

      Registration.Register_Routine (Test, wkt_parse_esri_datum_name_with_prime_meridian'Access, "wkt_parse_esri_datum_name_with_prime_meridian");

      Registration.Register_Routine (Test, wkt_parse_esri_projcs'Access, "wkt_parse_esri_projcs");

      Registration.Register_Routine (Test, wkt_parse_wkt1_esri_case_insensitive_names'Access, "wkt_parse_wkt1_esri_case_insensitive_names");

      Registration.Register_Routine (Test, wkt_parse_wkt1_esri_non_expected_param_name'Access, "wkt_parse_wkt1_esri_non_expected_param_name");

      Registration.Register_Routine (Test, wkt_parse_wkt1_esri_krovak_south_west'Access, "wkt_parse_wkt1_esri_krovak_south_west");

      Registration.Register_Routine (Test, wkt_parse_wkt1_esri_normalize_unit'Access, "wkt_parse_wkt1_esri_normalize_unit");

      Registration.Register_Routine (Test, wkt_parse_wkt1_esri_ups_north'Access, "wkt_parse_wkt1_esri_ups_north");

      Registration.Register_Routine (Test, wkt_parse_wkt1_esri_ups_south'Access, "wkt_parse_wkt1_esri_ups_south");

      Registration.Register_Routine (Test, wkt_parse_wkt1_esri_gauss_kruger'Access, "wkt_parse_wkt1_esri_gauss_kruger");

      Registration.Register_Routine (Test, wkt_parse_invalid'Access, "wkt_parse_invalid");

      Registration.Register_Routine (Test, wkt_parse_invalid_SPHEROID'Access, "wkt_parse_invalid_SPHEROID");

      Registration.Register_Routine (Test, wkt_parse_invalid_DATUM'Access, "wkt_parse_invalid_DATUM");

      Registration.Register_Routine (Test, wkt_parse_invalid_ENSEMBLE'Access, "wkt_parse_invalid_ENSEMBLE");

      Registration.Register_Routine (Test, wkt_parse_invalid_GEOGCS'Access, "wkt_parse_invalid_GEOGCS");

      Registration.Register_Routine (Test, wkt_parse_invalid_UNIT'Access, "wkt_parse_invalid_UNIT");

      Registration.Register_Routine (Test, wkt_parse_invalid_GEOCCS'Access, "wkt_parse_invalid_GEOCCS");

      Registration.Register_Routine (Test, wkt_parse_invalid_CS_of_GEODCRS'Access, "wkt_parse_invalid_CS_of_GEODCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_CS_of_GEOGRAPHICCRS'Access, "wkt_parse_invalid_CS_of_GEOGRAPHICCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_DYNAMIC'Access, "wkt_parse_invalid_DYNAMIC");

      Registration.Register_Routine (Test, wkt_parse_invalid_PROJCRS'Access, "wkt_parse_invalid_PROJCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_PROJCS'Access, "wkt_parse_invalid_PROJCS");

      Registration.Register_Routine (Test, wkt_parse_invalid_VERTCRS'Access, "wkt_parse_invalid_VERTCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_VERT_CS'Access, "wkt_parse_invalid_VERT_CS");

      Registration.Register_Routine (Test, wkt_parse_invalid_COORDINATEOPERATION'Access, "wkt_parse_invalid_COORDINATEOPERATION");

      Registration.Register_Routine (Test, wkt_parse_invalid_CONCATENATEDOPERATION'Access, "wkt_parse_invalid_CONCATENATEDOPERATION");

      Registration.Register_Routine (Test, wkt_parse_invalid_BOUNDCRS'Access, "wkt_parse_invalid_BOUNDCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_TOWGS84'Access, "wkt_parse_invalid_TOWGS84");

      Registration.Register_Routine (Test, wkt_parse_invalid_DerivedGeographicCRS'Access, "wkt_parse_invalid_DerivedGeographicCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_TemporalCRS'Access, "wkt_parse_invalid_TemporalCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_EngineeingCRS'Access, "wkt_parse_invalid_EngineeingCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_LOCAL_CS'Access, "wkt_parse_invalid_LOCAL_CS");

      Registration.Register_Routine (Test, wkt_parse_invalid_ParametricCRS'Access, "wkt_parse_invalid_ParametricCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_DERIVEDPROJCRS'Access, "wkt_parse_invalid_DERIVEDPROJCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_DerivedVerticalCRS'Access, "wkt_parse_invalid_DerivedVerticalCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_DerivedEngineeringCRS'Access, "wkt_parse_invalid_DerivedEngineeringCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_DerivedParametricCRS'Access, "wkt_parse_invalid_DerivedParametricCRS");

      Registration.Register_Routine (Test, wkt_parse_invalid_DerivedTemporalCRS'Access, "wkt_parse_invalid_DerivedTemporalCRS");

      Registration.Register_Routine (Test, io_projstringformatter'Access, "io_projstringformatter");

      Registration.Register_Routine (Test, io_projstringformatter_helmert_3_param_noop'Access, "io_projstringformatter_helmert_3_param_noop");

      Registration.Register_Routine (Test, io_projstringformatter_helmert_7_param_noop'Access, "io_projstringformatter_helmert_7_param_noop");

      Registration.Register_Routine (Test, io_projstringformatter_merge_consecutive_helmert_3_param'Access, "io_projstringformatter_merge_consecutive_helmert_3_param");

      Registration.Register_Routine (Test, io_projstringformatter_merge_consecutive_helmert_3_param_noop'Access, "io_projstringformatter_merge_consecutive_helmert_3_param_noop");

      Registration.Register_Routine (Test, io_projstringformatter_cart_grs80_wgs84'Access, "io_projstringformatter_cart_grs80_wgs84");

      Registration.Register_Routine (Test, io_projstringformatter_axisswap_unitconvert_axisswap'Access, "io_projstringformatter_axisswap_unitconvert_axisswap");

      Registration.Register_Routine (Test, io_projstringformatter_optim_hgridshift_vgridshift_hgridshift_inv'Access, "io_projstringformatter_optim_hgridshift_vgridshift_hgridshift_inv");

      Registration.Register_Routine (Test, io_projparse_longlat'Access, "io_projparse_longlat");

      Registration.Register_Routine (Test, io_projparse_longlat_datum_NAD83'Access, "io_projparse_longlat_datum_NAD83");

      Registration.Register_Routine (Test, io_projparse_longlat_datum_NAD27'Access, "io_projparse_longlat_datum_NAD27");

      Registration.Register_Routine (Test, io_projparse_longlat_datum_other'Access, "io_projparse_longlat_datum_other");

      Registration.Register_Routine (Test, io_projparse_longlat_ellps_WGS84'Access, "io_projparse_longlat_ellps_WGS84");

      Registration.Register_Routine (Test, io_projparse_longlat_ellps_GRS80'Access, "io_projparse_longlat_ellps_GRS80");

      Registration.Register_Routine (Test, io_projparse_longlat_a_b'Access, "io_projparse_longlat_a_b");

      Registration.Register_Routine (Test, io_projparse_longlat_a_rf_WGS84'Access, "io_projparse_longlat_a_rf_WGS84");

      Registration.Register_Routine (Test, io_projparse_longlat_a_rf'Access, "io_projparse_longlat_a_rf");

      Registration.Register_Routine (Test, io_projparse_longlat_a_f_zero'Access, "io_projparse_longlat_a_f_zero");

      Registration.Register_Routine (Test, io_projparse_longlat_a_f_non_zero'Access, "io_projparse_longlat_a_f_non_zero");

      Registration.Register_Routine (Test, io_projparse_longlat_a_e'Access, "io_projparse_longlat_a_e");

      Registration.Register_Routine (Test, io_projparse_longlat_a_es'Access, "io_projparse_longlat_a_es");

      Registration.Register_Routine (Test, io_projparse_longlat_R'Access, "io_projparse_longlat_R");

      Registration.Register_Routine (Test, io_projparse_longlat_a'Access, "io_projparse_longlat_a");

      Registration.Register_Routine (Test, io_projparse_longlat_a_override_ellps'Access, "io_projparse_longlat_a_override_ellps");

      Registration.Register_Routine (Test, io_projparse_longlat_pm_paris'Access, "io_projparse_longlat_pm_paris");

      Registration.Register_Routine (Test, io_projparse_longlat_pm_ferro'Access, "io_projparse_longlat_pm_ferro");

      Registration.Register_Routine (Test, io_projparse_longlat_pm_numeric'Access, "io_projparse_longlat_pm_numeric");

      Registration.Register_Routine (Test, io_projparse_longlat_pm_overriding_datum'Access, "io_projparse_longlat_pm_overriding_datum");

      Registration.Register_Routine (Test, io_projparse_longlat_complex'Access, "io_projparse_longlat_complex");

      Registration.Register_Routine (Test, io_projparse_longlat_towgs84_3_terms'Access, "io_projparse_longlat_towgs84_3_terms");

      Registration.Register_Routine (Test, io_projparse_longlat_towgs84_7_terms'Access, "io_projparse_longlat_towgs84_7_terms");

      Registration.Register_Routine (Test, io_projparse_longlat_nadgrids'Access, "io_projparse_longlat_nadgrids");

      Registration.Register_Routine (Test, io_projparse_longlat_nadgrids_towgs84_ignored'Access, "io_projparse_longlat_nadgrids_towgs84_ignored");

      Registration.Register_Routine (Test, io_projparse_longlat_geoidgrids'Access, "io_projparse_longlat_geoidgrids");

      Registration.Register_Routine (Test, io_projparse_longlat_geoidgrids_vunits'Access, "io_projparse_longlat_geoidgrids_vunits");

      Registration.Register_Routine (Test, io_projparse_longlat_vunits'Access, "io_projparse_longlat_vunits");

      Registration.Register_Routine (Test, io_projparse_vunits'Access, "io_projparse_vunits");

      Registration.Register_Routine (Test, io_projparse_vto_meter'Access, "io_projparse_vto_meter");

      Registration.Register_Routine (Test, io_projparse_longlat_axis_enu'Access, "io_projparse_longlat_axis_enu");

      Registration.Register_Routine (Test, io_projparse_longlat_axis_neu'Access, "io_projparse_longlat_axis_neu");

      Registration.Register_Routine (Test, io_projparse_longlat_axis_swu'Access, "io_projparse_longlat_axis_swu");

      Registration.Register_Routine (Test, io_projparse_longlat_unitconvert_deg'Access, "io_projparse_longlat_unitconvert_deg");

      Registration.Register_Routine (Test, io_projparse_longlat_unitconvert_grad'Access, "io_projparse_longlat_unitconvert_grad");

      Registration.Register_Routine (Test, io_projparse_longlat_unitconvert_rad'Access, "io_projparse_longlat_unitconvert_rad");

      Registration.Register_Routine (Test, io_projparse_longlat_axisswap'Access, "io_projparse_longlat_axisswap");

      Registration.Register_Routine (Test, io_projparse_tmerc'Access, "io_projparse_tmerc");

      Registration.Register_Routine (Test, io_projparse_tmerc_south_oriented'Access, "io_projparse_tmerc_south_oriented");

      Registration.Register_Routine (Test, io_projparse_lcc_as_lcc1sp'Access, "io_projparse_lcc_as_lcc1sp");

      Registration.Register_Routine (Test, io_projparse_lcc_as_lcc2sp'Access, "io_projparse_lcc_as_lcc2sp");

      Registration.Register_Routine (Test, io_projparse_lcc_as_lcc2sp_michigan'Access, "io_projparse_lcc_as_lcc2sp_michigan");

      Registration.Register_Routine (Test, io_projparse_aeqd_guam'Access, "io_projparse_aeqd_guam");

      Registration.Register_Routine (Test, io_projparse_cea_ellipsoidal'Access, "io_projparse_cea_ellipsoidal");

      Registration.Register_Routine (Test, io_projparse_cea_ellipsoidal_with_k_0'Access, "io_projparse_cea_ellipsoidal_with_k_0");

      Registration.Register_Routine (Test, io_projparse_geos_sweep_x'Access, "io_projparse_geos_sweep_x");

      Registration.Register_Routine (Test, io_projparse_geos_sweep_y'Access, "io_projparse_geos_sweep_y");

      Registration.Register_Routine (Test, io_projparse_omerc_nouoff'Access, "io_projparse_omerc_nouoff");

      Registration.Register_Routine (Test, io_projparse_omerc_tpno'Access, "io_projparse_omerc_tpno");

      Registration.Register_Routine (Test, io_projparse_omerc_variant_b'Access, "io_projparse_omerc_variant_b");

      Registration.Register_Routine (Test, io_projparse_somerc'Access, "io_projparse_somerc");

      Registration.Register_Routine (Test, io_projparse_krovak'Access, "io_projparse_krovak");

      Registration.Register_Routine (Test, io_projparse_krovak_axis_swu'Access, "io_projparse_krovak_axis_swu");

      Registration.Register_Routine (Test, io_projparse_etmerc'Access, "io_projparse_etmerc");

      Registration.Register_Routine (Test, io_projparse_tmerc_approx'Access, "io_projparse_tmerc_approx");

      Registration.Register_Routine (Test, io_projparse_merc_variant_B'Access, "io_projparse_merc_variant_B");

      Registration.Register_Routine (Test, io_projparse_merc_google_mercator'Access, "io_projparse_merc_google_mercator");

      Registration.Register_Routine (Test, io_projparse_merc_not_quite_google_mercator'Access, "io_projparse_merc_not_quite_google_mercator");

      Registration.Register_Routine (Test, io_projparse_merc_stere_polar_variant_B'Access, "io_projparse_merc_stere_polar_variant_B");

      Registration.Register_Routine (Test, io_projparse_merc_stere_polar_variant_A'Access, "io_projparse_merc_stere_polar_variant_A");

      Registration.Register_Routine (Test, io_projparse_merc_stere_polar_k_and_lat_ts'Access, "io_projparse_merc_stere_polar_k_and_lat_ts");

      Registration.Register_Routine (Test, io_projparse_merc_stere_polar_k_and_lat_ts_incompatible'Access, "io_projparse_merc_stere_polar_k_and_lat_ts_incompatible");

      Registration.Register_Routine (Test, io_projparse_merc_stere'Access, "io_projparse_merc_stere");

      Registration.Register_Routine (Test, io_projparse_utm'Access, "io_projparse_utm");

      Registration.Register_Routine (Test, io_projparse_utm_south'Access, "io_projparse_utm_south");

      Registration.Register_Routine (Test, io_projparse_laea_north_pole'Access, "io_projparse_laea_north_pole");

      Registration.Register_Routine (Test, io_projparse_laea_south_pole'Access, "io_projparse_laea_south_pole");

      Registration.Register_Routine (Test, io_projparse_laea_spherical'Access, "io_projparse_laea_spherical");

      Registration.Register_Routine (Test, io_projparse_eqc_spherical'Access, "io_projparse_eqc_spherical");

      Registration.Register_Routine (Test, io_projparse_non_earth_ellipsoid'Access, "io_projparse_non_earth_ellipsoid");

      Registration.Register_Routine (Test, io_projparse_axisswap_unitconvert_longlat_proj'Access, "io_projparse_axisswap_unitconvert_longlat_proj");

      Registration.Register_Routine (Test, io_projparse_axisswap_unitconvert_proj_axisswap'Access, "io_projparse_axisswap_unitconvert_proj_axisswap");

      Registration.Register_Routine (Test, io_projparse_axisswap_unitconvert_proj_unitconvert'Access, "io_projparse_axisswap_unitconvert_proj_unitconvert");

      Registration.Register_Routine (Test, io_projparse_axisswap_unitconvert_proj_unitconvert_numeric_axisswap'Access, "io_projparse_axisswap_unitconvert_proj_unitconvert_numeric_axisswap");

      Registration.Register_Routine (Test, io_projparse_projected_units'Access, "io_projparse_projected_units");

      Registration.Register_Routine (Test, io_projparse_projected_to_meter_known'Access, "io_projparse_projected_to_meter_known");

      Registration.Register_Routine (Test, io_projparse_projected_to_meter_unknown'Access, "io_projparse_projected_to_meter_unknown");

      Registration.Register_Routine (Test, io_projparse_projected_vunits'Access, "io_projparse_projected_vunits");

      Registration.Register_Routine (Test, io_projparse_projected_unknown'Access, "io_projparse_projected_unknown");

      Registration.Register_Routine (Test, io_projparse_geocent'Access, "io_projparse_geocent");

      Registration.Register_Routine (Test, io_projparse_geocent_towgs84'Access, "io_projparse_geocent_towgs84");

      Registration.Register_Routine (Test, io_projparse_cart_unit'Access, "io_projparse_cart_unit");

      Registration.Register_Routine (Test, io_projparse_cart_unit_numeric'Access, "io_projparse_cart_unit_numeric");

      Registration.Register_Routine (Test, io_projparse_longlat_wktext'Access, "io_projparse_longlat_wktext");

      Registration.Register_Routine (Test, io_projparse_geocent_wktext'Access, "io_projparse_geocent_wktext");

      Registration.Register_Routine (Test, io_projparse_projected_wktext'Access, "io_projparse_projected_wktext");

      Registration.Register_Routine (Test, io_projparse_ob_tran_longlat'Access, "io_projparse_ob_tran_longlat");

      Registration.Register_Routine (Test, io_projparse_longlat_title'Access, "io_projparse_longlat_title");

      Registration.Register_Routine (Test, io_projparse_projected_title'Access, "io_projparse_projected_title");

      Registration.Register_Routine (Test, io_projparse_init'Access, "io_projparse_init");

      Registration.Register_Routine (Test, io_projparse_errors'Access, "io_projparse_errors");

      Registration.Register_Routine (Test, io_projparse_longlat_errors'Access, "io_projparse_longlat_errors");

      Registration.Register_Routine (Test, io_projparse_projected_errors'Access, "io_projparse_projected_errors");

      Registration.Register_Routine (Test, io_createFromUserInput'Access, "io_createFromUserInput");

      Registration.Register_Routine (Test, io_createFromUserInput_hack_EPSG_102100'Access, "io_createFromUserInput_hack_EPSG_102100");

      Registration.Register_Routine (Test, io_guessDialect'Access, "io_guessDialect");

      Registration.Register_Routine (Test, wkt_export_precision'Access, "wkt_export_precision");

      Registration.Register_Routine (Test, wkt_export_invalid_linear_unit'Access, "wkt_export_invalid_linear_unit");

      Registration.Register_Routine (Test, wkt_export_invalid_angular_unit'Access, "wkt_export_invalid_angular_unit");

      Registration.Register_Routine (Test, json_import_ellipsoid_flattened_sphere'Access, "json_import_ellipsoid_flattened_sphere");

      Registration.Register_Routine (Test, json_import_ellipsoid_major_minor_custom_unit'Access, "json_import_ellipsoid_major_minor_custom_unit");

      Registration.Register_Routine (Test, json_import_ellipsoid_sphere'Access, "json_import_ellipsoid_sphere");

      Registration.Register_Routine (Test, json_import_ellipsoid_errors'Access, "json_import_ellipsoid_errors");

      Registration.Register_Routine (Test, json_import_prime_meridian'Access, "json_import_prime_meridian");

      Registration.Register_Routine (Test, json_import_prime_meridian_errors'Access, "json_import_prime_meridian_errors");

      Registration.Register_Routine (Test, json_import_geodetic_reference_frame_with_implicit_prime_meridian'Access, "json_import_geodetic_reference_frame_with_implicit_prime_meridian");

      Registration.Register_Routine (Test, json_import_geodetic_reference_frame_with_explicit_prime_meridian'Access, "json_import_geodetic_reference_frame_with_explicit_prime_meridian");

      Registration.Register_Routine (Test, json_import_geodetic_reference_frame_errors'Access, "json_import_geodetic_reference_frame_errors");

      Registration.Register_Routine (Test, json_import_dynamic_vertical_reference_frame'Access, "json_import_dynamic_vertical_reference_frame");

      Registration.Register_Routine (Test, json_import_several_usages'Access, "json_import_several_usages");

      Registration.Register_Routine (Test, json_import_geographic_crs'Access, "json_import_geographic_crs");

      Registration.Register_Routine (Test, json_import_geographic_crs_errors'Access, "json_import_geographic_crs_errors");

      Registration.Register_Routine (Test, json_import_geocentric_crs'Access, "json_import_geocentric_crs");

      Registration.Register_Routine (Test, json_import_projected_crs'Access, "json_import_projected_crs");

      Registration.Register_Routine (Test, json_import_compound_crs'Access, "json_import_compound_crs");

      Registration.Register_Routine (Test, json_import_bound_crs'Access, "json_import_bound_crs");

      Registration.Register_Routine (Test, json_import_transformation'Access, "json_import_transformation");

      Registration.Register_Routine (Test, json_import_concatenated_operation'Access, "json_import_concatenated_operation");

      Registration.Register_Routine (Test, json_import_geographic_crs_with_datum_ensemble'Access, "json_import_geographic_crs_with_datum_ensemble");

      Registration.Register_Routine (Test, json_import_datum_ensemble_without_ellipsoid'Access, "json_import_datum_ensemble_without_ellipsoid");

      Registration.Register_Routine (Test, json_import_vertical_crs'Access, "json_import_vertical_crs");

      Registration.Register_Routine (Test, json_import_vertical_crs_with_datum_ensemble'Access, "json_import_vertical_crs_with_datum_ensemble");

      Registration.Register_Routine (Test, json_import_vertical_crs_with_geoid_model'Access, "json_import_vertical_crs_with_geoid_model");

      Registration.Register_Routine (Test, json_import_vertical_crs_with_geoid_model_and_interpolation_crs'Access, "json_import_vertical_crs_with_geoid_model_and_interpolation_crs");

      Registration.Register_Routine (Test, json_import_parametric_crs'Access, "json_import_parametric_crs");

      Registration.Register_Routine (Test, json_import_engineering_crs'Access, "json_import_engineering_crs");

      Registration.Register_Routine (Test, json_import_temporal_crs'Access, "json_import_temporal_crs");

      Registration.Register_Routine (Test, json_import_derived_geodetic_crs'Access, "json_import_derived_geodetic_crs");

      Registration.Register_Routine (Test, json_import_derived_geographic_crs'Access, "json_import_derived_geographic_crs");

      Registration.Register_Routine (Test, json_import_derived_projected_crs'Access, "json_import_derived_projected_crs");

      Registration.Register_Routine (Test, json_import_derived_vertical_crs'Access, "json_import_derived_vertical_crs");

      Registration.Register_Routine (Test, json_import_derived_engineering_crs'Access, "json_import_derived_engineering_crs");

      Registration.Register_Routine (Test, json_import_derived_parametric_crs'Access, "json_import_derived_parametric_crs");

      Registration.Register_Routine (Test, json_import_derived_temporal_crs'Access, "json_import_derived_temporal_crs");

      Registration.Register_Routine (Test, json_import_multiple_ids'Access, "json_import_multiple_ids");

      Registration.Register_Routine (Test, json_export_coordinate_system_id'Access, "json_export_coordinate_system_id");

   end Register_Tests;

end PROJ.Tests.test_io;