with AUnit.Test_Cases;
with AUnit.Test_Cases;
with AUnit; 
with GNAT.Source_Info;
package body PROJ.Tests.pj_transform_test is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure pj_transform_test_longlat_to_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_EQ(x, 2 * DEG_TO_RAD);
--  EXPECT_EQ(y, 49 * DEG_TO_RAD);
--  
--  x = 182 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_EQ(x, 182 * DEG_TO_RAD);
--  EXPECT_EQ(y, 49 * DEG_TO_RAD);
--  
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_to_longlat;

   procedure pj_transform_test_longlat_to_proj (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=utm +zone=31 +datum=WGS84");
--  double x = 3 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 500000, 1e-8);
--  EXPECT_NEAR(y, 0, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_to_proj;

   procedure pj_transform_test_longlat_to_proj_tometer (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=utm +zone=31 +datum=WGS84 +to_meter=1000");
--  double x = 3 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 500, 1e-8);
--  EXPECT_NEAR(y, 0, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_to_proj_tometer;

   procedure pj_transform_test_proj_to_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=utm +zone=31 +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 500000;
--  double y = 0;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 3 * DEG_TO_RAD, 1e-12);
--  EXPECT_NEAR(y, 0 * DEG_TO_RAD, 1e-12);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_proj_to_longlat;

   procedure pj_transform_test_proj_to_proj (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=utm +zone=31 +datum=WGS84");
--  auto dst = pj_init_plus("+proj=utm +zone=31 +datum=WGS84");
--  double x = 500000;
--  double y = 0;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 500000, 1e-8);
--  EXPECT_NEAR(y, 0, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_proj_to_proj;

   procedure pj_transform_test_longlat_to_geocent (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +R=2");
--  auto dst = pj_init_plus("+proj=geocent +R=2");
--  double x = 0;
--  double y = 0;
--  double z = 0;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2, 1e-8);
--  EXPECT_NEAR(y, 0, 1e-8);
--  EXPECT_NEAR(z, 0, 1e-8);
--  
--  x = 90 * DEG_TO_RAD;
--  y = 0;
--  z = 0;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 0, 1e-8);
--  EXPECT_NEAR(y, 2, 1e-8);
--  EXPECT_NEAR(z, 0, 1e-8);
--  
--  x = 0;
--  y = 90 * DEG_TO_RAD;
--  z = 0.1;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 0, 1e-8);
--  EXPECT_NEAR(y, 0, 1e-8);
--  EXPECT_NEAR(z, 2 + 0.1, 1e-8);
--  
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_to_geocent;

   procedure pj_transform_test_longlat_to_geocent_to_meter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +R=2");
--  auto dst = pj_init_plus("+proj=geocent +R=2 +to_meter=1000");
--  double x = 0;
--  double y = 0;
--  double z = 0;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2e-3, 1e-8);
--  EXPECT_NEAR(y, 0, 1e-8);
--  EXPECT_NEAR(z, 0, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_to_geocent_to_meter;

   procedure pj_transform_test_geocent_to_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=geocent +R=2");
--  auto dst = pj_init_plus("+proj=longlat +R=2");
--  double x = 0;
--  double y = 2;
--  double z = 0;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 90 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 0, 1e-12);
--  
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_geocent_to_longlat;

   procedure pj_transform_test_geocent_to_meter_to_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=geocent +to_meter=1000 +R=2");
