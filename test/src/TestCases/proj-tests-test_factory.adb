with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body PROJ.Tests.test_factory is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure factory_databasecontext_create (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  DatabaseContext::create();
--  #ifndef _WIN32
--  // For some reason, no exception is thrown on AppVeyor Windows
--  EXPECT_THROW(DatabaseContext::create("/i/do_not/exist"), FactoryException);
--  #endif      
   end factory_databasecontext_create;

   procedure factory_AuthorityFactory_createObject (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createObject("-1"), NoSuchAuthorityCodeException);
--  EXPECT_THROW(factory->createObject("4326"),
--  FactoryException); // area and crs      
   end factory_AuthorityFactory_createObject;

   procedure factory_AuthorityFactory_createUnitOfMeasure_linear (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createUnitOfMeasure("-1"),
--  NoSuchAuthorityCodeException);
--  auto uom = factory->createUnitOfMeasure("9001");
--  EXPECT_EQ(uom->name(), "metre");
--  EXPECT_EQ(uom->type(), UnitOfMeasure::Type::LINEAR);
--  EXPECT_EQ(uom->conversionToSI(), 1.0);
--  EXPECT_EQ(uom->codeSpace(), "EPSG");
--  EXPECT_EQ(uom->code(), "9001");      
   end factory_AuthorityFactory_createUnitOfMeasure_linear;

   procedure factory_AuthorityFactory_createUnitOfMeasure_angular (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto uom = factory->createUnitOfMeasure("9102");
--  EXPECT_EQ(uom->name(), "degree");
--  EXPECT_EQ(uom->type(), UnitOfMeasure::Type::ANGULAR);
--  EXPECT_EQ(uom->conversionToSI(), UnitOfMeasure::DEGREE.conversionToSI());
--  EXPECT_EQ(uom->codeSpace(), "EPSG");
--  EXPECT_EQ(uom->code(), "9102");      
   end factory_AuthorityFactory_createUnitOfMeasure_angular;

   procedure factory_AuthorityFactory_createUnitOfMeasure_angular_9107 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto uom = factory->createUnitOfMeasure("9107");
--  EXPECT_EQ(uom->name(), "degree minute second");
--  EXPECT_EQ(uom->type(), UnitOfMeasure::Type::ANGULAR);
--  EXPECT_EQ(uom->conversionToSI(), UnitOfMeasure::DEGREE.conversionToSI());
--  EXPECT_EQ(uom->codeSpace(), "EPSG");
--  EXPECT_EQ(uom->code(), "9107");      
   end factory_AuthorityFactory_createUnitOfMeasure_angular_9107;

   procedure factory_AuthorityFactory_createUnitOfMeasure_scale (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto uom = factory->createUnitOfMeasure("1028");
--  EXPECT_EQ(uom->name(), "parts per billion");
--  EXPECT_EQ(uom->type(), UnitOfMeasure::Type::SCALE);
--  EXPECT_EQ(uom->conversionToSI(), 1e-9);
--  EXPECT_EQ(uom->codeSpace(), "EPSG");
--  EXPECT_EQ(uom->code(), "1028");      
   end factory_AuthorityFactory_createUnitOfMeasure_scale;

   procedure factory_AuthorityFactory_createUnitOfMeasure_time (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto uom = factory->createUnitOfMeasure("1029");
--  EXPECT_EQ(uom->name(), "year");
--  EXPECT_EQ(uom->type(), UnitOfMeasure::Type::TIME);
--  EXPECT_EQ(uom->conversionToSI(), 31556925.445);
--  EXPECT_EQ(uom->codeSpace(), "EPSG");
--  EXPECT_EQ(uom->code(), "1029");      
   end factory_AuthorityFactory_createUnitOfMeasure_time;

   procedure factory_AuthorityFactory_createPrimeMeridian (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createPrimeMeridian("-1"),
--  NoSuchAuthorityCodeException);
--  EXPECT_TRUE(nn_dynamic_pointer_cast<PrimeMeridian>(
--  AuthorityFactory::create(DatabaseContext::create(), "ESRI")
--  ->createObject("108900")) != nullptr);
--  auto pm = factory->createPrimeMeridian("8903");
--  ASSERT_EQ(pm->identifiers().size(), 1U);
--  EXPECT_EQ(pm->identifiers()[0]->code(), "8903");
--  EXPECT_EQ(*(pm->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(pm->name()->description()), "Paris");
--  EXPECT_EQ(pm->longitude(), Angle(2.5969213, UnitOfMeasure::GRAD));      
   end factory_AuthorityFactory_createPrimeMeridian;

   procedure factory_AuthorityFactory_identifyBodyFromSemiMajorAxis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_EQ(factory->identifyBodyFromSemiMajorAxis(6378137, 1e-5), "Earth");
--  EXPECT_THROW(factory->identifyBodyFromSemiMajorAxis(1, 1e-5),
--  FactoryException);      
   end factory_AuthorityFactory_identifyBodyFromSemiMajorAxis;

   procedure factory_AuthorityFactory_createEllipsoid (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createEllipsoid("-1"), NoSuchAuthorityCodeException);
--  EXPECT_TRUE(nn_dynamic_pointer_cast<Ellipsoid>(
--  factory->createObject("7030")) != nullptr);
--  auto ellipsoid = factory->createEllipsoid("7030");
--  ASSERT_EQ(ellipsoid->identifiers().size(), 1U);
--  EXPECT_EQ(ellipsoid->identifiers()[0]->code(), "7030");
--  EXPECT_EQ(*(ellipsoid->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(ellipsoid->name()->description()), "WGS 84");
--  EXPECT_TRUE(ellipsoid->inverseFlattening().has_value());
--  EXPECT_EQ(ellipsoid->semiMajorAxis(), Length(6378137));
--  EXPECT_EQ(*ellipsoid->inverseFlattening(), Scale(298.257223563));
--  EXPECT_EQ(ellipsoid->celestialBody(), "Earth");      
   end factory_AuthorityFactory_createEllipsoid;

   procedure factory_AuthorityFactory_createEllipsoid_sphere (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ellipsoid = factory->createEllipsoid("7035");
--  EXPECT_TRUE(ellipsoid->isSphere());
--  EXPECT_EQ(ellipsoid->semiMajorAxis(), Length(6371000));      
   end factory_AuthorityFactory_createEllipsoid_sphere;

   procedure factory_AuthorityFactory_createEllipsoid_with_semi_minor_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto ellipsoid = factory->createEllipsoid("7011");
--  EXPECT_TRUE(ellipsoid->semiMinorAxis().has_value());
--  EXPECT_EQ(ellipsoid->semiMajorAxis(), Length(6378249.2));
--  EXPECT_EQ(*ellipsoid->semiMinorAxis(), Length(6356515.0));      
   end factory_AuthorityFactory_createEllipsoid_with_semi_minor_axis;

   procedure factory_AuthorityFactory_createExtent (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createExtent("-1"), NoSuchAuthorityCodeException);
--  auto extent = factory->createExtent("1262");
--  EXPECT_EQ(*(extent->description()), "World");
--  const auto &geogElts = extent->geographicElements();
--  ASSERT_EQ(geogElts.size(), 1U);
--  auto bbox = nn_dynamic_pointer_cast<GeographicBoundingBox>(geogElts[0]);
--  ASSERT_TRUE(bbox != nullptr);
--  EXPECT_EQ(bbox->westBoundLongitude(), -180);
--  EXPECT_EQ(bbox->eastBoundLongitude(), 180);
--  EXPECT_EQ(bbox->northBoundLatitude(), 90);
--  EXPECT_EQ(bbox->southBoundLatitude(), -90);      
   end factory_AuthorityFactory_createExtent;

   procedure factory_AuthorityFactory_createExtent_no_bbox (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto extent = factory->createExtent("1361"); // Sudan - south. Deprecated
--  EXPECT_EQ(*(extent->description()), "Sudan - south");
--  const auto &geogElts = extent->geographicElements();
--  EXPECT_TRUE(geogElts.empty());      
   end factory_AuthorityFactory_createExtent_no_bbox;

   procedure factory_AuthorityFactory_createGeodeticDatum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createGeodeticDatum("-1"),
--  NoSuchAuthorityCodeException);
--  auto grf = factory->createGeodeticDatum("6326");
--  ASSERT_EQ(grf->identifiers().size(), 1U);
--  EXPECT_EQ(grf->identifiers()[0]->code(), "6326");
--  EXPECT_EQ(*(grf->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(grf->name()->description()), "World Geodetic System 1984");
--  EXPECT_TRUE(grf->ellipsoid()->isEquivalentTo(
--  factory->createEllipsoid("7030").get()));
--  EXPECT_TRUE(grf->primeMeridian()->isEquivalentTo(
--  factory->createPrimeMeridian("8901").get()));
--  ASSERT_EQ(grf->domains().size(), 1U);
--  auto domain = grf->domains()[0];
--  auto extent = domain->domainOfValidity();
--  ASSERT_TRUE(extent != nullptr);
--  EXPECT_TRUE(extent->isEquivalentTo(factory->createExtent("1262").get()));
--  EXPECT_FALSE(grf->publicationDate().has_value());      
   end factory_AuthorityFactory_createGeodeticDatum;

   procedure factory_AuthorityFactory_createGeodeticDatum_with_publication_date (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  //'World Geodetic System 1984 (G1762)
--  auto grf = factory->createGeodeticDatum("1156");
--  EXPECT_TRUE(grf->publicationDate().has_value());
--  EXPECT_EQ(grf->publicationDate()->toString(), "2005-01-01");      
   end factory_AuthorityFactory_createGeodeticDatum_with_publication_date;

   procedure factory_AuthorityFactory_createVerticalDatum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createVerticalDatum("-1"),
--  NoSuchAuthorityCodeException);
--  auto vrf = factory->createVerticalDatum("1027");
--  ASSERT_EQ(vrf->identifiers().size(), 1U);
--  EXPECT_EQ(vrf->identifiers()[0]->code(), "1027");
--  EXPECT_EQ(*(vrf->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(vrf->name()->description()), "EGM2008 geoid");
--  auto domain = vrf->domains()[0];
--  auto extent = domain->domainOfValidity();
--  ASSERT_TRUE(extent != nullptr);
--  EXPECT_TRUE(extent->isEquivalentTo(factory->createExtent("1262").get()));      
   end factory_AuthorityFactory_createVerticalDatum;

   procedure factory_AuthorityFactory_createDatum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createDatum("-1"), NoSuchAuthorityCodeException);
--  EXPECT_TRUE(factory->createDatum("6326")->isEquivalentTo(
--  factory->createGeodeticDatum("6326").get()));
--  EXPECT_TRUE(factory->createDatum("1027")->isEquivalentTo(
--  factory->createVerticalDatum("1027").get()));      
   end factory_AuthorityFactory_createDatum;

   procedure factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_2_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createCoordinateSystem("-1"),
--  NoSuchAuthorityCodeException);
--  auto cs = factory->createCoordinateSystem("6422");
--  auto ellipsoidal_cs = nn_dynamic_pointer_cast<EllipsoidalCS>(cs);
--  ASSERT_TRUE(ellipsoidal_cs != nullptr);
--  
--  ASSERT_EQ(ellipsoidal_cs->identifiers().size(), 1U);
--  EXPECT_EQ(ellipsoidal_cs->identifiers()[0]->code(), "6422");
--  EXPECT_EQ(*(ellipsoidal_cs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &axisList = ellipsoidal_cs->axisList();
--  EXPECT_EQ(axisList.size(), 2U);
--  
--  EXPECT_EQ(*(axisList[0]->name()->description()), "Geodetic latitude");
--  EXPECT_EQ(axisList[0]->abbreviation(), "Lat");
--  EXPECT_EQ(axisList[0]->direction(), AxisDirection::NORTH);
--  EXPECT_EQ(axisList[0]->unit(), UnitOfMeasure::DEGREE);
--  
--  EXPECT_EQ(*(axisList[1]->name()->description()), "Geodetic longitude");
--  EXPECT_EQ(axisList[1]->abbreviation(), "Lon");
--  EXPECT_EQ(axisList[1]->direction(), AxisDirection::EAST);
--  EXPECT_EQ(axisList[1]->unit(), UnitOfMeasure::DEGREE);      
   end factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_2_axis;

   procedure factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_3_axis (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  
--  auto cs = factory->createCoordinateSystem("6423");
--  auto ellipsoidal_cs = nn_dynamic_pointer_cast<EllipsoidalCS>(cs);
--  ASSERT_TRUE(ellipsoidal_cs != nullptr);
--  
--  ASSERT_EQ(ellipsoidal_cs->identifiers().size(), 1U);
--  EXPECT_EQ(ellipsoidal_cs->identifiers()[0]->code(), "6423");
--  EXPECT_EQ(*(ellipsoidal_cs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &axisList = ellipsoidal_cs->axisList();
--  EXPECT_EQ(axisList.size(), 3U);
--  
--  EXPECT_EQ(*(axisList[0]->name()->description()), "Geodetic latitude");
--  EXPECT_EQ(axisList[0]->abbreviation(), "Lat");
--  EXPECT_EQ(axisList[0]->direction(), AxisDirection::NORTH);
--  EXPECT_EQ(axisList[0]->unit(), UnitOfMeasure::DEGREE);
--  
--  EXPECT_EQ(*(axisList[1]->name()->description()), "Geodetic longitude");
--  EXPECT_EQ(axisList[1]->abbreviation(), "Lon");
--  EXPECT_EQ(axisList[1]->direction(), AxisDirection::EAST);
--  EXPECT_EQ(axisList[1]->unit(), UnitOfMeasure::DEGREE);
--  
--  EXPECT_EQ(*(axisList[2]->name()->description()), "Ellipsoidal height");
--  EXPECT_EQ(axisList[2]->abbreviation(), "h");
--  EXPECT_EQ(axisList[2]->direction(), AxisDirection::UP);
--  EXPECT_EQ(axisList[2]->unit(), UnitOfMeasure::METRE);      
   end factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_3_axis;

   procedure factory_AuthorityFactory_createCoordinateSystem_geocentric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  
--  auto cs = factory->createCoordinateSystem("6500");
--  auto cartesian_cs = nn_dynamic_pointer_cast<CartesianCS>(cs);
--  ASSERT_TRUE(cartesian_cs != nullptr);
--  
--  ASSERT_EQ(cartesian_cs->identifiers().size(), 1U);
--  EXPECT_EQ(cartesian_cs->identifiers()[0]->code(), "6500");
--  EXPECT_EQ(*(cartesian_cs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &axisList = cartesian_cs->axisList();
--  EXPECT_EQ(axisList.size(), 3U);
--  
--  EXPECT_EQ(*(axisList[0]->name()->description()), "Geocentric X");
--  EXPECT_EQ(axisList[0]->abbreviation(), "X");
--  EXPECT_EQ(axisList[0]->direction(), AxisDirection::GEOCENTRIC_X);
--  EXPECT_EQ(axisList[0]->unit(), UnitOfMeasure::METRE);
--  
--  EXPECT_EQ(*(axisList[1]->name()->description()), "Geocentric Y");
--  EXPECT_EQ(axisList[1]->abbreviation(), "Y");
--  EXPECT_EQ(axisList[1]->direction(), AxisDirection::GEOCENTRIC_Y);
--  EXPECT_EQ(axisList[1]->unit(), UnitOfMeasure::METRE);
--  
--  EXPECT_EQ(*(axisList[2]->name()->description()), "Geocentric Z");
--  EXPECT_EQ(axisList[2]->abbreviation(), "Z");
--  EXPECT_EQ(axisList[2]->direction(), AxisDirection::GEOCENTRIC_Z);
--  EXPECT_EQ(axisList[2]->unit(), UnitOfMeasure::METRE);      
   end factory_AuthorityFactory_createCoordinateSystem_geocentric;

   procedure factory_AuthorityFactory_createCoordinateSystem_vertical (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createCoordinateSystem("-1"),
--  NoSuchAuthorityCodeException);
--  
--  auto cs = factory->createCoordinateSystem("6499");
--  auto vertical_cs = nn_dynamic_pointer_cast<VerticalCS>(cs);
--  ASSERT_TRUE(vertical_cs != nullptr);
--  
--  ASSERT_EQ(vertical_cs->identifiers().size(), 1U);
--  EXPECT_EQ(vertical_cs->identifiers()[0]->code(), "6499");
--  EXPECT_EQ(*(vertical_cs->identifiers()[0]->codeSpace()), "EPSG");
--  
--  const auto &axisList = vertical_cs->axisList();
--  EXPECT_EQ(axisList.size(), 1U);
--  
--  EXPECT_EQ(*(axisList[0]->name()->description()), "Gravity-related height");
--  EXPECT_EQ(axisList[0]->abbreviation(), "H");
--  EXPECT_EQ(axisList[0]->direction(), AxisDirection::UP);
--  EXPECT_EQ(axisList[0]->unit(), UnitOfMeasure::METRE);      
   end factory_AuthorityFactory_createCoordinateSystem_vertical;

   procedure factory_AuthorityFactory_createGeodeticCRS_geographic2D (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createGeodeticCRS("-1"),
--  NoSuchAuthorityCodeException);
--  auto crs = factory->createGeodeticCRS("4326");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);
--  ASSERT_TRUE(gcrs != nullptr);
--  ASSERT_EQ(gcrs->identifiers().size(), 1U);
--  EXPECT_EQ(gcrs->identifiers()[0]->code(), "4326");
--  EXPECT_EQ(*(gcrs->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(gcrs->name()->description()), "WGS 84");
--  EXPECT_TRUE(
--  gcrs->datum()->isEquivalentTo(factory->createDatum("6326").get()));
--  EXPECT_TRUE(gcrs->coordinateSystem()->isEquivalentTo(
--  factory->createCoordinateSystem("6422").get()));
--  auto domain = crs->domains()[0];
--  auto extent = domain->domainOfValidity();
--  ASSERT_TRUE(extent != nullptr);
--  EXPECT_TRUE(extent->isEquivalentTo(factory->createExtent("1262").get()));
--  
--  EXPECT_EQ(crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=longlat +datum=WGS84 +no_defs +type=crs");      
   end factory_AuthorityFactory_createGeodeticCRS_geographic2D;

   procedure factory_AuthorityFactory_createGeodeticCRS_geographic2D_area_no_bbox (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto crs = factory->createGeodeticCRS("4296"); // Sudan - deprecated
--  auto domain = crs->domains()[0];
--  auto extent = domain->domainOfValidity();
--  ASSERT_TRUE(extent != nullptr);
--  EXPECT_TRUE(extent->isEquivalentTo(factory->createExtent("1361").get()));      
   end factory_AuthorityFactory_createGeodeticCRS_geographic2D_area_no_bbox;

   procedure factory_AuthorityFactory_createGeodeticCRS_geographic3D (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto crs = factory->createGeodeticCRS("4979");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);
--  ASSERT_TRUE(gcrs != nullptr);
--  ASSERT_EQ(gcrs->identifiers().size(), 1U);
--  EXPECT_EQ(gcrs->identifiers()[0]->code(), "4979");
--  EXPECT_EQ(*(gcrs->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(gcrs->name()->description()), "WGS 84");
--  EXPECT_TRUE(
--  gcrs->datum()->isEquivalentTo(factory->createDatum("6326").get()));
--  EXPECT_TRUE(gcrs->coordinateSystem()->isEquivalentTo(
--  factory->createCoordinateSystem("6423").get()));      
   end factory_AuthorityFactory_createGeodeticCRS_geographic3D;

   procedure factory_AuthorityFactory_createGeodeticCRS_geocentric (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto crs = factory->createGeodeticCRS("4978");
--  ASSERT_TRUE(nn_dynamic_pointer_cast<GeographicCRS>(crs) == nullptr);
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "4978");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(crs->name()->description()), "WGS 84");
--  EXPECT_TRUE(
--  crs->datum()->isEquivalentTo(factory->createDatum("6326").get()));
--  EXPECT_TRUE(crs->coordinateSystem()->isEquivalentTo(
--  factory->createCoordinateSystem("6500").get()));      
   end factory_AuthorityFactory_createGeodeticCRS_geocentric;

   procedure factory_AuthorityFactory_createVerticalCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createVerticalCRS("-1"),
--  NoSuchAuthorityCodeException);
--  
--  auto crs = factory->createVerticalCRS("3855");
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "3855");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(crs->name()->description()), "EGM2008 height");
--  EXPECT_TRUE(
--  crs->datum()->isEquivalentTo(factory->createDatum("1027").get()));
--  EXPECT_TRUE(crs->coordinateSystem()->isEquivalentTo(
--  factory->createCoordinateSystem("6499").get()));
--  
--  auto domain = crs->domains()[0];
--  auto extent = domain->domainOfValidity();
--  ASSERT_TRUE(extent != nullptr);
--  EXPECT_TRUE(extent->isEquivalentTo(factory->createExtent("1262").get()));      
   end factory_AuthorityFactory_createVerticalCRS;

   procedure factory_AuthorityFactory_createConversion (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createConversion("-1"), NoSuchAuthorityCodeException);
--  
--  auto conv = factory->createConversion("16031");
--  ASSERT_EQ(conv->identifiers().size(), 1U);
--  EXPECT_EQ(conv->identifiers()[0]->code(), "16031");
--  EXPECT_EQ(*(conv->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(conv->name()->description()), "UTM zone 31N");
--  
--  auto method = conv->method();
--  ASSERT_EQ(method->identifiers().size(), 1U);
--  EXPECT_EQ(method->identifiers()[0]->code(), "9807");
--  EXPECT_EQ(*(method->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(method->name()->description()), "Transverse Mercator");
--  
--  const auto &values = conv->parameterValues();
--  ASSERT_EQ(values.size(), 5U);
--  {
--  const auto &opParamvalue =
--  nn_dynamic_pointer_cast<OperationParameterValue>(values[0]);
--  ASSERT_TRUE(opParamvalue);
--  const auto &paramName =
--  *(opParamvalue->parameter()->name()->description());
--  const auto &parameterValue = opParamvalue->parameterValue();
--  EXPECT_TRUE(opParamvalue->parameter()->getEPSGCode() == 8801);
--  EXPECT_EQ(paramName, "Latitude of natural origin");
--  EXPECT_EQ(parameterValue->type(), ParameterValue::Type::MEASURE);
--  auto measure = parameterValue->value();
--  EXPECT_EQ(measure.unit(), UnitOfMeasure::DEGREE);
--  EXPECT_EQ(measure.value(), 0.0);
--  }
--  {
--  const auto &opParamvalue =
--  nn_dynamic_pointer_cast<OperationParameterValue>(values[1]);
--  ASSERT_TRUE(opParamvalue);
--  const auto &paramName =
--  *(opParamvalue->parameter()->name()->description());
--  const auto &parameterValue = opParamvalue->parameterValue();
--  EXPECT_TRUE(opParamvalue->parameter()->getEPSGCode() == 8802);
--  EXPECT_EQ(paramName, "Longitude of natural origin");
--  EXPECT_EQ(parameterValue->type(), ParameterValue::Type::MEASURE);
--  auto measure = parameterValue->value();
--  EXPECT_EQ(measure.unit(), UnitOfMeasure::DEGREE);
--  EXPECT_EQ(measure.value(), 3.0);
--  }      
   end factory_AuthorityFactory_createConversion;

   procedure factory_AuthorityFactory_createConversion_from_other_transformation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("7984", false);
--  auto conversion = nn_dynamic_pointer_cast<Conversion>(op);
--  ASSERT_TRUE(conversion != nullptr);      
   end factory_AuthorityFactory_createConversion_from_other_transformation;

   procedure factory_AuthorityFactory_createProjectedCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createProjectedCRS("-1"),
--  NoSuchAuthorityCodeException);
--  
--  auto crs = factory->createProjectedCRS("32631");
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "32631");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(crs->name()->description()), "WGS 84 / UTM zone 31N");
--  EXPECT_TRUE(crs->baseCRS()->isEquivalentTo(
--  factory->createGeodeticCRS("4326").get()));
--  EXPECT_TRUE(crs->coordinateSystem()->isEquivalentTo(
--  factory->createCoordinateSystem("4400").get()));
--  EXPECT_TRUE(crs->derivingConversion()->isEquivalentTo(
--  factory->createConversion("16031").get()));
--  
--  auto domain = crs->domains()[0];
--  auto extent = domain->domainOfValidity();
--  ASSERT_TRUE(extent != nullptr);
--  EXPECT_TRUE(extent->isEquivalentTo(factory->createExtent("2060").get()));      
   end factory_AuthorityFactory_createProjectedCRS;

   procedure factory_AuthorityFactory_createProjectedCRS_south_pole (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createProjectedCRS("-1"),
--  NoSuchAuthorityCodeException);
--  
--  auto crs = factory->createProjectedCRS("32761");
--  auto csList = crs->coordinateSystem()->axisList();
--  ASSERT_EQ(csList.size(), 2U);
--  EXPECT_TRUE(csList[0]->meridian() != nullptr);
--  EXPECT_EQ(csList[0]->direction(), AxisDirection::NORTH);
--  EXPECT_EQ(
--  csList[0]->meridian()->longitude().convertToUnit(UnitOfMeasure::DEGREE),
--  0);
--  EXPECT_EQ(csList[1]->direction(), AxisDirection::NORTH);
--  EXPECT_EQ(
--  csList[1]->meridian()->longitude().convertToUnit(UnitOfMeasure::DEGREE),
--  90);      
   end factory_AuthorityFactory_createProjectedCRS_south_pole;

   procedure factory_AuthorityFactory_createProjectedCRS_north_pole (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  
--  auto crs = factory->createProjectedCRS("32661");
--  auto csList = crs->coordinateSystem()->axisList();
--  ASSERT_EQ(csList.size(), 2U);
--  EXPECT_TRUE(csList[0]->meridian() != nullptr);
--  EXPECT_EQ(csList[0]->direction(), AxisDirection::SOUTH);
--  EXPECT_EQ(
--  csList[0]->meridian()->longitude().convertToUnit(UnitOfMeasure::DEGREE),
--  180);
--  EXPECT_EQ(csList[1]->direction(), AxisDirection::SOUTH);
--  EXPECT_EQ(
--  csList[1]->meridian()->longitude().convertToUnit(UnitOfMeasure::DEGREE),
--  90);      
   end factory_AuthorityFactory_createProjectedCRS_north_pole;

   procedure factory_AuthorityFactory_createCompoundCRS (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createCompoundCRS("-1"),
--  NoSuchAuthorityCodeException);
--  
--  auto crs = factory->createCompoundCRS("6871");
--  ASSERT_EQ(crs->identifiers().size(), 1U);
--  EXPECT_EQ(crs->identifiers()[0]->code(), "6871");
--  EXPECT_EQ(*(crs->identifiers()[0]->codeSpace()), "EPSG");
--  EXPECT_EQ(*(crs->name()->description()),
--  "WGS 84 / Pseudo-Mercator +  EGM2008 geoid height");
--  
--  auto components = crs->componentReferenceSystems();
--  ASSERT_EQ(components.size(), 2U);
--  EXPECT_TRUE(components[0]->isEquivalentTo(
--  factory->createProjectedCRS("3857").get()));
--  EXPECT_TRUE(components[1]->isEquivalentTo(
--  factory->createVerticalCRS("3855").get()));
--  
--  auto domain = crs->domains()[0];
--  auto extent = domain->domainOfValidity();
--  ASSERT_TRUE(extent != nullptr);
--  EXPECT_TRUE(extent->isEquivalentTo(factory->createExtent("1262").get()));      
   end factory_AuthorityFactory_createCompoundCRS;

   procedure factory_AuthorityFactory_createCoordinateReferenceSystem (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createCoordinateReferenceSystem("-1"),
--  NoSuchAuthorityCodeException);
--  EXPECT_TRUE(nn_dynamic_pointer_cast<GeographicCRS>(
--  factory->createCoordinateReferenceSystem("4326")));
--  EXPECT_TRUE(nn_dynamic_pointer_cast<GeographicCRS>(
--  factory->createCoordinateReferenceSystem("4979")));
--  EXPECT_TRUE(nn_dynamic_pointer_cast<GeodeticCRS>(
--  factory->createCoordinateReferenceSystem("4978")));
--  EXPECT_TRUE(nn_dynamic_pointer_cast<ProjectedCRS>(
--  factory->createCoordinateReferenceSystem("32631")));
--  EXPECT_TRUE(nn_dynamic_pointer_cast<VerticalCRS>(
--  factory->createCoordinateReferenceSystem("3855")));
--  EXPECT_TRUE(nn_dynamic_pointer_cast<CompoundCRS>(
--  factory->createCoordinateReferenceSystem("6871")));      
   end factory_AuthorityFactory_createCoordinateReferenceSystem;

   procedure factory_AuthorityFactory_createCoordinateOperation_helmert_3 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->createCoordinateOperation("-1", false),
--  NoSuchAuthorityCodeException);
--  auto op = factory->createCoordinateOperation("1113", false);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +inv "
--  "+proj=longlat +a=6378249.145 +rf=293.4663077 +step +proj=push "
--  "+v_3 +step +proj=cart +a=6378249.145 +rf=293.4663077 +step "
--  "+proj=helmert +x=-143 +y=-90 +z=-294 +step +inv +proj=cart "
--  "+ellps=WGS84 +step +proj=pop +v_3 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end factory_AuthorityFactory_createCoordinateOperation_helmert_3;

   procedure factory_AuthorityFactory_createCoordinateOperation_helmert_7_CF (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("7676", false);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=pipeline +step +proj=axisswap +order=2,1 +step "
--  "+proj=unitconvert +xy_in=deg +xy_out=rad +step +proj=push +v_3 "
--  "+step +proj=cart +ellps=bessel +step +proj=helmert +x=577.88891 "
--  "+y=165.22205 +z=391.18289 +rx=-4.9145 +ry=0.94729 +rz=13.05098 "
--  "+s=7.78664 +convention=coordinate_frame +step +inv +proj=cart "
--  "+ellps=WGS84 +step +proj=pop +v_3 +step +proj=unitconvert "
--  "+xy_in=rad +xy_out=deg +step +proj=axisswap +order=2,1");      
   end factory_AuthorityFactory_createCoordinateOperation_helmert_7_CF;

   procedure factory_AuthorityFactory_createCoordinateOperation_helmert_7_PV (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("1074", false);
--  auto wkt = op->exportToPROJString(PROJStringFormatter::create().get());
--  EXPECT_TRUE(wkt.find("+proj=helmert +x=-275.7224 +y=94.7824 +z=340.8944 "
--  "+rx=-8.001 +ry=-4.42 +rz=-11.821 +s=1 "
--  "+convention=position_vector") != std::string::npos)
--  << wkt;      
   end factory_AuthorityFactory_createCoordinateOperation_helmert_7_PV;

   procedure factory_AuthorityFactory_createCoordinateOperation_helmert_8_CF (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("7702", false);
--  auto expected = "    PARAMETER[\"Transformation reference epoch\",2002,\n"
--  "        TIMEUNIT[\"year\",31556925.445],\n"
--  "        ID[\"EPSG\",1049]],\n";
--  
--  auto wkt = op->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get());
--  EXPECT_TRUE(wkt.find(expected) != std::string::npos) << wkt;      
   end factory_AuthorityFactory_createCoordinateOperation_helmert_8_CF;

   procedure factory_AuthorityFactory_createCoordinateOperation_helmert_15_CF (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("6276", false);
--  auto expected =
--  "COORDINATEOPERATION[\"ITRF2008 to GDA94 (1)\",\n"
--  "    VERSION[\"GA-Aus 2010\"],\n"
--  "    SOURCECRS[\n"
--  "        GEODCRS[\"ITRF2008\",\n"
--  "            DATUM[\"International Terrestrial Reference Frame "
--  "2008\",\n"
--  "                ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[Cartesian,3],\n"
--  "                AXIS[\"(X)\",geocentricX,\n"
--  "                    ORDER[1],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "                AXIS[\"(Y)\",geocentricY,\n"
--  "                    ORDER[2],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "                AXIS[\"(Z)\",geocentricZ,\n"
--  "                    ORDER[3],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",5332]]],\n"
--  "    TARGETCRS[\n"
--  "        GEODCRS[\"GDA94\",\n"
--  "            DATUM[\"Geocentric Datum of Australia 1994\",\n"
--  "                ELLIPSOID[\"GRS 1980\",6378137,298.257222101,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[Cartesian,3],\n"
--  "                AXIS[\"(X)\",geocentricX,\n"
--  "                    ORDER[1],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "                AXIS[\"(Y)\",geocentricY,\n"
--  "                    ORDER[2],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "                AXIS[\"(Z)\",geocentricZ,\n"
--  "                    ORDER[3],\n"
--  "                    LENGTHUNIT[\"metre\",1]],\n"
--  "            ID[\"EPSG\",4938]]],\n"
--  "    METHOD[\"Time-dependent Coordinate Frame rotation (geocen)\",\n"
--  "        ID[\"EPSG\",1056]],\n"
--  "    PARAMETER[\"X-axis translation\",-84.68,\n"
--  "        LENGTHUNIT[\"millimetre\",0.001],\n"
--  "        ID[\"EPSG\",8605]],\n"
--  "    PARAMETER[\"Y-axis translation\",-19.42,\n"
--  "        LENGTHUNIT[\"millimetre\",0.001],\n"
--  "        ID[\"EPSG\",8606]],\n"
--  "    PARAMETER[\"Z-axis translation\",32.01,\n"
--  "        LENGTHUNIT[\"millimetre\",0.001],\n"
--  "        ID[\"EPSG\",8607]],\n"
--  "    PARAMETER[\"X-axis rotation\",-0.4254,\n"
--  "        ANGLEUNIT[\"milliarc-second\",4.84813681109536E-09],\n"
--  "        ID[\"EPSG\",8608]],\n"
--  "    PARAMETER[\"Y-axis rotation\",2.2578,\n"
--  "        ANGLEUNIT[\"milliarc-second\",4.84813681109536E-09],\n"
--  "        ID[\"EPSG\",8609]],\n"
--  "    PARAMETER[\"Z-axis rotation\",2.4015,\n"
--  "        ANGLEUNIT[\"milliarc-second\",4.84813681109536E-09],\n"
--  "        ID[\"EPSG\",8610]],\n"
--  "    PARAMETER[\"Scale difference\",9.71,\n"
--  "        SCALEUNIT[\"parts per billion\",1E-09],\n"
--  "        ID[\"EPSG\",8611]],\n"
--  "    PARAMETER[\"Rate of change of X-axis translation\",1.42,\n"
--  "        LENGTHUNIT[\"millimetres per year\",3.16887651727315E-11],\n"
--  "        ID[\"EPSG\",1040]],\n"
--  "    PARAMETER[\"Rate of change of Y-axis translation\",1.34,\n"
--  "        LENGTHUNIT[\"millimetres per year\",3.16887651727315E-11],\n"
--  "        ID[\"EPSG\",1041]],\n"
--  "    PARAMETER[\"Rate of change of Z-axis translation\",0.9,\n"
--  "        LENGTHUNIT[\"millimetres per year\",3.16887651727315E-11],\n"
--  "        ID[\"EPSG\",1042]],\n"
--  "    PARAMETER[\"Rate of change of X-axis rotation\",1.5461,\n"
--  "        ANGLEUNIT[\"milliarc-seconds per "
--  "year\",1.53631468932076E-16],\n"
--  "        ID[\"EPSG\",1043]],\n"
--  "    PARAMETER[\"Rate of change of Y-axis rotation\",1.182,\n"
--  "        ANGLEUNIT[\"milliarc-seconds per "
--  "year\",1.53631468932076E-16],\n"
--  "        ID[\"EPSG\",1044]],\n"
--  "    PARAMETER[\"Rate of change of Z-axis rotation\",1.1551,\n"
--  "        ANGLEUNIT[\"milliarc-seconds per "
--  "year\",1.53631468932076E-16],\n"
--  "        ID[\"EPSG\",1045]],\n"
--  "    PARAMETER[\"Rate of change of Scale difference\",0.109,\n"
--  "        SCALEUNIT[\"parts per billion per "
--  "year\",3.16887651727315E-17],\n"
--  "        ID[\"EPSG\",1046]],\n"
--  "    PARAMETER[\"Parameter reference epoch\",1994,\n"
--  "        TIMEUNIT[\"year\",31556925.445],\n"
--  "        ID[\"EPSG\",1047]],\n"
--  "    OPERATIONACCURACY[0.03],\n"
--  "    USAGE[\n"
--  "        SCOPE[\"Geodesy. RMS residuals 5mm north, 8mm east and 28mm "
--  "vertical, maximum residuals 10mm north, 13mm east and 51mm "
--  "vertical.\"],\n"
--  "        AREA[\"Australia - onshore and EEZ\"],\n"
--  "        BBOX[-47.2,109.23,-8.88,163.2]],\n"
--  "    ID[\"EPSG\",6276],\n"
--  "    REMARK[\"Scale difference in ppb and scale difference rate in "
--  "ppb/yr where 1/billion = 1E-9 or nm/m.\"]]";
--  
--  EXPECT_EQ(
--  op->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  expected);      
   end factory_AuthorityFactory_createCoordinateOperation_helmert_15_CF;

   procedure factory_AuthorityFactory_createCoordinateOperation_helmert_15_PV (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("8069", false);
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=helmert +x=-0.0254 +y=0.0005 +z=0.1548 +rx=-0.0001 +ry=0 "
--  "+rz=-0.00026 +s=-0.01129 +dx=-0.0001 +dy=0.0005 +dz=0.0033 "
--  "+drx=0 +dry=0 +drz=-2e-05 +ds=-0.00012 +t_epoch=2010 "
--  "+convention=position_vector");      
   end factory_AuthorityFactory_createCoordinateOperation_helmert_15_PV;

   procedure factory_AuthorityFactory_createCoordinateOperation_other_transformation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("1884", false);
--  auto expected =
--  "COORDINATEOPERATION[\"S-JTSK (Ferro) to S-JTSK (1)\",\n"
--  "    VERSION[\"EPSG-Cze\"],\n"
--  "    SOURCECRS[\n"
--  "        GEOGCRS[\"S-JTSK (Ferro)\",\n"
--  "            DATUM[\"System of the Unified Trigonometrical Cadastral "
--  "Network (Ferro)\",\n"
--  "                ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Ferro\",-17.6666666666667,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[ellipsoidal,2],\n"
--  "                AXIS[\"geodetic latitude (Lat)\",north,\n"
--  "                    ORDER[1],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"geodetic longitude (Lon)\",east,\n"
--  "                    ORDER[2],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            ID[\"EPSG\",4818]]],\n"
--  "    TARGETCRS[\n"
--  "        GEOGCRS[\"S-JTSK\",\n"
--  "            DATUM[\"System of the Unified Trigonometrical Cadastral "
--  "Network\",\n"
--  "                ELLIPSOID[\"Bessel 1841\",6377397.155,299.1528128,\n"
--  "                    LENGTHUNIT[\"metre\",1]]],\n"
--  "            PRIMEM[\"Greenwich\",0,\n"
--  "                ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            CS[ellipsoidal,2],\n"
--  "                AXIS[\"geodetic latitude (Lat)\",north,\n"
--  "                    ORDER[1],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "                AXIS[\"geodetic longitude (Lon)\",east,\n"
--  "                    ORDER[2],\n"
--  "                    ANGLEUNIT[\"degree\",0.0174532925199433]],\n"
--  "            ID[\"EPSG\",4156]]],\n"
--  "    METHOD[\"Longitude rotation\",\n"
--  "        ID[\"EPSG\",9601]],\n"
--  "    PARAMETER[\"Longitude offset\",-17.6666666666667,\n"
--  "        ANGLEUNIT[\"degree\",0.0174532925199433],\n"
--  "        ID[\"EPSG\",8602]],\n"
--  "    OPERATIONACCURACY[0.0],\n"
--  "    USAGE[\n"
--  "        SCOPE[\"Change of prime meridian.\"],\n"
--  "        AREA[\"Europe - Czechoslovakia\"],\n"
--  "        BBOX[47.73,12.09,51.06,22.56]],\n"
--  "    ID[\"EPSG\",1884]]";
--  
--  EXPECT_EQ(
--  op->exportToWKT(
--  WKTFormatter::create(WKTFormatter::Convention::WKT2_2019).get()),
--  expected);      
   end factory_AuthorityFactory_createCoordinateOperation_other_transformation;

   procedure factory_AuthorityFactory_test_uom_9110 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  // This tests conversion from unit of measure EPSG:9110 DDD.MMSSsss
--  auto crs = factory->createProjectedCRS("2172");
--  EXPECT_PRED_FORMAT2(
--  ComparePROJString,
--  crs->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=sterea +lat_0=53.0019444444444 +lon_0=21.5027777777778 "
--  "+k=0.9998 +x_0=4603000 +y_0=5806000 +ellps=krass +units=m "
--  "+no_defs +type=crs");      
   end factory_AuthorityFactory_test_uom_9110;

   procedure factory_AuthorityFactory_affine_parametric_transform (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("10087", false);
--  // Do not do axis unit change
--  EXPECT_EQ(op->exportToPROJString(PROJStringFormatter::create().get()),
--  "+proj=affine +xoff=82357.457 +s11=0.304794369 "
--  "+s12=1.5417425e-05 +yoff=28091.324 +s21=-1.5417425e-05 "
--  "+s22=0.304794369");      
   end factory_AuthorityFactory_affine_parametric_transform;

   procedure factory_AuthorityFactory_build_all_concatenated (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto setConcatenated = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::CONCATENATED_OPERATION);
--  auto setConcatenatedNoDeprecated = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::CONCATENATED_OPERATION, false);
--  EXPECT_LT(setConcatenatedNoDeprecated.size(), setConcatenated.size());
--  for (const auto &code : setConcatenated) {
--  if (in(code, {"8422", "8481", "8482", "8565", "8566", "8572"})) {
--  EXPECT_THROW(factory->createCoordinateOperation(code, false),
--  FactoryException)
--  << code;
--  } else {
--  factory->createCoordinateOperation(code, false);
--  }
--  }      
   end factory_AuthorityFactory_build_all_concatenated;

   procedure factory_AuthorityFactory_createCoordinateOperation_conversion (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto op = factory->createCoordinateOperation("16031", false);
--  auto conversion = nn_dynamic_pointer_cast<Conversion>(op);
--  ASSERT_TRUE(conversion != nullptr);      
   end factory_AuthorityFactory_createCoordinateOperation_conversion;

   procedure factory_AuthorityFactory_getAuthorityCodes (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  {
--  auto set = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::PRIME_MERIDIAN);
--  ASSERT_TRUE(!set.empty());
--  factory->createPrimeMeridian(*(set.begin()));
--  }
--  {
--  auto set =
--  factory->getAuthorityCodes(AuthorityFactory::ObjectType::ELLIPSOID);
--  ASSERT_TRUE(!set.empty());
--  factory->createEllipsoid(*(set.begin()));
--  }
--  {
--  auto setDatum =
--  factory->getAuthorityCodes(AuthorityFactory::ObjectType::DATUM);
--  ASSERT_TRUE(!setDatum.empty());
--  factory->createDatum(*(setDatum.begin()));
--  
--  auto setGeodeticDatum = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::GEODETIC_REFERENCE_FRAME);
--  ASSERT_TRUE(!setGeodeticDatum.empty());
--  factory->createGeodeticDatum(*(setGeodeticDatum.begin()));
--  
--  auto setVerticalDatum = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::VERTICAL_REFERENCE_FRAME);
--  ASSERT_TRUE(!setVerticalDatum.empty());
--  factory->createVerticalDatum(*(setVerticalDatum.begin()));
--  
--  std::set<std::string> setMerged;
--  for (const auto &v : setGeodeticDatum) {
--  setMerged.insert(v);
--  }
--  for (const auto &v : setVerticalDatum) {
--  setMerged.insert(v);
--  }
--  EXPECT_EQ(setDatum, setMerged);
--  }
--  {
--  auto setCRS =
--  factory->getAuthorityCodes(AuthorityFactory::ObjectType::CRS);
--  ASSERT_TRUE(!setCRS.empty());
--  factory->createCoordinateReferenceSystem(*(setCRS.begin()));
--  
--  auto setGeodeticCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::GEODETIC_CRS);
--  ASSERT_TRUE(!setGeodeticCRS.empty());
--  factory->createGeodeticCRS(*(setGeodeticCRS.begin()));
--  
--  auto setGeocentricCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::GEOCENTRIC_CRS);
--  ASSERT_TRUE(!setGeocentricCRS.empty());
--  factory->createGeodeticCRS(*(setGeocentricCRS.begin()));
--  EXPECT_LT(setGeocentricCRS.size(), setGeodeticCRS.size());
--  
--  auto setGeographicCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::GEOGRAPHIC_CRS);
--  ASSERT_TRUE(!setGeographicCRS.empty());
--  factory->createGeographicCRS(*(setGeographicCRS.begin()));
--  EXPECT_LT(setGeographicCRS.size(), setGeodeticCRS.size());
--  for (const auto &v : setGeographicCRS) {
--  EXPECT_TRUE(setGeodeticCRS.find(v) != setGeodeticCRS.end());
--  }
--  
--  auto setGeographic2DCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::GEOGRAPHIC_2D_CRS);
--  ASSERT_TRUE(!setGeographic2DCRS.empty());
--  factory->createGeographicCRS(*(setGeographic2DCRS.begin()));
--  
--  auto setGeographic3DCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::GEOGRAPHIC_3D_CRS);
--  ASSERT_TRUE(!setGeographic3DCRS.empty());
--  factory->createGeographicCRS(*(setGeographic3DCRS.begin()));
--  
--  EXPECT_EQ(setGeographic2DCRS.size() + setGeographic3DCRS.size(),
--  setGeographicCRS.size());
--  
--  EXPECT_EQ(setGeocentricCRS.size() + setGeographicCRS.size(),
--  setGeodeticCRS.size());
--  
--  auto setVerticalCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::VERTICAL_CRS);
--  ASSERT_TRUE(!setVerticalCRS.empty());
--  factory->createVerticalCRS(*(setVerticalCRS.begin()));
--  
--  auto setProjectedCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::PROJECTED_CRS);
--  ASSERT_TRUE(!setProjectedCRS.empty());
--  factory->createProjectedCRS(*(setProjectedCRS.begin()));
--  
--  auto setCompoundCRS = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::COMPOUND_CRS);
--  ASSERT_TRUE(!setCompoundCRS.empty());
--  factory->createCompoundCRS(*(setCompoundCRS.begin()));
--  
--  std::set<std::string> setMerged;
--  for (const auto &v : setGeodeticCRS) {
--  setMerged.insert(v);
--  }
--  for (const auto &v : setVerticalCRS) {
--  setMerged.insert(v);
--  }
--  for (const auto &v : setProjectedCRS) {
--  setMerged.insert(v);
--  }
--  for (const auto &v : setCompoundCRS) {
--  setMerged.insert(v);
--  }
--  EXPECT_EQ(setCRS, setMerged);
--  }
--  {
--  auto setCO = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::COORDINATE_OPERATION);
--  ASSERT_TRUE(!setCO.empty());
--  factory->createCoordinateOperation(*(setCO.begin()), false);
--  
--  auto setConversion = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::CONVERSION);
--  ASSERT_TRUE(!setConversion.empty());
--  factory->createConversion(*(setConversion.begin()));
--  
--  auto setTransformation = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::TRANSFORMATION);
--  ASSERT_TRUE(!setTransformation.empty());
--  ASSERT_TRUE(nn_dynamic_pointer_cast<Transformation>(
--  factory->createCoordinateOperation(
--  *(setTransformation.begin()), false)) != nullptr);
--  
--  auto setConcatenated = factory->getAuthorityCodes(
--  AuthorityFactory::ObjectType::CONCATENATED_OPERATION);
--  ASSERT_TRUE(!setConcatenated.empty());
--  ASSERT_TRUE(nn_dynamic_pointer_cast<ConcatenatedOperation>(
--  factory->createCoordinateOperation(
--  *(setConcatenated.begin()), false)) != nullptr);
--  
--  std::set<std::string> setMerged;
--  for (const auto &v : setConversion) {
--  setMerged.insert(v);
--  }
--  for (const auto &v : setTransformation) {
--  setMerged.insert(v);
--  }
--  for (const auto &v : setConcatenated) {
--  setMerged.insert(v);
--  }
--  EXPECT_EQ(setCO.size(), setMerged.size());
--  std::set<std::string> setMissing;
--  for (const auto &v : setCO) {
--  if (setMerged.find(v) == setMerged.end()) {
--  setMissing.insert(v);
--  }
--  }
--  EXPECT_EQ(setMissing, std::set<std::string>());
--  EXPECT_EQ(setCO, setMerged);
--  }      
   end factory_AuthorityFactory_getAuthorityCodes;

   procedure factory_AuthorityFactory_getDescriptionText (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_THROW(factory->getDescriptionText("-1"),
--  NoSuchAuthorityCodeException);
--  EXPECT_EQ(factory->getDescriptionText("10000"),
--  "RGF93 to NGF IGN69 height (1)");
--  
--  // Several objects have 4326 code, including an area of use, but return
--  // the CRS one.
--  EXPECT_EQ(factory->getDescriptionText("4326"), "WGS 84");      
   end factory_AuthorityFactory_getDescriptionText;

   procedure factory_AuthorityFactory_createFromCoordinateReferenceSystemCodes (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  EXPECT_TRUE(
--  factory->createFromCoordinateReferenceSystemCodes("-1", "-1").empty());
--  {
--  auto res =
--  factory->createFromCoordinateReferenceSystemCodes("4326", "32631");
--  ASSERT_EQ(res.size(), 1U);
--  EXPECT_TRUE(res[0]->sourceCRS() != nullptr);
--  EXPECT_TRUE(res[0]->targetCRS() != nullptr);
--  EXPECT_TRUE(
--  res[0]->isEquivalentTo(factory->createConversion("16031").get()));
--  }
--  {
--  auto res =
--  factory->createFromCoordinateReferenceSystemCodes("4209", "4326");
--  EXPECT_TRUE(!res.empty());
--  for (const auto &conv : res) {
--  EXPECT_TRUE(conv->sourceCRS()->getEPSGCode() == 4209);
--  EXPECT_TRUE(conv->targetCRS()->getEPSGCode() == 4326);
--  EXPECT_FALSE(conv->isDeprecated());
--  }
--  }
--  {
--  auto list =
--  factory->createFromCoordinateReferenceSystemCodes("4179", "4258");
--  ASSERT_EQ(list.size(), 3U);
--  // Romania has a larger area than Poland (given our approx formula)
--  EXPECT_EQ(list[0]->getEPSGCode(), 15994); // Romania - 3m
--  EXPECT_EQ(list[1]->getEPSGCode(), 15993); // Romania - 10m
--  EXPECT_EQ(list[2]->getEPSGCode(), 1644);  // Poland - 1m
--  }
--  {
--  // Test removal of superseded transform
--  auto list = factory->createFromCoordinateReferenceSystemCodes(
--  "EPSG", "4179", "EPSG", "4258", false, false, false, true);
--  ASSERT_EQ(list.size(), 2U);
--  // Romania has a larger area than Poland (given our approx formula)
--  EXPECT_EQ(list[0]->getEPSGCode(), 15994); // Romania - 3m
--  EXPECT_EQ(list[1]->getEPSGCode(), 1644);  // Poland - 1m
--  }      
   end factory_AuthorityFactory_createFromCoordinateReferenceSystemCodes;

   procedure factory_AuthorityFactory_EPSG_4326_approximate_equivalent_to_builtin (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto factory = AuthorityFactory::create(DatabaseContext::create(), "EPSG");
--  auto crs = nn_dynamic_pointer_cast<GeographicCRS>(
--  factory->createCoordinateReferenceSystem("4326"));
--  EXPECT_TRUE(crs->isEquivalentTo(GeographicCRS::EPSG_4326.get(),
--  IComparable::Criterion::EQUIVALENT));      
   end factory_AuthorityFactory_EPSG_4326_approximate_equivalent_to_builtin;

   procedure factory_attachExtraDatabases_none (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctxt = DatabaseContext::create(std::string(), {});
--  auto factory = AuthorityFactory::create(ctxt, "EPSG");
--  auto crs = factory->createGeodeticCRS("4979");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);      
   end factory_attachExtraDatabases_none;

   procedure factory_attachExtraDatabases_auxiliary (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  #ifdef SQLITE_OPEN_URI
--  std::string auxDbName("file:proj_test_aux.db?mode=memory&cache=shared");
--  #else
--  const char *temp = getenv("TEMP");
--  if (!temp) {
--  temp = getenv("TMP");
--  }
--  if (!temp) {
--  temp = "/tmp";
--  }
--  std::string auxDbName(std::string(temp) + "/proj_test_aux.db");
--  MyUnlink(auxDbName);
--  #endif
--  {
--  sqlite3 *dbAux = nullptr;
--  sqlite3_open_v2(auxDbName.c_str(), &dbAux,
--  SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE
--  #ifdef SQLITE_OPEN_URI
--  | SQLITE_OPEN_URI
--  #endif
--  ,
--  nullptr);
--  ASSERT_TRUE(dbAux != nullptr);
--  ASSERT_TRUE(sqlite3_exec(dbAux, "BEGIN", nullptr, nullptr, nullptr) ==
--  SQLITE_OK);
--  {
--  auto ctxt = DatabaseContext::create();
--  const auto dbStructure = ctxt->getDatabaseStructure();
--  for (const auto &sql : dbStructure) {
--  if (sql.find("CREATE TRIGGER") == std::string::npos) {
--  ASSERT_TRUE(sqlite3_exec(dbAux, sql.c_str(), nullptr,
--  nullptr, nullptr) == SQLITE_OK);
--  }
--  }
--  }
--  
--  ASSERT_TRUE(
--  sqlite3_exec(
--  dbAux,
--  "INSERT INTO geodetic_crs VALUES('OTHER','OTHER_4326','WGS "
--  "84',NULL,NULL,'geographic 2D','EPSG','6422','EPSG','6326',"
--  "'EPSG','1262',NULL,0);",
--  nullptr, nullptr, nullptr) == SQLITE_OK);
--  ASSERT_TRUE(sqlite3_exec(dbAux, "COMMIT", nullptr, nullptr, nullptr) ==
--  SQLITE_OK);
--  
--  {
--  auto ctxt = DatabaseContext::create(std::string(), {auxDbName});
--  // Look for object located in main DB
--  {
--  auto factory = AuthorityFactory::create(ctxt, "EPSG");
--  auto crs = factory->createGeodeticCRS("4326");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);
--  }
--  // Look for object located in auxiliary DB
--  {
--  auto factory = AuthorityFactory::create(ctxt, "OTHER");
--  auto crs = factory->createGeodeticCRS("OTHER_4326");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);
--  }
--  }
--  
--  {
--  auto ctxt =
--  DatabaseContext::create(std::string(), {auxDbName, ":memory:"});
--  // Look for object located in main DB
--  {
--  auto factory = AuthorityFactory::create(ctxt, "EPSG");
--  auto crs = factory->createGeodeticCRS("4326");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);
--  }
--  // Look for object located in auxiliary DB
--  {
--  auto factory = AuthorityFactory::create(ctxt, "OTHER");
--  auto crs = factory->createGeodeticCRS("OTHER_4326");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);
--  }
--  }
--  
--  {
--  auto ctxt = DatabaseContext::create(std::string(), {":memory:"});
--  // Look for object located in main DB
--  {
--  auto factory = AuthorityFactory::create(ctxt, "EPSG");
--  auto crs = factory->createGeodeticCRS("4326");
--  auto gcrs = nn_dynamic_pointer_cast<GeographicCRS>(crs);
--  }
--  // Look for object located in auxiliary DB
--  {
--  auto factory = AuthorityFactory::create(ctxt, "OTHER");
--  EXPECT_THROW(factory->createGeodeticCRS("OTHER_4326"),
--  FactoryException);
--  }
--  }
--  
--  sqlite3_close(dbAux);
--  }
--  #ifndef SQLITE_OPEN_URI
--  MyUnlink(auxDbName);
--  #endif      
   end factory_attachExtraDatabases_auxiliary;

   procedure factory_attachExtraDatabases_auxiliary_error (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  EXPECT_THROW(DatabaseContext::create(std::string(), {"i_dont_exist_db"}),
--  FactoryException);      
   end factory_attachExtraDatabases_auxiliary_error;

   procedure factory_getOfficialNameFromAlias (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctxt = DatabaseContext::create(std::string(), {});
--  auto factory = AuthorityFactory::create(ctxt, std::string());
--  std::string outTableName;
--  std::string outAuthName;
--  std::string outCode;
--  
--  {
--  auto officialName = factory->getOfficialNameFromAlias(
--  "GCS_WGS_1984", std::string(), std::string(), false, outTableName,
--  outAuthName, outCode);
--  EXPECT_EQ(officialName, "WGS 84");
--  EXPECT_EQ(outTableName, "geodetic_crs");
--  EXPECT_EQ(outAuthName, "EPSG");
--  EXPECT_EQ(outCode, "4326");
--  }
--  
--  {
--  auto officialName = factory->getOfficialNameFromAlias(
--  "GCS_WGS_1984", "geodetic_crs", "ESRI", false, outTableName,
--  outAuthName, outCode);
--  EXPECT_EQ(officialName, "WGS 84");
--  EXPECT_EQ(outTableName, "geodetic_crs");
--  EXPECT_EQ(outAuthName, "EPSG");
--  EXPECT_EQ(outCode, "4326");
--  }
--  
--  {
--  auto officialName = factory->getOfficialNameFromAlias(
--  "no match", std::string(), std::string(), false, outTableName,
--  outAuthName, outCode);
--  EXPECT_EQ(officialName, "");
--  }
--  
--  {
--  auto officialName = factory->getOfficialNameFromAlias(
--  "System_Jednotne_Trigonometricke_Site_Katastralni_Ferro",
--  "geodetic_datum", std::string(), true, outTableName, outAuthName,
--  outCode);
--  EXPECT_EQ(
--  officialName,
--  "System of the Unified Trigonometrical Cadastral Network (Ferro)");
--  }      
   end factory_getOfficialNameFromAlias;

   procedure factory_createObjectsFromName (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctxt = DatabaseContext::create();
--  auto factory = AuthorityFactory::create(ctxt, std::string());
--  auto factoryEPSG = AuthorityFactory::create(ctxt, "EPSG");
--  
--  EXPECT_EQ(factory->createObjectsFromName("").size(), 0U);
--  
--  // ellipsoid + datum + 3 geodeticCRS
--  EXPECT_EQ(factory->createObjectsFromName("WGS 84", {}, false).size(), 5U);
--  
--  EXPECT_EQ(factory->createObjectsFromName("WGS 84", {}, true, 10).size(),
--  10U);
--  
--  EXPECT_EQ(factory
--  ->createObjectsFromName(
--  "WGS 84", {AuthorityFactory::ObjectType::CRS}, false)
--  .size(),
--  3U);
--  
--  {
--  auto res = factoryEPSG->createObjectsFromName(
--  "WGS84", {AuthorityFactory::ObjectType::GEOGRAPHIC_2D_CRS}, true);
--  EXPECT_EQ(res.size(),
--  9U); // EPSG:4326 and EPSG:4030 and the 6 WGS84 realizations
--  // and EPSG:7881 'Tritan St. Helena'' whose alias is
--  // 'WGS 84 Tritan St. Helena'
--  if (!res.empty()) {
--  EXPECT_EQ(res.front()->getEPSGCode(), 4326);
--  }
--  }
--  
--  // Prime meridian
--  EXPECT_EQ(factoryEPSG->createObjectsFromName("Paris", {}, false, 2).size(),
--  1U);
--  // Ellipsoid
--  EXPECT_EQ(
--  factoryEPSG->createObjectsFromName("Clarke 1880 (IGN)", {}, false, 2)
--  .size(),
--  1U);
--  // Geodetic datum
--  EXPECT_EQ(
--  factoryEPSG->createObjectsFromName("Hungarian Datum 1909", {}, false, 2)
--  .size(),
--  1U);
--  // Vertical datum
--  EXPECT_EQ(factoryEPSG->createObjectsFromName("EGM2008 geoid", {}, false, 2)
--  .size(),
--  1U);
--  // Geodetic CRS
--  EXPECT_EQ(factoryEPSG
--  ->createObjectsFromName(
--  "Unknown datum based upon the Airy 1830 ellipsoid", {},
--  false, 2)
--  .size(),
--  1U);
--  // Projected CRS
--  EXPECT_EQ(factoryEPSG
--  ->createObjectsFromName(
--  "Anguilla 1957 / British West Indies Grid", {}, false, 2)
--  .size(),
--  1U);
--  // Vertical CRS
--  EXPECT_EQ(factoryEPSG->createObjectsFromName("EGM2008 height", {}, false, 2)
--  .size(),
--  1U);
--  // Compound CRS
--  EXPECT_EQ(factoryEPSG
--  ->createObjectsFromName(
--  "KKJ / Finland Uniform Coordinate System + N60 height",
--  {}, false, 2)
--  .size(),
--  1U);
--  // Conversion
--  EXPECT_EQ(
--  factoryEPSG->createObjectsFromName("Belgian Lambert 2008", {}, false, 2)
--  .size(),
--  1U);
--  // Helmert transform
--  EXPECT_EQ(
--  factoryEPSG->createObjectsFromName("MGI to ETRS89 (4)", {}, false, 2)
--  .size(),
--  1U);
--  // Grid transform
--  EXPECT_EQ(factoryEPSG
--  ->createObjectsFromName("Guam 1963 to NAD83(HARN) (1)", {},
--  false, 2)
--  .size(),
--  1U);
--  // Other transform
--  EXPECT_EQ(factoryEPSG
--  ->createObjectsFromName(
--  "Monte Mario (Rome) to Monte Mario (1)", {}, false, 2)
--  .size(),
--  1U);
--  // Concatenated operation
--  EXPECT_EQ(
--  factoryEPSG
--  ->createObjectsFromName("MGI (Ferro) to WGS 84 (2)", {}, false, 2)
--  .size(),
--  1U);
--  
--  // Deprecated object
--  EXPECT_EQ(factoryEPSG
--  ->createObjectsFromName(
--  "NAD27(CGQ77) / SCoPQ zone 2 (deprecated)", {}, false, 2)
--  .size(),
--  1U);
--  
--  // Deprecated object (but without explicit deprecated)
--  EXPECT_EQ(
--  factoryEPSG
--  ->createObjectsFromName("NAD27(CGQ77) / SCoPQ zone 2", {}, false, 2)
--  .size(),
--  1U);
--  
--  const auto types = std::vector<AuthorityFactory::ObjectType>{
--  AuthorityFactory::ObjectType::PRIME_MERIDIAN,
--  AuthorityFactory::ObjectType::ELLIPSOID,
--  AuthorityFactory::ObjectType::DATUM,
--  AuthorityFactory::ObjectType::GEODETIC_REFERENCE_FRAME,
--  AuthorityFactory::ObjectType::VERTICAL_REFERENCE_FRAME,
--  AuthorityFactory::ObjectType::CRS,
--  AuthorityFactory::ObjectType::GEODETIC_CRS,
--  AuthorityFactory::ObjectType::GEOCENTRIC_CRS,
--  AuthorityFactory::ObjectType::GEOGRAPHIC_CRS,
--  AuthorityFactory::ObjectType::GEOGRAPHIC_2D_CRS,
--  AuthorityFactory::ObjectType::GEOGRAPHIC_3D_CRS,
--  AuthorityFactory::ObjectType::PROJECTED_CRS,
--  AuthorityFactory::ObjectType::VERTICAL_CRS,
--  AuthorityFactory::ObjectType::COMPOUND_CRS,
--  AuthorityFactory::ObjectType::COORDINATE_OPERATION,
--  AuthorityFactory::ObjectType::CONVERSION,
--  AuthorityFactory::ObjectType::TRANSFORMATION,
--  AuthorityFactory::ObjectType::CONCATENATED_OPERATION,
--  };
--  for (const auto type : types) {
--  factory->createObjectsFromName("i_dont_exist", {type}, false, 1);
--  }
--  factory->createObjectsFromName("i_dont_exist", types, false, 1);
--  
--  {
--  auto res = factoryEPSG->createObjectsFromName(
--  "ETRS89", {AuthorityFactory::ObjectType::GEOGRAPHIC_2D_CRS}, false,
--  1);
--  EXPECT_EQ(res.size(), 1U);
--  if (!res.empty()) {
--  EXPECT_EQ(res.front()->getEPSGCode(), 4258);
--  }
--  }      
   end factory_createObjectsFromName;

   procedure factory_getMetadata (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctxt = DatabaseContext::create();
--  EXPECT_EQ(ctxt->getMetadata("i_do_not_exist"), nullptr);
--  const char *IGNF_VERSION = ctxt->getMetadata("IGNF.VERSION");
--  ASSERT_TRUE(IGNF_VERSION != nullptr);
--  EXPECT_EQ(std::string(IGNF_VERSION), "3.1.0");      
   end factory_getMetadata;

   procedure factory_listAreaOfUseFromName (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctxt = DatabaseContext::create();
--  auto factory = AuthorityFactory::create(ctxt, std::string());
--  auto factoryEPSG = AuthorityFactory::create(ctxt, "EPSG");
--  {
--  auto res = factory->listAreaOfUseFromName("Denmark - onshore", false);
--  ASSERT_EQ(res.size(), 1U);
--  EXPECT_EQ(res.front().first, "EPSG");
--  EXPECT_EQ(res.front().second, "3237");
--  }
--  {
--  auto res = factory->listAreaOfUseFromName("Denmark", true);
--  EXPECT_GT(res.size(), 1U);
--  }
--  {
--  auto res = factory->listAreaOfUseFromName("no where land", false);
--  ASSERT_EQ(res.size(), 0U);
--  }      
   end factory_listAreaOfUseFromName;

   procedure factory_getCRSInfoList (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctxt = DatabaseContext::create();
--  {
--  auto factory = AuthorityFactory::create(ctxt, std::string());
--  auto list = factory->getCRSInfoList();
--  EXPECT_GT(list.size(), 1U);
--  bool foundEPSG = false;
--  bool foundIGNF = true;
--  bool found4326 = false;
--  for (const auto &info : list) {
--  foundEPSG |= info.authName == "EPSG";
--  foundIGNF |= info.authName == "IGNF";
--  if (info.authName == "EPSG" && info.code == "4326") {
--  found4326 = true;
--  }
--  }
--  EXPECT_TRUE(foundEPSG);
--  EXPECT_TRUE(foundIGNF);
--  EXPECT_TRUE(found4326);
--  }
--  {
--  auto factory = AuthorityFactory::create(ctxt, "EPSG");
--  auto list = factory->getCRSInfoList();
--  EXPECT_GT(list.size(), 1U);
--  bool found4326 = false;
--  bool found4978 = false;
--  bool found4979 = false;
--  bool found32631 = false;
--  bool found3855 = false;
--  bool found6871 = false;
--  for (const auto &info : list) {
--  EXPECT_EQ(info.authName, "EPSG");
--  if (info.code == "4326") {
--  EXPECT_EQ(info.name, "WGS 84");
--  EXPECT_EQ(info.type,
--  AuthorityFactory::ObjectType::GEOGRAPHIC_2D_CRS);
--  EXPECT_EQ(info.deprecated, false);
--  EXPECT_EQ(info.bbox_valid, true);
--  EXPECT_EQ(info.west_lon_degree, -180.0);
--  EXPECT_EQ(info.south_lat_degree, -90.0);
--  EXPECT_EQ(info.east_lon_degree, 180.0);
--  EXPECT_EQ(info.north_lat_degree, 90.0);
--  EXPECT_EQ(info.areaName, "World");
--  EXPECT_TRUE(info.projectionMethodName.empty());
--  found4326 = true;
--  } else if (info.code == "4296") { // Soudan - deprecated
--  EXPECT_EQ(info.bbox_valid, false);
--  EXPECT_EQ(info.west_lon_degree, 0.0);
--  EXPECT_EQ(info.south_lat_degree, 0.0);
--  EXPECT_EQ(info.east_lon_degree, 0.0);
--  EXPECT_EQ(info.north_lat_degree, 0.0);
--  } else if (info.code == "4978") {
--  EXPECT_EQ(info.name, "WGS 84");
--  EXPECT_EQ(info.type,
--  AuthorityFactory::ObjectType::GEOCENTRIC_CRS);
--  found4978 = true;
--  } else if (info.code == "4979") {
--  EXPECT_EQ(info.name, "WGS 84");
--  EXPECT_EQ(info.type,
--  AuthorityFactory::ObjectType::GEOGRAPHIC_3D_CRS);
--  found4979 = true;
--  } else if (info.code == "32631") {
--  EXPECT_EQ(info.name, "WGS 84 / UTM zone 31N");
--  EXPECT_EQ(info.type,
--  AuthorityFactory::ObjectType::PROJECTED_CRS);
--  EXPECT_EQ(info.deprecated, false);
--  EXPECT_EQ(info.bbox_valid, true);
--  EXPECT_EQ(info.west_lon_degree, 0.0);
--  EXPECT_EQ(info.south_lat_degree, 0.0);
--  EXPECT_EQ(info.east_lon_degree, 6.0);
--  EXPECT_EQ(info.north_lat_degree, 84.0);
--  EXPECT_EQ(info.areaName, "World - N hemisphere - 0\xC2\xB0"
--  "E to 6\xC2\xB0"
--  "E - by country");
--  EXPECT_EQ(info.projectionMethodName, "Transverse Mercator");
--  found32631 = true;
--  } else if (info.code == "3855") {
--  EXPECT_EQ(info.name, "EGM2008 height");
--  EXPECT_EQ(info.type,
--  AuthorityFactory::ObjectType::VERTICAL_CRS);
--  found3855 = true;
--  } else if (info.code == "6871") {
--  EXPECT_EQ(info.name,
--  "WGS 84 / Pseudo-Mercator +  EGM2008 geoid height");
--  EXPECT_EQ(info.type,
--  AuthorityFactory::ObjectType::COMPOUND_CRS);
--  found6871 = true;
--  }
--  }
--  EXPECT_TRUE(found4326);
--  EXPECT_TRUE(found4978);
--  EXPECT_TRUE(found4979);
--  EXPECT_TRUE(found32631);
--  EXPECT_TRUE(found3855);
--  EXPECT_TRUE(found6871);
--  }      
   end factory_getCRSInfoList;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, factory_databasecontext_create'Access, "factory_databasecontext_create");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createObject'Access, "factory_AuthorityFactory_createObject");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createUnitOfMeasure_linear'Access, "factory_AuthorityFactory_createUnitOfMeasure_linear");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createUnitOfMeasure_angular'Access, "factory_AuthorityFactory_createUnitOfMeasure_angular");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createUnitOfMeasure_angular_9107'Access, "factory_AuthorityFactory_createUnitOfMeasure_angular_9107");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createUnitOfMeasure_scale'Access, "factory_AuthorityFactory_createUnitOfMeasure_scale");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createUnitOfMeasure_time'Access, "factory_AuthorityFactory_createUnitOfMeasure_time");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createPrimeMeridian'Access, "factory_AuthorityFactory_createPrimeMeridian");

      Registration.Register_Routine (Test, factory_AuthorityFactory_identifyBodyFromSemiMajorAxis'Access, "factory_AuthorityFactory_identifyBodyFromSemiMajorAxis");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createEllipsoid'Access, "factory_AuthorityFactory_createEllipsoid");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createEllipsoid_sphere'Access, "factory_AuthorityFactory_createEllipsoid_sphere");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createEllipsoid_with_semi_minor_axis'Access, "factory_AuthorityFactory_createEllipsoid_with_semi_minor_axis");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createExtent'Access, "factory_AuthorityFactory_createExtent");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createExtent_no_bbox'Access, "factory_AuthorityFactory_createExtent_no_bbox");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createGeodeticDatum'Access, "factory_AuthorityFactory_createGeodeticDatum");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createGeodeticDatum_with_publication_date'Access, "factory_AuthorityFactory_createGeodeticDatum_with_publication_date");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createVerticalDatum'Access, "factory_AuthorityFactory_createVerticalDatum");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createDatum'Access, "factory_AuthorityFactory_createDatum");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_2_axis'Access, "factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_2_axis");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_3_axis'Access, "factory_AuthorityFactory_createCoordinateSystem_ellipsoidal_3_axis");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateSystem_geocentric'Access, "factory_AuthorityFactory_createCoordinateSystem_geocentric");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateSystem_vertical'Access, "factory_AuthorityFactory_createCoordinateSystem_vertical");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createGeodeticCRS_geographic2D'Access, "factory_AuthorityFactory_createGeodeticCRS_geographic2D");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createGeodeticCRS_geographic2D_area_no_bbox'Access, "factory_AuthorityFactory_createGeodeticCRS_geographic2D_area_no_bbox");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createGeodeticCRS_geographic3D'Access, "factory_AuthorityFactory_createGeodeticCRS_geographic3D");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createGeodeticCRS_geocentric'Access, "factory_AuthorityFactory_createGeodeticCRS_geocentric");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createVerticalCRS'Access, "factory_AuthorityFactory_createVerticalCRS");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createConversion'Access, "factory_AuthorityFactory_createConversion");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createConversion_from_other_transformation'Access, "factory_AuthorityFactory_createConversion_from_other_transformation");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createProjectedCRS'Access, "factory_AuthorityFactory_createProjectedCRS");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createProjectedCRS_south_pole'Access, "factory_AuthorityFactory_createProjectedCRS_south_pole");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createProjectedCRS_north_pole'Access, "factory_AuthorityFactory_createProjectedCRS_north_pole");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCompoundCRS'Access, "factory_AuthorityFactory_createCompoundCRS");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateReferenceSystem'Access, "factory_AuthorityFactory_createCoordinateReferenceSystem");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_helmert_3'Access, "factory_AuthorityFactory_createCoordinateOperation_helmert_3");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_helmert_7_CF'Access, "factory_AuthorityFactory_createCoordinateOperation_helmert_7_CF");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_helmert_7_PV'Access, "factory_AuthorityFactory_createCoordinateOperation_helmert_7_PV");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_helmert_8_CF'Access, "factory_AuthorityFactory_createCoordinateOperation_helmert_8_CF");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_helmert_15_CF'Access, "factory_AuthorityFactory_createCoordinateOperation_helmert_15_CF");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_helmert_15_PV'Access, "factory_AuthorityFactory_createCoordinateOperation_helmert_15_PV");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_other_transformation'Access, "factory_AuthorityFactory_createCoordinateOperation_other_transformation");

      Registration.Register_Routine (Test, factory_AuthorityFactory_test_uom_9110'Access, "factory_AuthorityFactory_test_uom_9110");

      Registration.Register_Routine (Test, factory_AuthorityFactory_affine_parametric_transform'Access, "factory_AuthorityFactory_affine_parametric_transform");

      Registration.Register_Routine (Test, factory_AuthorityFactory_build_all_concatenated'Access, "factory_AuthorityFactory_build_all_concatenated");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createCoordinateOperation_conversion'Access, "factory_AuthorityFactory_createCoordinateOperation_conversion");

      Registration.Register_Routine (Test, factory_AuthorityFactory_getAuthorityCodes'Access, "factory_AuthorityFactory_getAuthorityCodes");

      Registration.Register_Routine (Test, factory_AuthorityFactory_getDescriptionText'Access, "factory_AuthorityFactory_getDescriptionText");

      Registration.Register_Routine (Test, factory_AuthorityFactory_createFromCoordinateReferenceSystemCodes'Access, "factory_AuthorityFactory_createFromCoordinateReferenceSystemCodes");

      Registration.Register_Routine (Test, factory_AuthorityFactory_EPSG_4326_approximate_equivalent_to_builtin'Access, "factory_AuthorityFactory_EPSG_4326_approximate_equivalent_to_builtin");

      Registration.Register_Routine (Test, factory_attachExtraDatabases_none'Access, "factory_attachExtraDatabases_none");

      Registration.Register_Routine (Test, factory_attachExtraDatabases_auxiliary'Access, "factory_attachExtraDatabases_auxiliary");

      Registration.Register_Routine (Test, factory_attachExtraDatabases_auxiliary_error'Access, "factory_attachExtraDatabases_auxiliary_error");

      Registration.Register_Routine (Test, factory_getOfficialNameFromAlias'Access, "factory_getOfficialNameFromAlias");

      Registration.Register_Routine (Test, factory_createObjectsFromName'Access, "factory_createObjectsFromName");

      Registration.Register_Routine (Test, factory_getMetadata'Access, "factory_getMetadata");

      Registration.Register_Routine (Test, factory_listAreaOfUseFromName'Access, "factory_listAreaOfUseFromName");

      Registration.Register_Routine (Test, factory_getCRSInfoList'Access, "factory_getCRSInfoList");

   end Register_Tests;

end PROJ.Tests.test_factory;