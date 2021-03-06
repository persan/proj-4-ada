--  ----------------------------------------------------------------------------
--
--  This file is an generated as a starting point for unitiest of Ada-PROJ
--  from the c++ unit tests.
--
--  ----------------------------------------------------------------------------

with AUnit.Test_Cases;
with Ada.Text_IO;
with GNAT.Source_Info;
with PROJ.Images;
package body PROJ.Tests.Gie_Self_Tests is
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return Test_Name;
   end;

   procedure Gie_Cart_Selftest (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
      --  PJ_CONTEXT *ctx;
      --  PJ *P;
      --  PJ_COORD a, b, obs[2];
      --  PJ_COORD coord[2];
      --  
      --  int err;
      --  size_t n, sz;
      --  double dist, h, t;
      --  const char *const args[3] = {"proj=utm", "zone=32", "ellps=GRS80"};
      --  char arg[50] = {"+proj=utm; +zone=32; +ellps=GRS80"};
      --  
      --  /* An utm projection on the GRS80 ellipsoid */
      --  P = proj_create(PJ_DEFAULT_CTX, arg);
      --  ASSERT_TRUE(P != nullptr);
      --  
      --  /* Clean up */
      --  proj_destroy(P);
      --  
      --  /* Same projection, now using argc/argv style initialization */
      --  P = proj_create_argv(PJ_DEFAULT_CTX, 3, const_cast<char **>(args));
      --  ASSERT_TRUE(P != nullptr);
      --  
      --  /* zero initialize everything, then set (longitude, latitude) to (12, 55) */
      --  a = proj_coord(0, 0, 0, 0);
      --  /* a.lp: The coordinate part of a, interpreted as a classic LP pair */
      --  a.lp.lam = proj_torad(12);
      --  a.lp.phi = proj_torad(55);
      --  
      --  /* Forward projection */
      --  b = proj_trans(P, PJ_FWD, a);
      --  
      --  /* Inverse projection */
      --  a = proj_trans(P, PJ_INV, b);
      --  
      --  /* Null projection */
      --  a = proj_trans(P, PJ_IDENT, a);
      --  
      --  /* Forward again, to get two linear items for comparison */
      --  a = proj_trans(P, PJ_FWD, a);
      --  
      --  dist = proj_xy_dist(a, b);
      --  ASSERT_LE(dist, 2e-9);
      --  
      --  /* Clear any previous error */
      --  proj_errno_reset(P);
      --  
      --  /* Invalid projection */
      --  a = proj_trans(P, static_cast<PJ_DIRECTION>(42), a);
      --  ASSERT_EQ(a.lpz.lam, HUGE_VAL);
      --  
      --  err = proj_errno(P);
      --  ASSERT_NE(err, 0);
      --  
      --  /* Clear error again */
      --  proj_errno_reset(P);
      --  
      --  /* Clean up */
      --  proj_destroy(P);
      --  
      --  /* Now do some 3D transformations */
      --  P = proj_create(PJ_DEFAULT_CTX, "+proj=cart +ellps=GRS80");
      --  ASSERT_TRUE(P != nullptr);
      --  
      --  /* zero initialize everything, then set (longitude, latitude, height) to
      --  * (12, 55, 100) */
      --  a = b = proj_coord(0, 0, 0, 0);
      --  a.lpz.lam = proj_torad(12);
      --  a.lpz.phi = proj_torad(55);
      --  a.lpz.z = 100;
      --  
      --  /* Forward projection: 3D-Cartesian-to-Ellipsoidal */
      --  b = proj_trans(P, PJ_FWD, a);
      --  
      --  /* Check roundtrip precision for 10000 iterations each way */
      --  dist = proj_roundtrip(P, PJ_FWD, 10000, &a);
      --  dist += proj_roundtrip(P, PJ_INV, 10000, &b);
      --  ASSERT_LE(dist, 4e-9);
      --  
      --  /* Test at the North Pole */
      --  a = b = proj_coord(0, 0, 0, 0);
      --  a.lpz.lam = proj_torad(0);
      --  a.lpz.phi = proj_torad(90);
      --  a.lpz.z = 100;
      --  
      --  /* Forward projection: Ellipsoidal-to-3D-Cartesian */
      --  dist = proj_roundtrip(P, PJ_FWD, 1, &a);
      --  ASSERT_LE(dist, 1e-9);
      --  
      --  /* Test at the South Pole */
      --  a = b = proj_coord(0, 0, 0, 0);
      --  a.lpz.lam = proj_torad(0);
      --  a.lpz.phi = proj_torad(-90);
      --  a.lpz.z = 100;
      --  b = a;
      --  
      --  /* Forward projection: Ellipsoidal-to-3D-Cartesian */
      --  dist = proj_roundtrip(P, PJ_FWD, 1, &a);
      --  ASSERT_LE(dist, 4e-9);
      --  
      --  /* Inverse projection: 3D-Cartesian-to-Ellipsoidal */
      --  b = proj_trans(P, PJ_INV, b);
      --  
      --  /* Move p to another context */
      --  ctx = proj_context_create();
      --  ASSERT_NE(ctx, pj_get_default_ctx());
      --  
      --  proj_context_set(P, ctx);
      --  ASSERT_EQ(ctx, P->ctx);
      --  
      --  b = proj_trans(P, PJ_FWD, b);
      --  
      --  /* Move it back to the default context */
      --  proj_context_set(P, 0);
      --  ASSERT_EQ(pj_get_default_ctx(), P->ctx);
      --  
      --  proj_context_destroy(ctx);
      --  
      --  /* We go on with the work - now back on the default context */
      --  b = proj_trans(P, PJ_INV, b);
      --  proj_destroy(P);
      --  
      --  /* Testing proj_trans_generic () */
      --  
      --  /* An utm projection on the GRS80 ellipsoid */
      --  P = proj_create(PJ_DEFAULT_CTX, "+proj=utm +zone=32 +ellps=GRS80");
      --  ASSERT_TRUE(P != nullptr);
      --  
      --  obs[0] = proj_coord(proj_torad(12), proj_torad(55), 45, 0);
      --  obs[1] = proj_coord(proj_torad(12), proj_torad(56), 50, 0);
      --  sz = sizeof(PJ_COORD);
      --  
      --  /* Forward projection */
      --  a = proj_trans(P, PJ_FWD, obs[0]);
      --  b = proj_trans(P, PJ_FWD, obs[1]);
      --  
      --  n = proj_trans_generic(P, PJ_FWD, &(obs[0].lpz.lam), sz, 2,
      --  &(obs[0].lpz.phi), sz, 2, &(obs[0].lpz.z), sz, 2, 0,
      --  sz, 0);
      --  ASSERT_EQ(n, 2U);
      --  
      --  ASSERT_EQ(a.lpz.lam, obs[0].lpz.lam);
      --  ASSERT_EQ(a.lpz.phi, obs[0].lpz.phi);
      --  ASSERT_EQ(a.lpz.z, obs[0].lpz.z);
      --  ASSERT_EQ(b.lpz.lam, obs[1].lpz.lam);
      --  ASSERT_EQ(b.lpz.phi, obs[1].lpz.phi);
      --  ASSERT_EQ(b.lpz.z, obs[1].lpz.z);
      --  
      --  /* now test the case of constant z */
      --  obs[0] = proj_coord(proj_torad(12), proj_torad(55), 45, 0);
      --  obs[1] = proj_coord(proj_torad(12), proj_torad(56), 50, 0);
      --  h = 27;
      --  t = 33;
      --  n = proj_trans_generic(P, PJ_FWD, &(obs[0].lpz.lam), sz, 2,
      --  &(obs[0].lpz.phi), sz, 2, &h, 0, 1, &t, 0, 1);
      --  ASSERT_EQ(n, 2U);
      --  
      --  ASSERT_EQ(a.lpz.lam, obs[0].lpz.lam);
      --  ASSERT_EQ(a.lpz.phi, obs[0].lpz.phi);
      --  ASSERT_EQ(45, obs[0].lpz.z);
      --  ASSERT_EQ(b.lpz.lam, obs[1].lpz.lam);
      --  ASSERT_EQ(b.lpz.phi, obs[1].lpz.phi);
      --  ASSERT_EQ(50, obs[1].lpz.z);
      --  ASSERT_NE(50, h);
      --  
      --  /* test proj_trans_array () */
      --  
      --  coord[0] = proj_coord(proj_torad(12), proj_torad(55), 45, 0);
      --  coord[1] = proj_coord(proj_torad(12), proj_torad(56), 50, 0);
      --  ASSERT_FALSE(proj_trans_array(P, PJ_FWD, 2, coord));
      --  
      --  ASSERT_EQ(a.lpz.lam, coord[0].lpz.lam);
      --  ASSERT_EQ(a.lpz.phi, coord[0].lpz.phi);
      --  ASSERT_EQ(a.lpz.z, coord[0].lpz.z);
      --  ASSERT_EQ(b.lpz.lam, coord[1].lpz.lam);
      --  ASSERT_EQ(b.lpz.phi, coord[1].lpz.phi);
      --  ASSERT_EQ(b.lpz.z, coord[1].lpz.z);
      --  
      --  /* Clean up  after proj_trans_* tests */
      --  proj_destroy(P);      
   end Gie_Cart_Selftest;


   procedure Gie_Info_Functions (Test : in out AUnit.Test_Cases.Test_Case'Class) is
      Info : PJ_INFO;
   
   begin
      Info := Proj.Info;
      Ada.Text_IO.Put_Line (PROJ.Images.Image (Info));
      null;
      --  PJ_INFO info;
      --  PJ_PROJ_INFO pj_info;
      --  PJ_GRID_INFO grid_info;
      --  PJ_INIT_INFO init_info;
      --  
      --  PJ_FACTORS factors;
      --  
      --  const PJ_OPERATIONS *oper_list;
      --  const PJ_ELLPS *ellps_list;
      --  const PJ_UNITS *unit_list;
      --  const PJ_PRIME_MERIDIANS *pm_list;
      --  
      --  char buf[40];
      --  PJ *P;
      --  char arg[50] = {"+proj=utm; +zone=32; +ellps=GRS80"};
      --  PJ_COORD a;
      --  
      --  /* ********************************************************************** */
      --  /*                          Test info functions                           */
      --  /* ********************************************************************** */
      --  
      --  /* proj_info()                                                            */
      --  /* this one is difficult to test, since the output changes with the setup */
      --  putenv(const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY="));
      --  info = proj_info();
      --  putenv(const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY=YES"));
      --  
      --  if (info.version[0] != '\0') {
      --  char tmpstr[64];
      --  sprintf(tmpstr, "%d.%d.%d", info.major, info.minor, info.patch);
      --  ASSERT_EQ(std::string(info.version), std::string(tmpstr));
      --  }
      --  ASSERT_NE(std::string(info.release), "");
      --  if (getenv("HOME") || getenv("PROJ_LIB")) {
      --  ASSERT_NE(std::string(info.searchpath), std::string());
      --  }
      --  
      --  ASSERT_TRUE(std::string(info.searchpath).find("/proj") !=
      --  std::string::npos);
      --  
      --  /* proj_pj_info() */
      --  {
      --  P = proj_create(PJ_DEFAULT_CTX,
      --  "+proj=august"); /* august has no inverse */
      --  auto has_inverse = proj_pj_info(P).has_inverse;
      --  proj_destroy(P);
      --  ASSERT_FALSE(has_inverse);
      --  }
      --  
      --  P = proj_create(PJ_DEFAULT_CTX, arg);
      --  pj_info = proj_pj_info(P);
      --  ASSERT_TRUE(pj_info.has_inverse);
      --  pj_shrink(arg);
      --  ASSERT_EQ(std::string(pj_info.definition), arg);
      --  ASSERT_EQ(std::string(pj_info.id), "utm");
      --  
      --  proj_destroy(P);
      --  
      --  /* proj_grid_info() */
      --  grid_info = proj_grid_info("tests/test_hgrid.tif");
      --  ASSERT_NE(std::string(grid_info.filename), "");
      --  ASSERT_EQ(std::string(grid_info.gridname), "tests/test_hgrid.tif");
      --  ASSERT_EQ(std::string(grid_info.format), "gtiff");
      --  
      --  grid_info = proj_grid_info("nonexistinggrid");
      --  ASSERT_EQ(std::string(grid_info.filename), "");
      --  
      --  // File exists, but is not a grid
      --  grid_info = proj_grid_info("proj.db");
      --  ASSERT_EQ(std::string(grid_info.filename), "");
      --  
      --  /* proj_init_info() */
      --  init_info = proj_init_info("unknowninit");
      --  ASSERT_EQ(std::string(init_info.filename), "");
      --  
      --  init_info = proj_init_info("epsg");
      --  /* Need to allow for "Unknown" until all commonly distributed EPSG-files
      --  * comes with a metadata section */
      --  ASSERT_TRUE(std::string(init_info.origin) == "EPSG" ||
      --  std::string(init_info.origin) == "Unknown")
      --  << std::string(init_info.origin);
      --  ASSERT_EQ(std::string(init_info.name), "epsg");
      --  
      --  /* test proj_rtodms() and proj_dmstor() */
      --  ASSERT_EQ(std::string("180dN"), proj_rtodms(buf, M_PI, 'N', 'S'));
      --  
      --  ASSERT_EQ(proj_dmstor(&buf[0], NULL), M_PI);
      --  
      --  ASSERT_EQ(std::string("114d35'29.612\"S"),
      --  proj_rtodms(buf, -2.0, 'N', 'S'));
      --  
      --  /* we can't expect perfect numerical accuracy so testing with a tolerance */
      --  ASSERT_NEAR(-2.0, proj_dmstor(&buf[0], NULL), 1e-7);
      --  
      --  /* test proj_derivatives_retrieve() and proj_factors_retrieve() */
      --  P = proj_create(PJ_DEFAULT_CTX, "+proj=merc +ellps=WGS84");
      --  a = proj_coord(0, 0, 0, 0);
      --  a.lp.lam = proj_torad(12);
      --  a.lp.phi = proj_torad(55);
      --  
      --  factors = proj_factors(P, a);
      --  ASSERT_FALSE(proj_errno(P)); /* factors not created correctly */
      --  
      --  /* check a few key characteristics of the Mercator projection */
      --  EXPECT_NEAR(factors.angular_distortion, 0.0, 1e-7)
      --  << factors.angular_distortion; /* angular distortion should be 0 */
      --  
      --  /* Meridian/parallel angle should be 90 deg */
      --  EXPECT_NEAR(factors.meridian_parallel_angle, M_PI_2, 1e-7)
      --  << factors.meridian_parallel_angle;
      --  
      --  EXPECT_EQ(factors.meridian_convergence,
      --  0.0); /* meridian convergence should be 0 */
      --  
      --  proj_destroy(P);
      --  
      --  /* Check that proj_list_* functions work by looping through them */
      --  size_t n = 0;
      --  for (oper_list = proj_list_operations(); oper_list->id; ++oper_list)
      --  n++;
      --  ASSERT_NE(n, 0U);
      --  
      --  n = 0;
      --  for (ellps_list = proj_list_ellps(); ellps_list->id; ++ellps_list)
      --  n++;
      --  ASSERT_NE(n, 0U);
      --  
      --  n = 0;
      --  for (unit_list = proj_list_units(); unit_list->id; ++unit_list)
      --  n++;
      --  ASSERT_NE(n, 0U);
      --  
      --  n = 0;
      --  for (pm_list = proj_list_prime_meridians(); pm_list->id; ++pm_list)
      --  n++;
      --  ASSERT_NE(n, 0U);      
   end Gie_Info_Functions;

   
   procedure Gie_Io_Predicates (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
      --  /* check io-predicates */
      --  
      --  /* angular in on fwd, linear out */
      --  auto P = proj_create(PJ_DEFAULT_CTX, "+proj=cart +ellps=GRS80");
      --  ASSERT_TRUE(P != nullptr);
      --  ASSERT_TRUE(proj_angular_input(P, PJ_FWD));
      --  ASSERT_FALSE(proj_angular_input(P, PJ_INV));
      --  ASSERT_FALSE(proj_angular_output(P, PJ_FWD));
      --  ASSERT_TRUE(proj_angular_output(P, PJ_INV));
      --  P->inverted = 1;
      --  ASSERT_FALSE(proj_angular_input(P, PJ_FWD));
      --  ASSERT_TRUE(proj_angular_input(P, PJ_INV));
      --  ASSERT_TRUE(proj_angular_output(P, PJ_FWD));
      --  ASSERT_FALSE(proj_angular_output(P, PJ_INV));
      --  proj_destroy(P);
      --  
      --  /* angular in and out */
      --  P = proj_create(PJ_DEFAULT_CTX,
      --  "+proj=molodensky +a=6378160 +rf=298.25 "
      --  "+da=-23 +df=-8.120449e-8 +dx=-134 +dy=-48 +dz=149 "
      --  "+abridged ");
      --  ASSERT_TRUE(P != nullptr);
      --  ASSERT_TRUE(proj_angular_input(P, PJ_FWD));
      --  ASSERT_TRUE(proj_angular_input(P, PJ_INV));
      --  ASSERT_TRUE(proj_angular_output(P, PJ_FWD));
      --  ASSERT_TRUE(proj_angular_output(P, PJ_INV));
      --  P->inverted = 1;
      --  ASSERT_TRUE(proj_angular_input(P, PJ_FWD));
      --  ASSERT_TRUE(proj_angular_input(P, PJ_INV));
      --  ASSERT_TRUE(proj_angular_output(P, PJ_FWD));
      --  ASSERT_TRUE(proj_angular_output(P, PJ_INV));
      --  proj_destroy(P);
      --  
      --  /* linear in and out */
      --  P = proj_create(PJ_DEFAULT_CTX,
      --  " +proj=helmert"
      --  " +x=0.0127 +y=0.0065 +z=-0.0209 +s=0.00195"
      --  " +rx=-0.00039 +ry=0.00080 +rz=-0.00114"
      --  " +dx=-0.0029 +dy=-0.0002 +dz=-0.0006 +ds=0.00001"
      --  " +drx=-0.00011 +dry=-0.00019 +drz=0.00007"
      --  " +t_epoch=1988.0 +convention=coordinate_frame");
      --  ASSERT_TRUE(P != nullptr);
      --  ASSERT_FALSE(proj_angular_input(P, PJ_FWD));
      --  ASSERT_FALSE(proj_angular_input(P, PJ_INV));
      --  ASSERT_FALSE(proj_angular_output(P, PJ_FWD));
      --  ASSERT_FALSE(proj_angular_output(P, PJ_INV));
      --  P->inverted = 1;
      --  ASSERT_FALSE(proj_angular_input(P, PJ_FWD));
      --  ASSERT_FALSE(proj_angular_input(P, PJ_INV));
      --  ASSERT_FALSE(proj_angular_output(P, PJ_FWD));
      --  ASSERT_FALSE(proj_angular_output(P, PJ_INV));
      --  
      --  /* pj_init_ctx should default to GRS80 */
      --  ASSERT_EQ(P->a, 6378137.0);
      --  ASSERT_EQ(P->f, 1.0 / 298.257222101);
      --  proj_destroy(P);
      --  
      --  /* Test that pj_fwd* and pj_inv* returns NaNs when receiving NaN input */
      --  P = proj_create(PJ_DEFAULT_CTX, "+proj=merc +ellps=WGS84");
      --  ASSERT_TRUE(P != nullptr);
      --  auto a = proj_coord(NAN, NAN, NAN, NAN);
      --  a = proj_trans(P, PJ_FWD, a);
      --  ASSERT_TRUE((std::isnan(a.v[0]) && std::isnan(a.v[1]) &&
      --  std::isnan(a.v[2]) && std::isnan(a.v[3])));
      --  
      --  a = proj_coord(NAN, NAN, NAN, NAN);
      --  a = proj_trans(P, PJ_INV, a);
      --  ASSERT_TRUE((std::isnan(a.v[0]) && std::isnan(a.v[1]) &&
      --  std::isnan(a.v[2]) && std::isnan(a.v[3])));
      --  proj_destroy(P);      
   end Gie_Io_Predicates;

   procedure Gie_Unitconvert_Selftest (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
      --  
      --  char args1[] = "+proj=unitconvert +t_in=decimalyear +t_out=decimalyear";
      --  double in1 = 2004.25;
      --  
      --  char args2[] = "+proj=unitconvert +t_in=gps_week +t_out=gps_week";
      --  double in2 = 1782.0;
      --  
      --  char args3[] = "+proj=unitconvert +t_in=mjd +t_out=mjd";
      --  double in3 = 57390.0;
      --  
      --  char args4[] = "+proj=unitconvert +t_in=gps_week +t_out=decimalyear";
      --  double in4 = 1877.71428, exp4 = 2016.0;
      --  
      --  char args5[] = "+proj=unitconvert +t_in=yyyymmdd +t_out=yyyymmdd";
      --  double in5 = 20170131;
      --  
      --  test_time(args1, 1e-6, in1, in1);
      --  test_time(args2, 1e-6, in2, in2);
      --  test_time(args3, 1e-6, in3, in3);
      --  test_time(args4, 1e-6, in4, exp4);
      --  test_time(args5, 1e-6, in5, in5);      
   end Gie_Unitconvert_Selftest;

   procedure Gie_Horner_Selftest (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
      --  
      --  PJ *P;
      --  PJ_COORD a, b, c;
      --  double dist;
      --  
      --  /* Real polynonia relating the technical coordinate system TC32 to "System
      --  * 45 Bornholm" */
      --  P = proj_create(PJ_DEFAULT_CTX, tc32_utm32);
      --  ASSERT_TRUE(P != nullptr);
      --  
      --  a = b = proj_coord(0, 0, 0, 0);
      --  a.uv.v = 6125305.4245;
      --  a.uv.u = 878354.8539;
      --  c = a;
      --  
      --  /* Check roundtrip precision for 1 iteration each way, starting in forward
      --  * direction */
      --  dist = proj_roundtrip(P, PJ_FWD, 1, &c);
      --  EXPECT_LE(dist, 0.01);
      --  proj_destroy(P);
      --  
      --  /* The complex polynomial transformation between the "System Storebaelt" and
      --  * utm32/ed50 */
      --  P = proj_create(PJ_DEFAULT_CTX, sb_utm32);
      --  ASSERT_TRUE(P != nullptr);
      --  
      --  /* Test value: utm32_ed50(620000, 6130000) = sb_ed50(495136.8544,
      --  * 6130821.2945) */
      --  a = b = c = proj_coord(0, 0, 0, 0);
      --  a.uv.v = 6130821.2945;
      --  a.uv.u = 495136.8544;
      --  c.uv.v = 6130000.0000;
      --  c.uv.u = 620000.0000;
      --  
      --  /* Forward projection */
      --  b = proj_trans(P, PJ_FWD, a);
      --  dist = proj_xy_dist(b, c);
      --  EXPECT_LE(dist, 0.001);
      --  
      --  /* Inverse projection */
      --  b = proj_trans(P, PJ_INV, c);
      --  dist = proj_xy_dist(b, a);
      --  EXPECT_LE(dist, 0.001);
      --  
      --  /* Check roundtrip precision for 1 iteration each way */
      --  dist = proj_roundtrip(P, PJ_FWD, 1, &a);
      --  EXPECT_LE(dist, 0.01);
      --  
      --  proj_destroy(P);      
   end Gie_Horner_Selftest;

   procedure Gie_Proj_Create_Crs_To_Crs_PULKOVO42_ETRS89 (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
      --  auto P = proj_create_crs_to_crs(PJ_DEFAULT_CTX, "EPSG:4179", "EPSG:4258",
      --  nullptr);
      --  ASSERT_TRUE(P != nullptr);
      --  PJ_COORD c;
      --  
      --  EXPECT_EQ(std::string(proj_pj_info(P).definition),
      --  "unavailable until proj_trans is called");
      --  EXPECT_EQ(proj_get_name(P), nullptr);
      --  EXPECT_EQ(P->fwd, nullptr);
      --  EXPECT_EQ(P->fwd3d, nullptr);
      --  EXPECT_EQ(P->fwd4d, nullptr);
      --  
      --  // get source CRS even if the P object is in a dummy state
      --  auto src_crs = proj_get_source_crs(PJ_DEFAULT_CTX, P);
      --  EXPECT_TRUE(src_crs != nullptr);
      --  EXPECT_EQ(proj_get_name(src_crs), std::string("Pulkovo 1942(58)"));
      --  proj_destroy(src_crs);
      --  
      --  // get target CRS even if the P object is in a dummy state
      --  auto target_crs = proj_get_target_crs(PJ_DEFAULT_CTX, P);
      --  EXPECT_TRUE(target_crs != nullptr);
      --  EXPECT_EQ(proj_get_name(target_crs), std::string("ETRS89"));
      --  proj_destroy(target_crs);
      --  
      --  // Romania
      --  c.xyz.x = 45; // Lat
      --  c.xyz.y = 25; // Long
      --  c.xyz.z = 0;
      --  c = proj_trans(P, PJ_FWD, c);
      --  EXPECT_NEAR(c.xy.x, 44.999701238, 1e-9);
      --  EXPECT_NEAR(c.xy.y, 24.998474948, 1e-9);
      --  EXPECT_EQ(std::string(proj_pj_info(P).definition),
      --  "proj=pipeline step proj=axisswap order=2,1 "
      --  "step proj=unitconvert xy_in=deg xy_out=rad "
      --  "step proj=push v_3 "
      --  "step proj=cart "
      --  "ellps=krass step proj=helmert x=2.3287 y=-147.0425 z=-92.0802 "
      --  "rx=0.3092483 ry=-0.32482185 rz=-0.49729934 s=5.68906266 "
      --  "convention=coordinate_frame step inv proj=cart ellps=GRS80 "
      --  "step proj=pop v_3 "
      --  "step proj=unitconvert xy_in=rad xy_out=deg step proj=axisswap "
      --  "order=2,1");
      --  
      --  c = proj_trans(P, PJ_INV, c);
      --  EXPECT_NEAR(c.xy.x, 45, 1e-8);
      --  EXPECT_NEAR(c.xy.y, 25, 1e-8);
      --  
      --  c.xyz.x = 45; // Lat
      --  c.xyz.y = 25; // Long
      --  c.xyz.z = 0;
      --  proj_trans_generic(P, PJ_FWD, &(c.xyz.x), sizeof(double), 1, &(c.xyz.y),
      --  sizeof(double), 1, &(c.xyz.z), sizeof(double), 1,
      --  nullptr, 0, 0);
      --  EXPECT_NEAR(c.xy.x, 44.999701238, 1e-9);
      --  EXPECT_NEAR(c.xy.y, 24.998474948, 1e-9);
      --  
      --  // Poland
      --  c.xyz.x = 52; // Lat
      --  c.xyz.y = 20; // Long
      --  c.xyz.z = 0;
      --  c = proj_trans(P, PJ_FWD, c);
      --  EXPECT_NEAR(c.xy.x, 51.999714150, 1e-9);
      --  EXPECT_NEAR(c.xy.y, 19.998187811, 1e-9);
      --  EXPECT_EQ(std::string(proj_pj_info(P).definition),
      --  "proj=pipeline step proj=axisswap order=2,1 "
      --  "step proj=unitconvert xy_in=deg xy_out=rad "
      --  "step proj=push v_3 "
      --  "step proj=cart "
      --  "ellps=krass step proj=helmert x=33.4 y=-146.6 z=-76.3 rx=-0.359 "
      --  "ry=-0.053 rz=0.844 s=-0.84 convention=position_vector step inv "
      --  "proj=cart ellps=GRS80 step proj=pop v_3 "
      --  "step proj=unitconvert xy_in=rad "
      --  "xy_out=deg step proj=axisswap order=2,1");
      --  
      --  proj_destroy(P);      
   end Gie_Proj_Create_Crs_To_Crs_PULKOVO42_ETRS89;

   procedure Gie_Proj_Create_Crs_To_Crs_Outside_Area_Of_Use (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
      --  
      --  // See https://github.com/OSGeo/proj.4/issues/1329
      --  auto P = proj_create_crs_to_crs(PJ_DEFAULT_CTX, "EPSG:4275", "EPSG:4807",
      --  nullptr);
      --  ASSERT_TRUE(P != nullptr);
      --  PJ_COORD c;
      --  
      --  EXPECT_EQ(P->fwd, nullptr);
      --  
      --  // Test point outside area of use of both candidate coordinate operations
      --  c.xyz.x = 58; // Lat in deg
      --  c.xyz.y = 5;  // Long in deg
      --  c.xyz.z = 0;
      --  c = proj_trans(P, PJ_FWD, c);
      --  EXPECT_NEAR(c.xy.x, 64.44444444444444, 1e-9); // Lat in grad
      --  EXPECT_NEAR(c.xy.y, 2.958634259259258, 1e-9); // Long in grad
      --  
      --  proj_destroy(P);      
   end Gie_Proj_Create_Crs_To_Crs_Outside_Area_Of_Use;

   procedure Gie_Proj_Trans_Generic (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
      --  // GDA2020 to WGS84 (G1762)
      --  auto P = proj_create(
      --  PJ_DEFAULT_CTX,
      --  "+proj=pipeline +step +proj=axisswap +order=2,1 "
      --  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
      --  "+step +proj=cart +ellps=GRS80 "
      --  "+step +proj=helmert +x=0 +y=0 +z=0 +rx=0 +ry=0 +rz=0 +s=0 +dx=0 "
      --  "+dy=0 +dz=0 +drx=-0.00150379 +dry=-0.00118346 +drz=-0.00120716 "
      --  "+ds=0 +t_epoch=2020 +convention=coordinate_frame "
      --  "+step +inv +proj=cart +ellps=WGS84 "
      --  "+step +proj=unitconvert +xy_in=rad +xy_out=deg "
      --  "+step +proj=axisswap +order=2,1");
      --  double lat = -60;
      --  double lon = 120;
      --  proj_trans_generic(P, PJ_FWD, &lat, sizeof(double), 1, &lon, sizeof(double),
      --  1, nullptr, 0, 0, nullptr, 0, 0);
      --  // Should be a no-op when the time is unknown (or equal to 2020)
      --  EXPECT_NEAR(lat, -60, 1e-9);
      --  EXPECT_NEAR(lon, 120, 1e-9);
      --  
      --  proj_destroy(P);      
   end Gie_Proj_Trans_Generic;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, Gie_Cart_Selftest'Access, "gie_cart_selftest");

      Registration.Register_Routine (Test, Gie_Info_Functions'Access, "gie_info_functions");

      Registration.Register_Routine (Test, Gie_Io_Predicates'Access, "gie_io_predicates");

      Registration.Register_Routine (Test, Gie_Unitconvert_Selftest'Access, "gie_unitconvert_selftest");

      Registration.Register_Routine (Test, Gie_Horner_Selftest'Access, "gie_horner_selftest");

      Registration.Register_Routine (Test, Gie_Proj_Create_Crs_To_Crs_PULKOVO42_ETRS89'Access, "gie_proj_create_crs_to_crs_PULKOVO42_ETRS89");

      Registration.Register_Routine (Test, Gie_Proj_Create_Crs_To_Crs_Outside_Area_Of_Use'Access, "gie_proj_create_crs_to_crs_outside_area_of_use");

      Registration.Register_Routine (Test, Gie_Proj_Trans_Generic'Access, "gie_proj_trans_generic");

   end Register_Tests;

end PROJ.Tests.Gie_Self_Tests;