--  auto dst = pj_init_plus("+proj=longlat +R=2");
--  double x = 0;
--  double y = 2e-3;
--  double z = 0;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 90 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 0, 1e-12);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_geocent_to_meter_to_longlat;

   procedure pj_transform_test_pm (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +pm=3 +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +pm=1 +datum=WGS84");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, (2 + 3 - 1) * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_EQ(y, 49 * DEG_TO_RAD) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_pm;

   procedure pj_transform_test_longlat_geoc_to_longlat (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +geoc +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 48.809360314691766 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_geoc_to_longlat;

   procedure pj_transform_test_longlat_to_longlat_geoc (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +geoc +datum=WGS84");
--  double x = 2 * DEG_TO_RAD;
--  double y = 48.809360314691766 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_to_longlat_geoc;

   procedure pj_transform_test_ellps_to_ellps_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +ellps=clrk66");
--  auto dst = pj_init_plus("+proj=longlat +ellps=WGS84");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_ellps_to_ellps_noop;

   procedure pj_transform_test_towgs84_3param_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=1,2,3");
--  auto dst = pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=1,2,3");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  double z = 10;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_towgs84_3param_noop;

   procedure pj_transform_test_towgs84_7param_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src =
--  pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=1,2,3,4,5,6,7");
--  auto dst =
--  pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=1,2,3,4,5,6,7");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  double z = 10;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_towgs84_7param_noop;

   procedure pj_transform_test_longlat_towgs84_3param_to_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=0,1,0");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 90 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  double z = 10;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 90 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10 + 1, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_towgs84_3param_to_datum;

   procedure pj_transform_test_longlat_towgs84_3param_to_datum_no_z (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=0,1,0");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 90 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 90 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_towgs84_3param_to_datum_no_z;

   procedure pj_transform_test_longlat_towgs84_7param_to_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src =
--  pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=0,1,0,0,0,0,0.5");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 90 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  double z = 10;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 90 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 14.189073500223458, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_towgs84_7param_to_datum;

   procedure pj_transform_test_datum_to_longlat_towgs84_3param (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=0,1,0");
--  double x = 90 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  double z = 10 + 1;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 90 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_datum_to_longlat_towgs84_3param;

   procedure pj_transform_test_datum_to_longlat_towgs84_7param (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst =
--  pj_init_plus("+proj=longlat +ellps=WGS84 +towgs84=0,1,0,0,0,0,0.5");
--  double x = 90 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  double z = 14.189073500223458;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 90 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_datum_to_longlat_towgs84_7param;

   procedure pj_transform_test_ellps_grs80_towgs84_to_datum_wgs84 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +ellps=GRS80 +towgs84=0,0,0");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  double z = 10;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-15) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-15) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_ellps_grs80_towgs84_to_datum_wgs84;

   procedure pj_transform_test_longlat_nadgrids_to_datum (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +ellps=clrk66 +nadgrids=conus");
--  auto dst = pj_init_plus("+proj=longlat +datum=NAD83");
--  double x = -100 * DEG_TO_RAD;
--  double y = 40 * DEG_TO_RAD;
--  double z = 10;
--  int ret = pj_transform(src, dst, 1, 0, &x, &y, &z);
--  EXPECT_TRUE(ret == 0 || ret == PJD_ERR_FAILED_TO_LOAD_GRID);
--  if (ret == 0) {
--  EXPECT_NEAR(x, -100.00040583667015 * DEG_TO_RAD, 1e-12)
--  << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 40.000005895651363 * DEG_TO_RAD, 1e-12)
--  << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10.000043224543333, 1e-8);
--  }
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_longlat_nadgrids_to_datum;

   procedure pj_transform_test_nadgrids_noop (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +ellps=clrk66 +nadgrids=conus");
--  auto dst = pj_init_plus("+proj=longlat +ellps=clrk66 +nadgrids=conus");
--  double x = -100 * DEG_TO_RAD;
--  double y = 40 * DEG_TO_RAD;
--  double z = 10;
--  int ret = pj_transform(src, dst, 1, 0, &x, &y, &z);
--  EXPECT_TRUE(ret == 0);
--  if (ret == 0) {
--  EXPECT_NEAR(x, -100 * DEG_TO_RAD, 1e-15) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 40 * DEG_TO_RAD, 1e-15) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10, 1e-8);
--  }
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_nadgrids_noop;

   procedure pj_transform_test_datum_to_longlat_nadgrids (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=NAD83");
--  auto dst = pj_init_plus("+proj=longlat +ellps=clrk66 +nadgrids=conus");
--  double x = -100.00040583667015 * DEG_TO_RAD;
--  double y = 40.000005895651363 * DEG_TO_RAD;
--  double z = 10.000043224543333;
--  int ret = pj_transform(src, dst, 1, 0, &x, &y, &z);
--  EXPECT_TRUE(ret == 0 || ret == PJD_ERR_FAILED_TO_LOAD_GRID);
--  if (ret == 0) {
--  EXPECT_NEAR(x, -100 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 40 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 10, 1e-8);
--  }
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_datum_to_longlat_nadgrids;

   procedure pj_transform_test_long_wrap (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84 +lon_wrap=180");
--  double x = -1 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 359 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 0 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_long_wrap;

   procedure pj_transform_test_src_vto_meter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84 +vto_meter=1000");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  double z = 1;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 1000, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_src_vto_meter;

   procedure pj_transform_test_dest_vto_meter (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84 +vto_meter=1000");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  double z = 1000;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 1, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_dest_vto_meter;

   procedure pj_transform_test_src_axis_neu_with_z (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84 +axis=neu");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 49 * DEG_TO_RAD;
--  double y = 2 * DEG_TO_RAD;
--  double z = 1;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 1, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_src_axis_neu_with_z;

   procedure pj_transform_test_src_axis_neu_without_z (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84 +axis=neu");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 49 * DEG_TO_RAD;
--  double y = 2 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_src_axis_neu_without_z;

   procedure pj_transform_test_src_axis_swd (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84 +axis=swd");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84");
--  double x = 49 * DEG_TO_RAD;
--  double y = 2 * DEG_TO_RAD;
--  double z = -1;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, -2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, -49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 1, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_src_axis_swd;

   procedure pj_transform_test_dst_axis_neu (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84 +axis=neu");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  double z = 1;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, 49 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 2 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, 1, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_dst_axis_neu;

   procedure pj_transform_test_dst_axis_swd (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+proj=longlat +datum=WGS84");
--  auto dst = pj_init_plus("+proj=longlat +datum=WGS84 +axis=swd");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  double z = 1;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, &z), 0);
--  EXPECT_NEAR(x, -49 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, -2 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  EXPECT_NEAR(z, -1, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_dst_axis_swd;

   procedure pj_transform_test_init_epsg (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+init=epsg:4326");
--  ASSERT_TRUE(src != nullptr);
--  auto dst = pj_init_plus("+init=epsg:32631");
--  ASSERT_TRUE(dst != nullptr);
--  double x = 3 * DEG_TO_RAD;
--  double y = 0 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 500000, 1e-8);
--  EXPECT_NEAR(y, 0, 1e-8);
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_init_epsg;

   procedure proj_api_h_pj_set_searchpath (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  const char *path = "/i_do/not/exit";
--  pj_set_searchpath(1, &path);
--  {
--  auto info = proj_info();
--  EXPECT_EQ(info.path_count, 1U);
--  ASSERT_NE(info.paths, nullptr);
--  ASSERT_NE(info.paths[0], nullptr);
--  EXPECT_EQ(std::string(info.paths[0]), path);
--  }
--  
--  pj_set_searchpath(0, nullptr);
--  {
--  auto info = proj_info();
--  EXPECT_EQ(info.path_count, 0U);
--  EXPECT_EQ(info.paths, nullptr);
--  }      
   end proj_api_h_pj_set_searchpath;

   procedure proj_api_h_pj_set_finder (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  const auto myfinder = [](const char *) -> const char * { return nullptr; };
--  pj_set_finder(myfinder);
--  
--  pj_set_finder(nullptr);      
   end proj_api_h_pj_set_finder;

   procedure proj_api_h_default_fileapi (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = pj_ctx_alloc();
--  auto fid = pj_open_lib(ctx, "proj.db", "rb");
--  ASSERT_NE(fid, nullptr);
--  char header[6];
--  ASSERT_EQ(pj_ctx_fread(ctx, header, 1, 6, fid), 6U);
--  ASSERT_TRUE(memcmp(header, "SQLite", 6) == 0);
--  ASSERT_EQ(pj_ctx_ftell(ctx, fid), 6);
--  ASSERT_EQ(pj_ctx_fseek(ctx, fid, 0, SEEK_SET), 0);
--  ASSERT_EQ(pj_ctx_ftell(ctx, fid), 0);
--  pj_ctx_fclose(ctx, fid);
--  pj_ctx_free(ctx);      
   end proj_api_h_default_fileapi;

   procedure pj_transform_test_ob_tran_to_meter_as_dest (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus(
--  "+ellps=WGS84 +a=57.29577951308232 +proj=eqc +lon_0=0.0 +no_defs");
--  auto dst = pj_init_plus("+ellps=WGS84 +proj=ob_tran +o_proj=latlon "
--  "+o_lon_p=0.0 +o_lat_p=90.0 +lon_0=360.0 "
--  "+to_meter=0.0174532925199433 +no_defs");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_ob_tran_to_meter_as_dest;

   procedure proj_api_h_custom_fileapi (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = pj_ctx_alloc();
--  Spy spy;
--  pj_ctx_set_app_data(ctx, &spy);
--  projFileAPI myAPI = {myFOpen, myFRead, myFSeek, myFTell, myFClose};
--  pj_ctx_set_fileapi(ctx, &myAPI);
--  EXPECT_EQ(pj_ctx_get_fileapi(ctx), &myAPI);
--  auto fid = pj_open_lib(ctx, "proj.db", "rb");
--  ASSERT_NE(fid, nullptr);
--  char header[6];
--  ASSERT_EQ(pj_ctx_fread(ctx, header, 1, 6, fid), 6U);
--  ASSERT_TRUE(memcmp(header, "SQLite", 6) == 0);
--  ASSERT_EQ(pj_ctx_ftell(ctx, fid), 6);
--  ASSERT_EQ(pj_ctx_fseek(ctx, fid, 0, SEEK_SET), 0);
--  ASSERT_EQ(pj_ctx_ftell(ctx, fid), 0);
--  pj_ctx_fclose(ctx, fid);
--  pj_ctx_free(ctx);
--  EXPECT_TRUE(spy.gotInMyFOpen);
--  EXPECT_TRUE(spy.gotInMyFRead);
--  EXPECT_TRUE(spy.gotInMyFSeek);
--  EXPECT_TRUE(spy.gotInMyFTell);
--  EXPECT_TRUE(spy.gotInMyFClose);      
   end proj_api_h_custom_fileapi;

   procedure pj_transform_test_ob_tran_to_meter_as_srouce (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto src = pj_init_plus("+ellps=WGS84 +proj=ob_tran +o_proj=latlon "
--  "+o_lon_p=0.0 +o_lat_p=90.0 +lon_0=360.0 "
--  "+to_meter=0.0174532925199433 +no_defs");
--  auto dst = pj_init_plus(
--  "+ellps=WGS84 +a=57.29577951308232 +proj=eqc +lon_0=0.0 +no_defs");
--  double x = 2 * DEG_TO_RAD;
--  double y = 49 * DEG_TO_RAD;
--  EXPECT_EQ(pj_transform(src, dst, 1, 0, &x, &y, nullptr), 0);
--  EXPECT_NEAR(x, 2 * DEG_TO_RAD, 1e-12) << x / DEG_TO_RAD;
--  EXPECT_NEAR(y, 49 * DEG_TO_RAD, 1e-12) << y / DEG_TO_RAD;
--  pj_free(src);
--  pj_free(dst);      
   end pj_transform_test_ob_tran_to_meter_as_srouce;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, pj_transform_test_longlat_to_longlat'Access, "pj_transform_test_longlat_to_longlat");

      Registration.Register_Routine (Test, pj_transform_test_longlat_to_proj'Access, "pj_transform_test_longlat_to_proj");

      Registration.Register_Routine (Test, pj_transform_test_longlat_to_proj_tometer'Access, "pj_transform_test_longlat_to_proj_tometer");

      Registration.Register_Routine (Test, pj_transform_test_proj_to_longlat'Access, "pj_transform_test_proj_to_longlat");

      Registration.Register_Routine (Test, pj_transform_test_proj_to_proj'Access, "pj_transform_test_proj_to_proj");

      Registration.Register_Routine (Test, pj_transform_test_longlat_to_geocent'Access, "pj_transform_test_longlat_to_geocent");

      Registration.Register_Routine (Test, pj_transform_test_longlat_to_geocent_to_meter'Access, "pj_transform_test_longlat_to_geocent_to_meter");

      Registration.Register_Routine (Test, pj_transform_test_geocent_to_longlat'Access, "pj_transform_test_geocent_to_longlat");

      Registration.Register_Routine (Test, pj_transform_test_geocent_to_meter_to_longlat'Access, "pj_transform_test_geocent_to_meter_to_longlat");

      Registration.Register_Routine (Test, pj_transform_test_pm'Access, "pj_transform_test_pm");

      Registration.Register_Routine (Test, pj_transform_test_longlat_geoc_to_longlat'Access, "pj_transform_test_longlat_geoc_to_longlat");

      Registration.Register_Routine (Test, pj_transform_test_longlat_to_longlat_geoc'Access, "pj_transform_test_longlat_to_longlat_geoc");

      Registration.Register_Routine (Test, pj_transform_test_ellps_to_ellps_noop'Access, "pj_transform_test_ellps_to_ellps_noop");

      Registration.Register_Routine (Test, pj_transform_test_towgs84_3param_noop'Access, "pj_transform_test_towgs84_3param_noop");

      Registration.Register_Routine (Test, pj_transform_test_towgs84_7param_noop'Access, "pj_transform_test_towgs84_7param_noop");

      Registration.Register_Routine (Test, pj_transform_test_longlat_towgs84_3param_to_datum'Access, "pj_transform_test_longlat_towgs84_3param_to_datum");

      Registration.Register_Routine (Test, pj_transform_test_longlat_towgs84_3param_to_datum_no_z'Access, "pj_transform_test_longlat_towgs84_3param_to_datum_no_z");

      Registration.Register_Routine (Test, pj_transform_test_longlat_towgs84_7param_to_datum'Access, "pj_transform_test_longlat_towgs84_7param_to_datum");

      Registration.Register_Routine (Test, pj_transform_test_datum_to_longlat_towgs84_3param'Access, "pj_transform_test_datum_to_longlat_towgs84_3param");

      Registration.Register_Routine (Test, pj_transform_test_datum_to_longlat_towgs84_7param'Access, "pj_transform_test_datum_to_longlat_towgs84_7param");

      Registration.Register_Routine (Test, pj_transform_test_ellps_grs80_towgs84_to_datum_wgs84'Access, "pj_transform_test_ellps_grs80_towgs84_to_datum_wgs84");

      Registration.Register_Routine (Test, pj_transform_test_longlat_nadgrids_to_datum'Access, "pj_transform_test_longlat_nadgrids_to_datum");

      Registration.Register_Routine (Test, pj_transform_test_nadgrids_noop'Access, "pj_transform_test_nadgrids_noop");

      Registration.Register_Routine (Test, pj_transform_test_datum_to_longlat_nadgrids'Access, "pj_transform_test_datum_to_longlat_nadgrids");

      Registration.Register_Routine (Test, pj_transform_test_long_wrap'Access, "pj_transform_test_long_wrap");

      Registration.Register_Routine (Test, pj_transform_test_src_vto_meter'Access, "pj_transform_test_src_vto_meter");

      Registration.Register_Routine (Test, pj_transform_test_dest_vto_meter'Access, "pj_transform_test_dest_vto_meter");

      Registration.Register_Routine (Test, pj_transform_test_src_axis_neu_with_z'Access, "pj_transform_test_src_axis_neu_with_z");

      Registration.Register_Routine (Test, pj_transform_test_src_axis_neu_without_z'Access, "pj_transform_test_src_axis_neu_without_z");

      Registration.Register_Routine (Test, pj_transform_test_src_axis_swd'Access, "pj_transform_test_src_axis_swd");

      Registration.Register_Routine (Test, pj_transform_test_dst_axis_neu'Access, "pj_transform_test_dst_axis_neu");

      Registration.Register_Routine (Test, pj_transform_test_dst_axis_swd'Access, "pj_transform_test_dst_axis_swd");

      Registration.Register_Routine (Test, pj_transform_test_init_epsg'Access, "pj_transform_test_init_epsg");

      Registration.Register_Routine (Test, proj_api_h_pj_set_searchpath'Access, "proj_api_h_pj_set_searchpath");

      Registration.Register_Routine (Test, proj_api_h_pj_set_finder'Access, "proj_api_h_pj_set_finder");

      Registration.Register_Routine (Test, proj_api_h_default_fileapi'Access, "proj_api_h_default_fileapi");

      Registration.Register_Routine (Test, pj_transform_test_ob_tran_to_meter_as_dest'Access, "pj_transform_test_ob_tran_to_meter_as_dest");

      Registration.Register_Routine (Test, proj_api_h_custom_fileapi'Access, "proj_api_h_custom_fileapi");

      Registration.Register_Routine (Test, pj_transform_test_ob_tran_to_meter_as_srouce'Access, "pj_transform_test_ob_tran_to_meter_as_srouce");

   end Register_Tests;

end PROJ.Tests.pj_transform_test;