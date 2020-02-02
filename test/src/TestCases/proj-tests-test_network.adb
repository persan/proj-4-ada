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
package body PROJ.Tests.test_network is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure networking_initial_check (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  CURL *hCurlHandle = curl_easy_init();
--  if (!hCurlHandle)
--  return;
--  curl_easy_setopt(hCurlHandle, CURLOPT_URL,
--  "https://cdn.proj.org/fr_ign_ntf_r93.tif");
--  
--  curl_easy_setopt(hCurlHandle, CURLOPT_RANGE, "0-1");
--  curl_easy_setopt(hCurlHandle, CURLOPT_WRITEFUNCTION, noop_curl_write_func);
--  
--  curl_easy_perform(hCurlHandle);
--  
--  long response_code = 0;
--  curl_easy_getinfo(hCurlHandle, CURLINFO_HTTP_CODE, &response_code);
--  
--  curl_easy_cleanup(hCurlHandle);
--  
--  networkAccessOK = (response_code == 206);
--  if (!networkAccessOK) {
--  fprintf(stderr, "network access not working");
--  }      
   end networking_initial_check;

   procedure networking_basic (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=https://cdn.proj.org/fr_ign_ntf_r93.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  // network access disabled by default
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_log_func(ctx, nullptr, silent_logger);
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_EQ(P, nullptr);
--  proj_context_destroy(ctx);
--  
--  #ifdef CURL_ENABLED
--  // enable through env variable
--  ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  putenv(const_cast<char *>("PROJ_NETWORK=ON"));
--  P = proj_create(ctx, pipeline);
--  if (networkAccessOK) {
--  ASSERT_NE(P, nullptr);
--  }
--  proj_destroy(P);
--  proj_context_destroy(ctx);
--  putenv(const_cast<char *>("PROJ_NETWORK="));
--  #endif
--  
--  // still disabled
--  ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_log_func(ctx, nullptr, silent_logger);
--  P = proj_create(ctx, pipeline);
--  ASSERT_EQ(P, nullptr);
--  proj_context_destroy(ctx);
--  
--  // enable through API
--  ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  P = proj_create(ctx, pipeline);
--  #ifdef CURL_ENABLED
--  if (networkAccessOK) {
--  ASSERT_NE(P, nullptr);
--  } else {
--  ASSERT_EQ(P, nullptr);
--  proj_context_destroy(ctx);
--  return;
--  }
--  double lon = 2;
--  double lat = 49;
--  proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat, sizeof(double),
--  1, nullptr, 0, 0, nullptr, 0, 0);
--  EXPECT_NEAR(lon, 1.9992776848, 1e-10);
--  EXPECT_NEAR(lat, 48.9999322600, 1e-10);
--  
--  proj_destroy(P);
--  #else
--  ASSERT_EQ(P, nullptr);
--  #endif
--  proj_context_destroy(ctx);      
   end networking_basic;

   procedure networking_curl_invalid_resource (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  proj_log_func(ctx, nullptr, silent_logger);
--  auto P = proj_create(
--  ctx, "+proj=hgridshift +grids=https://i_do_not.exist/my.tif");
--  proj_context_destroy(ctx);
--  ASSERT_EQ(P, nullptr);      
   end networking_curl_invalid_resource;

   procedure networking_custom (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  ExchangeWithCallback exchange;
--  ASSERT_TRUE(proj_context_set_network_callbacks(ctx, open_cbk, close_cbk,
--  get_header_value_cbk,
--  read_range_cbk, &exchange));
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/my.tif";
--  event->offset = 0;
--  event->size_to_read = 16384;
--  event->response.resize(16384);
--  event->file_id = 1;
--  
--  const char *proj_source_data = getenv("PROJ_SOURCE_DATA");
--  ASSERT_TRUE(proj_source_data != nullptr);
--  std::string filename(proj_source_data);
--  filename += "/tests/egm96_15_uncompressed_truncated.tif";
--  FILE *f = fopen(filename.c_str(), "rb");
--  ASSERT_TRUE(f != nullptr);
--  ASSERT_EQ(fread(&event->response[0], 1, 956, f), 956U);
--  fclose(f);
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  auto P = proj_create(
--  ctx, "+proj=vgridshift +grids=https://foo/my.tif +multiplier=1");
--  
--  ASSERT_NE(P, nullptr);
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/my.tif";
--  event->offset = 524288;
--  event->size_to_read = 278528;
--  event->response.resize(278528);
--  event->file_id = 2;
--  float f = 1.25;
--  for (size_t i = 0; i < 278528 / sizeof(float); i++) {
--  memcpy(&event->response[i * sizeof(float)], &f, sizeof(float));
--  }
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  double lon = 2 / 180. * M_PI;
--  double lat = 49 / 180. * M_PI;
--  double z = 0;
--  ASSERT_EQ(proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat,
--  sizeof(double), 1, &z, sizeof(double), 1,
--  nullptr, 0, 0),
--  1U);
--  EXPECT_EQ(z, 1.25);
--  }
--  
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  {
--  std::unique_ptr<ReadRangeEvent> event(new ReadRangeEvent());
--  event->ctx = ctx;
--  event->offset = 3670016;
--  event->size_to_read = 278528;
--  event->response.resize(278528);
--  event->file_id = 2;
--  float f = 2.25;
--  for (size_t i = 0; i < 278528 / sizeof(float); i++) {
--  memcpy(&event->response[i * sizeof(float)], &f, sizeof(float));
--  }
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  {
--  double lon = 2 / 180. * M_PI;
--  double lat = -49 / 180. * M_PI;
--  double z = 0;
--  ASSERT_EQ(proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat,
--  sizeof(double), 1, &z, sizeof(double), 1,
--  nullptr, 0, 0),
--  1U);
--  EXPECT_EQ(z, 2.25);
--  }
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  proj_destroy(P);
--  
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  // Once again ! No network access
--  
--  P = proj_create(ctx,
--  "+proj=vgridshift +grids=https://foo/my.tif +multiplier=1");
--  ASSERT_NE(P, nullptr);
--  
--  {
--  double lon = 2 / 180. * M_PI;
--  double lat = 49 / 180. * M_PI;
--  double z = 0;
--  ASSERT_EQ(proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat,
--  sizeof(double), 1, &z, sizeof(double), 1,
--  nullptr, 0, 0),
--  1U);
--  EXPECT_EQ(z, 1.25);
--  }
--  
--  proj_destroy(P);
--  
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  proj_context_destroy(ctx);      
   end networking_custom;

   procedure networking_getfilesize (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  ExchangeWithCallback exchange;
--  ASSERT_TRUE(proj_context_set_network_callbacks(ctx, open_cbk, close_cbk,
--  get_header_value_cbk,
--  read_range_cbk, &exchange));
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/getfilesize.tif";
--  event->offset = 0;
--  event->size_to_read = 16384;
--  event->response.resize(16384);
--  event->file_id = 1;
--  
--  const char *proj_source_data = getenv("PROJ_SOURCE_DATA");
--  ASSERT_TRUE(proj_source_data != nullptr);
--  std::string filename(proj_source_data);
--  filename += "/tests/test_vgrid_single_strip_truncated.tif";
--  FILE *f = fopen(filename.c_str(), "rb");
--  ASSERT_TRUE(f != nullptr);
--  ASSERT_EQ(fread(&event->response[0], 1, 550, f), 550U);
--  fclose(f);
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes 0-16383/4153510";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  auto P = proj_create(
--  ctx,
--  "+proj=vgridshift +grids=https://foo/getfilesize.tif +multiplier=1");
--  
--  ASSERT_NE(P, nullptr);
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  proj_destroy(P);
--  
--  P = proj_create(
--  ctx,
--  "+proj=vgridshift +grids=https://foo/getfilesize.tif +multiplier=1");
--  
--  ASSERT_NE(P, nullptr);
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  proj_destroy(P);
--  
--  proj_context_destroy(ctx);      
   end networking_getfilesize;

   procedure networking_simul_open_error (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_log_func(ctx, nullptr, silent_logger);
--  proj_context_set_enable_network(ctx, true);
--  ExchangeWithCallback exchange;
--  ASSERT_TRUE(proj_context_set_network_callbacks(ctx, open_cbk, close_cbk,
--  get_header_value_cbk,
--  read_range_cbk, &exchange));
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/open_error.tif";
--  event->offset = 0;
--  event->size_to_read = 16384;
--  event->errorMsg = "Cannot open file";
--  event->file_id = 1;
--  
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  auto P = proj_create(
--  ctx,
--  "+proj=vgridshift +grids=https://foo/open_error.tif +multiplier=1");
--  
--  ASSERT_EQ(P, nullptr);
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  proj_context_destroy(ctx);      
   end networking_simul_open_error;

   procedure networking_simul_read_range_error (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  ExchangeWithCallback exchange;
--  ASSERT_TRUE(proj_context_set_network_callbacks(ctx, open_cbk, close_cbk,
--  get_header_value_cbk,
--  read_range_cbk, &exchange));
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/read_range_error.tif";
--  event->offset = 0;
--  event->size_to_read = 16384;
--  event->response.resize(16384);
--  event->file_id = 1;
--  
--  const char *proj_source_data = getenv("PROJ_SOURCE_DATA");
--  ASSERT_TRUE(proj_source_data != nullptr);
--  std::string filename(proj_source_data);
--  filename += "/tests/egm96_15_uncompressed_truncated.tif";
--  FILE *f = fopen(filename.c_str(), "rb");
--  ASSERT_TRUE(f != nullptr);
--  ASSERT_EQ(fread(&event->response[0], 1, 956, f), 956U);
--  fclose(f);
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  auto P = proj_create(ctx, "+proj=vgridshift "
--  "+grids=https://foo/read_range_error.tif "
--  "+multiplier=1");
--  
--  ASSERT_NE(P, nullptr);
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/read_range_error.tif";
--  event->offset = 524288;
--  event->size_to_read = 278528;
--  event->response.resize(278528);
--  event->file_id = 2;
--  float f = 1.25;
--  for (size_t i = 0; i < 278528 / sizeof(float); i++) {
--  memcpy(&event->response[i * sizeof(float)], &f, sizeof(float));
--  }
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  {
--  double lon = 2 / 180. * M_PI;
--  double lat = 49 / 180. * M_PI;
--  double z = 0;
--  ASSERT_EQ(proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat,
--  sizeof(double), 1, &z, sizeof(double), 1,
--  nullptr, 0, 0),
--  1U);
--  EXPECT_EQ(z, 1.25);
--  }
--  
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  {
--  std::unique_ptr<ReadRangeEvent> event(new ReadRangeEvent());
--  event->ctx = ctx;
--  event->offset = 3670016;
--  event->size_to_read = 278528;
--  event->errorMsg = "read range error";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  {
--  double lon = 2 / 180. * M_PI;
--  double lat = -49 / 180. * M_PI;
--  double z = 0;
--  proj_log_func(ctx, nullptr, silent_logger);
--  ASSERT_EQ(proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat,
--  sizeof(double), 1, &z, sizeof(double), 1,
--  nullptr, 0, 0),
--  1U);
--  EXPECT_EQ(z, HUGE_VAL);
--  }
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  proj_destroy(P);
--  
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  proj_context_destroy(ctx);      
   end networking_simul_read_range_error;

   procedure networking_simul_file_change_while_opened (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  ExchangeWithCallback exchange;
--  ASSERT_TRUE(proj_context_set_network_callbacks(ctx, open_cbk, close_cbk,
--  get_header_value_cbk,
--  read_range_cbk, &exchange));
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/file_change_while_opened.tif";
--  event->offset = 0;
--  event->size_to_read = 16384;
--  event->response.resize(16384);
--  event->file_id = 1;
--  
--  const char *proj_source_data = getenv("PROJ_SOURCE_DATA");
--  ASSERT_TRUE(proj_source_data != nullptr);
--  std::string filename(proj_source_data);
--  filename += "/tests/egm96_15_uncompressed_truncated.tif";
--  FILE *f = fopen(filename.c_str(), "rb");
--  ASSERT_TRUE(f != nullptr);
--  ASSERT_EQ(fread(&event->response[0], 1, 956, f), 956U);
--  fclose(f);
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 1;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  auto P = proj_create(ctx, "+proj=vgridshift "
--  "+grids=https://foo/file_change_while_opened.tif "
--  "+multiplier=1");
--  
--  ASSERT_NE(P, nullptr);
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/file_change_while_opened.tif";
--  event->offset = 524288;
--  event->size_to_read = 278528;
--  event->response.resize(278528);
--  event->file_id = 2;
--  float f = 1.25;
--  for (size_t i = 0; i < 278528 / sizeof(float); i++) {
--  memcpy(&event->response[i * sizeof(float)], &f, sizeof(float));
--  }
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date CHANGED!!!!";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 2;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<OpenEvent> event(new OpenEvent());
--  event->ctx = ctx;
--  event->url = "https://foo/file_change_while_opened.tif";
--  event->offset = 0;
--  event->size_to_read = 16384;
--  event->response.resize(16384);
--  event->file_id = 3;
--  
--  const char *proj_source_data = getenv("PROJ_SOURCE_DATA");
--  ASSERT_TRUE(proj_source_data != nullptr);
--  std::string filename(proj_source_data);
--  filename += "/tests/egm96_15_uncompressed_truncated.tif";
--  FILE *f = fopen(filename.c_str(), "rb");
--  ASSERT_TRUE(f != nullptr);
--  ASSERT_EQ(fread(&event->response[0], 1, 956, f), 956U);
--  fclose(f);
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Content-Range";
--  event->value = "bytes=0-16383/10000000";
--  event->file_id = 3;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "Last-Modified";
--  event->value = "some_date CHANGED!!!!";
--  event->file_id = 3;
--  exchange.events.emplace_back(std::move(event));
--  }
--  {
--  std::unique_ptr<GetHeaderValueEvent> event(new GetHeaderValueEvent());
--  event->ctx = ctx;
--  event->key = "ETag";
--  event->value = "some_etag";
--  event->file_id = 3;
--  exchange.events.emplace_back(std::move(event));
--  }
--  
--  {
--  double lon = 2 / 180. * M_PI;
--  double lat = 49 / 180. * M_PI;
--  double z = 0;
--  ASSERT_EQ(proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat,
--  sizeof(double), 1, &z, sizeof(double), 1,
--  nullptr, 0, 0),
--  1U);
--  EXPECT_EQ(z, 1.25);
--  }
--  
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  {
--  std::unique_ptr<CloseEvent> event(new CloseEvent());
--  event->ctx = ctx;
--  event->file_id = 3;
--  exchange.events.emplace_back(std::move(event));
--  }
--  proj_destroy(P);
--  
--  ASSERT_TRUE(exchange.allConsumedAndNoError());
--  
--  proj_context_destroy(ctx);      
   end networking_simul_file_change_while_opened;

   procedure networking_curl_hgridshift (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  
--  // NAD83 to NAD83(HARN) in West-Virginia. Using wvhpgn.tif
--  auto P = proj_create_crs_to_crs(ctx, "EPSG:4269", "EPSG:4152", nullptr);
--  ASSERT_NE(P, nullptr);
--  
--  PJ_COORD c;
--  c.xyz.x = 40;  // lat
--  c.xyz.y = -80; // lon
--  c.xyz.z = 0;
--  c = proj_trans(P, PJ_FWD, c);
--  
--  proj_assign_context(P, ctx); // (dummy) test context reassignment
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);
--  
--  EXPECT_NEAR(c.xyz.x, 39.99999839, 1e-8);
--  EXPECT_NEAR(c.xyz.y, -79.99999807, 1e-8);
--  EXPECT_NEAR(c.xyz.z, 0, 1e-2);      
   end networking_curl_hgridshift;

   procedure networking_curl_vgridshift (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  
--  // WGS84 to EGM2008 height. Using egm08_25.tif
--  auto P =
--  proj_create_crs_to_crs(ctx, "EPSG:4326", "EPSG:4326+3855", nullptr);
--  ASSERT_NE(P, nullptr);
--  
--  PJ_COORD c;
--  c.xyz.x = -30; // lat
--  c.xyz.y = 150; // lon
--  c.xyz.z = 0;
--  c = proj_trans(P, PJ_FWD, c);
--  
--  proj_assign_context(P, ctx); // (dummy) test context reassignment
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);
--  
--  EXPECT_NEAR(c.xyz.x, -30, 1e-8);
--  EXPECT_NEAR(c.xyz.y, 150, 1e-8);
--  EXPECT_NEAR(c.xyz.z, -31.89, 1e-2);      
   end networking_curl_vgridshift;

   procedure networking_curl_vgridshift_vertcon (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  
--  // NGVD29 to NAVD88 height. Using vertcone.tif
--  auto P = proj_create_crs_to_crs(ctx, "EPSG:4269+7968", "EPSG:4269+5703",
--  nullptr);
--  ASSERT_NE(P, nullptr);
--  
--  PJ_COORD c;
--  c.xyz.x = 40;  // lat
--  c.xyz.y = -80; // lon
--  c.xyz.z = 0;
--  c = proj_trans(P, PJ_FWD, c);
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);
--  
--  EXPECT_NEAR(c.xyz.x, 40, 1e-8);
--  EXPECT_NEAR(c.xyz.y, -80, 1e-8);
--  EXPECT_NEAR(c.xyz.z, -0.15, 1e-2);      
   end networking_curl_vgridshift_vertcon;

   procedure networking_network_endpoint_env_variable (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  putenv(const_cast<char *>("PROJ_NETWORK_ENDPOINT=http://0.0.0.0/"));
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  
--  // NAD83 to NAD83(HARN) in West-Virginia. Using wvhpgn.tif
--  auto P = proj_create_crs_to_crs(ctx, "EPSG:4269", "EPSG:4152", nullptr);
--  ASSERT_NE(P, nullptr);
--  
--  PJ_COORD c;
--  c.xyz.x = 40;  // lat
--  c.xyz.y = -80; // lon
--  c.xyz.z = 0;
--  c = proj_trans(P, PJ_FWD, c);
--  putenv(const_cast<char *>("PROJ_NETWORK_ENDPOINT="));
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);
--  
--  EXPECT_EQ(c.xyz.x, HUGE_VAL);      
   end networking_network_endpoint_env_variable;

   procedure networking_network_endpoint_api (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  auto ctx = proj_context_create();
--  proj_grid_cache_set_enable(ctx, false);
--  proj_context_set_enable_network(ctx, true);
--  proj_context_set_url_endpoint(ctx, "http://0.0.0.0");
--  
--  // NAD83 to NAD83(HARN) in West-Virginia. Using wvhpgn.tif
--  auto P = proj_create_crs_to_crs(ctx, "EPSG:4269", "EPSG:4152", nullptr);
--  ASSERT_NE(P, nullptr);
--  
--  PJ_COORD c;
--  c.xyz.x = 40;  // lat
--  c.xyz.y = -80; // lon
--  c.xyz.z = 0;
--  c = proj_trans(P, PJ_FWD, c);
--  
--  proj_destroy(P);
--  proj_context_destroy(ctx);
--  
--  EXPECT_EQ(c.xyz.x, HUGE_VAL);      
   end networking_network_endpoint_api;

   procedure networking_cache_basic (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  
--  proj_cleanup();
--  
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=https://cdn.proj.org/fr_ign_ntf_r93.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  auto ctx = proj_context_create();
--  proj_context_set_enable_network(ctx, true);
--  
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  proj_destroy(P);
--  
--  EXPECT_TRUE(!pj_context_get_grid_cache_filename(ctx).empty());
--  
--  sqlite3 *hDB = nullptr;
--  sqlite3_open_v2(pj_context_get_grid_cache_filename(ctx).c_str(), &hDB,
--  SQLITE_OPEN_READONLY, nullptr);
--  ASSERT_NE(hDB, nullptr);
--  sqlite3_stmt *hStmt = nullptr;
--  sqlite3_prepare_v2(hDB, "SELECT url, offset FROM chunks WHERE id = ("
--  "SELECT chunk_id FROM linked_chunks WHERE id = ("
--  "SELECT head FROM linked_chunks_head_tail))",
--  -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_ROW);
--  const char *url =
--  reinterpret_cast<const char *>(sqlite3_column_text(hStmt, 0));
--  ASSERT_NE(url, nullptr);
--  ASSERT_EQ(std::string(url), "https://cdn.proj.org/fr_ign_ntf_r93.tif");
--  ASSERT_EQ(sqlite3_column_int64(hStmt, 1), 0);
--  sqlite3_finalize(hStmt);
--  sqlite3_close(hDB);
--  
--  proj_cleanup();
--  
--  // Check that a second access doesn't trigger any network activity
--  ASSERT_TRUE(proj_context_set_network_callbacks(
--  ctx, dummy_open_cbk, dummy_close_cbk, dummy_get_header_value_cbk,
--  dummy_read_range_cbk, nullptr));
--  P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  proj_destroy(P);
--  
--  proj_context_destroy(ctx);      
   end networking_cache_basic;

   procedure networking_proj_grid_cache_clear (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=https://cdn.proj.org/fr_ign_ntf_r93.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  proj_cleanup();
--  
--  auto ctx = proj_context_create();
--  proj_context_set_enable_network(ctx, true);
--  proj_grid_cache_set_filename(ctx, "tmp_proj_db_cache.db");
--  EXPECT_EQ(pj_context_get_grid_cache_filename(ctx),
--  std::string("tmp_proj_db_cache.db"));
--  
--  proj_grid_cache_clear(ctx);
--  
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  proj_destroy(P);
--  
--  // Check that the file exists
--  {
--  sqlite3 *hDB = nullptr;
--  ASSERT_EQ(
--  sqlite3_open_v2(pj_context_get_grid_cache_filename(ctx).c_str(),
--  &hDB, SQLITE_OPEN_READONLY, nullptr),
--  SQLITE_OK);
--  sqlite3_close(hDB);
--  }
--  
--  proj_grid_cache_clear(ctx);
--  
--  // Check that the file no longer exists
--  {
--  sqlite3 *hDB = nullptr;
--  ASSERT_NE(
--  sqlite3_open_v2(pj_context_get_grid_cache_filename(ctx).c_str(),
--  &hDB, SQLITE_OPEN_READONLY, nullptr),
--  SQLITE_OK);
--  sqlite3_close(hDB);
--  }
--  
--  proj_context_destroy(ctx);      
   end networking_proj_grid_cache_clear;

   procedure networking_cache_saturation (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=https://cdn.proj.org/fr_ign_ntf_r93.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  proj_cleanup();
--  
--  auto ctx = proj_context_create();
--  proj_context_set_enable_network(ctx, true);
--  proj_grid_cache_set_filename(ctx, "tmp_proj_db_cache.db");
--  
--  proj_grid_cache_clear(ctx);
--  
--  // Limit to two chunks
--  putenv(const_cast<char *>("PROJ_GRID_CACHE_MAX_SIZE_BYTES=32768"));
--  proj_grid_cache_set_max_size(ctx, 0);
--  putenv(const_cast<char *>("PROJ_GRID_CACHE_MAX_SIZE_BYTES="));
--  
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  
--  double lon = 2;
--  double lat = 49;
--  proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat, sizeof(double),
--  1, nullptr, 0, 0, nullptr, 0, 0);
--  EXPECT_NEAR(lon, 1.9992776848, 1e-10);
--  EXPECT_NEAR(lat, 48.9999322600, 1e-10);
--  
--  proj_destroy(P);
--  
--  sqlite3 *hDB = nullptr;
--  sqlite3_open_v2(pj_context_get_grid_cache_filename(ctx).c_str(), &hDB,
--  SQLITE_OPEN_READONLY, nullptr);
--  ASSERT_NE(hDB, nullptr);
--  
--  sqlite3_stmt *hStmt = nullptr;
--  sqlite3_prepare_v2(hDB, "SELECT COUNT(*) FROM chunk_data UNION ALL "
--  "SELECT COUNT(*) FROM chunks UNION ALL "
--  "SELECT COUNT(*) FROM linked_chunks",
--  -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_ROW);
--  ASSERT_EQ(sqlite3_column_int64(hStmt, 0), 2);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_ROW);
--  ASSERT_EQ(sqlite3_column_int64(hStmt, 0), 2);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_ROW);
--  ASSERT_EQ(sqlite3_column_int64(hStmt, 0), 2);
--  sqlite3_finalize(hStmt);
--  sqlite3_close(hDB);
--  
--  proj_grid_cache_clear(ctx);
--  
--  proj_context_destroy(ctx);      
   end networking_cache_saturation;

   procedure networking_cache_ttl (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=https://cdn.proj.org/fr_ign_ntf_r93.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  proj_cleanup();
--  
--  auto ctx = proj_context_create();
--  proj_context_set_enable_network(ctx, true);
--  proj_grid_cache_set_filename(ctx, "tmp_proj_db_cache.db");
--  
--  proj_grid_cache_clear(ctx);
--  
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  
--  double lon = 2;
--  double lat = 49;
--  proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat, sizeof(double),
--  1, nullptr, 0, 0, nullptr, 0, 0);
--  EXPECT_NEAR(lon, 1.9992776848, 1e-10);
--  EXPECT_NEAR(lat, 48.9999322600, 1e-10);
--  
--  proj_destroy(P);
--  
--  sqlite3 *hDB = nullptr;
--  sqlite3_open_v2(pj_context_get_grid_cache_filename(ctx).c_str(), &hDB,
--  SQLITE_OPEN_READWRITE, nullptr);
--  ASSERT_NE(hDB, nullptr);
--  
--  // Force lastChecked to the Epoch so that data is expired.
--  sqlite3_stmt *hStmt = nullptr;
--  sqlite3_prepare_v2(hDB, "UPDATE properties SET lastChecked = 0, "
--  "lastModified = 'foo', etag = 'bar'",
--  -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_DONE);
--  sqlite3_finalize(hStmt);
--  
--  // Put junk in already cached data to check that we will refresh it.
--  hStmt = nullptr;
--  sqlite3_prepare_v2(hDB, "UPDATE chunk_data SET data = zeroblob(16384)", -1,
--  &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_DONE);
--  sqlite3_finalize(hStmt);
--  sqlite3_close(hDB);
--  
--  proj_cleanup();
--  
--  // Set a never expire ttl
--  proj_grid_cache_set_ttl(ctx, -1);
--  
--  // We'll get junk data, hence the pipeline initialization fails
--  proj_log_func(ctx, nullptr, silent_logger);
--  P = proj_create(ctx, pipeline);
--  ASSERT_EQ(P, nullptr);
--  proj_destroy(P);
--  
--  proj_cleanup();
--  
--  // Set a normal ttl
--  proj_grid_cache_set_ttl(ctx, 86400);
--  
--  // Pipeline creation succeeds
--  P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  proj_destroy(P);
--  
--  hDB = nullptr;
--  sqlite3_open_v2(pj_context_get_grid_cache_filename(ctx).c_str(), &hDB,
--  SQLITE_OPEN_READWRITE, nullptr);
--  ASSERT_NE(hDB, nullptr);
--  hStmt = nullptr;
--  sqlite3_prepare_v2(hDB,
--  "SELECT lastChecked, lastModified, etag FROM properties",
--  -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_ROW);
--  ASSERT_NE(sqlite3_column_int64(hStmt, 0), 0);
--  ASSERT_NE(sqlite3_column_text(hStmt, 1), nullptr);
--  ASSERT_NE(std::string(reinterpret_cast<const char *>(
--  sqlite3_column_text(hStmt, 1))),
--  "foo");
--  ASSERT_NE(sqlite3_column_text(hStmt, 2), nullptr);
--  ASSERT_NE(std::string(reinterpret_cast<const char *>(
--  sqlite3_column_text(hStmt, 2))),
--  "bar");
--  sqlite3_finalize(hStmt);
--  sqlite3_close(hDB);
--  
--  proj_grid_cache_clear(ctx);
--  
--  proj_context_destroy(ctx);      
   end networking_cache_ttl;

   procedure networking_cache_lock (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=hgridshift +grids=https://cdn.proj.org/fr_ign_ntf_r93.tif "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  proj_cleanup();
--  
--  auto ctx = proj_context_create();
--  proj_context_set_enable_network(ctx, true);
--  proj_grid_cache_set_filename(ctx, "tmp_proj_db_cache.db");
--  
--  proj_grid_cache_clear(ctx);
--  
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  
--  double lon = 2;
--  double lat = 49;
--  proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat, sizeof(double),
--  1, nullptr, 0, 0, nullptr, 0, 0);
--  EXPECT_NEAR(lon, 1.9992776848, 1e-10);
--  EXPECT_NEAR(lat, 48.9999322600, 1e-10);
--  
--  proj_destroy(P);
--  
--  // Take a lock
--  sqlite3 *hDB = nullptr;
--  sqlite3_open_v2(pj_context_get_grid_cache_filename(ctx).c_str(), &hDB,
--  SQLITE_OPEN_READWRITE, nullptr);
--  ASSERT_NE(hDB, nullptr);
--  sqlite3_stmt *hStmt = nullptr;
--  sqlite3_prepare_v2(hDB, "BEGIN EXCLUSIVE", -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_DONE);
--  sqlite3_finalize(hStmt);
--  
--  proj_cleanup();
--  
--  time_t start;
--  time(&start);
--  // 2 lock attempts, so we must sleep for each at least 0.5 ms
--  putenv(const_cast<char *>("PROJ_LOCK_MAX_ITERS=25"));
--  P = proj_create(ctx, pipeline);
--  putenv(const_cast<char *>("PROJ_LOCK_MAX_ITERS="));
--  ASSERT_NE(P, nullptr);
--  proj_destroy(P);
--  
--  // Check that we have spend more than 1 sec
--  time_t end;
--  time(&end);
--  ASSERT_GE(end - start, 1U);
--  
--  sqlite3_close(hDB);
--  
--  proj_grid_cache_clear(ctx);
--  
--  proj_context_destroy(ctx);      
   end networking_cache_lock;

   procedure networking_download_whole_files (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  
--  proj_cleanup();
--  unlink("proj_test_tmp/cache.db");
--  unlink("proj_test_tmp/dk_sdfe_dvr90.tif");
--  rmdir("proj_test_tmp");
--  
--  putenv(const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY="));
--  putenv(const_cast<char *>("PROJ_USER_WRITABLE_DIRECTORY=./proj_test_tmp"));
--  putenv(const_cast<char *>("PROJ_FULL_FILE_CHUNK_SIZE=100000"));
--  auto ctx = proj_context_create();
--  proj_context_set_enable_network(ctx, true);
--  
--  ASSERT_TRUE(proj_is_download_needed(ctx, "dk_sdfe_dvr90.tif", false));
--  
--  ASSERT_TRUE(
--  proj_download_file(ctx, "dk_sdfe_dvr90.tif", false, nullptr, nullptr));
--  
--  FILE *f = fopen("proj_test_tmp/dk_sdfe_dvr90.tif", "rb");
--  ASSERT_NE(f, nullptr);
--  fclose(f);
--  
--  proj_context_set_enable_network(ctx, false);
--  
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=vgridshift +grids=dk_sdfe_dvr90.tif +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  
--  double lon = 12;
--  double lat = 56;
--  double z = 0;
--  proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat, sizeof(double),
--  1, &z, sizeof(double), 1, nullptr, 0, 0);
--  EXPECT_NEAR(z, 36.5909996032715, 1e-10);
--  proj_destroy(P);
--  
--  proj_context_set_enable_network(ctx, true);
--  
--  ASSERT_FALSE(proj_is_download_needed(ctx, "dk_sdfe_dvr90.tif", false));
--  
--  {
--  sqlite3 *hDB = nullptr;
--  sqlite3_open_v2("proj_test_tmp/cache.db", &hDB, SQLITE_OPEN_READWRITE,
--  nullptr);
--  ASSERT_NE(hDB, nullptr);
--  // Force lastChecked to the Epoch so that data is expired.
--  sqlite3_stmt *hStmt = nullptr;
--  sqlite3_prepare_v2(
--  hDB, "UPDATE downloaded_file_properties SET lastChecked = 0", -1,
--  &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_DONE);
--  sqlite3_finalize(hStmt);
--  sqlite3_close(hDB);
--  }
--  
--  // If we ignore TTL settings, then no network access will be done
--  ASSERT_FALSE(proj_is_download_needed(ctx, "dk_sdfe_dvr90.tif", true));
--  
--  {
--  sqlite3 *hDB = nullptr;
--  sqlite3_open_v2("proj_test_tmp/cache.db", &hDB, SQLITE_OPEN_READWRITE,
--  nullptr);
--  ASSERT_NE(hDB, nullptr);
--  // Check that the lastChecked timestamp is still 0
--  sqlite3_stmt *hStmt = nullptr;
--  sqlite3_prepare_v2(hDB,
--  "SELECT lastChecked FROM downloaded_file_properties",
--  -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_ROW);
--  ASSERT_EQ(sqlite3_column_int64(hStmt, 0), 0);
--  sqlite3_finalize(hStmt);
--  sqlite3_close(hDB);
--  }
--  
--  // Should recheck from the CDN, update last_checked and do nothing
--  ASSERT_FALSE(proj_is_download_needed(ctx, "dk_sdfe_dvr90.tif", false));
--  
--  {
--  sqlite3 *hDB = nullptr;
--  sqlite3_open_v2("proj_test_tmp/cache.db", &hDB, SQLITE_OPEN_READWRITE,
--  nullptr);
--  ASSERT_NE(hDB, nullptr);
--  sqlite3_stmt *hStmt = nullptr;
--  // Check that the lastChecked timestamp has been updated
--  sqlite3_prepare_v2(hDB,
--  "SELECT lastChecked FROM downloaded_file_properties",
--  -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_ROW);
--  ASSERT_NE(sqlite3_column_int64(hStmt, 0), 0);
--  sqlite3_finalize(hStmt);
--  hStmt = nullptr;
--  
--  // Now invalid lastModified. This should trigger a new download
--  sqlite3_prepare_v2(
--  hDB, "UPDATE downloaded_file_properties SET lastChecked = 0, "
--  "lastModified = 'foo'",
--  -1, &hStmt, nullptr);
--  ASSERT_NE(hStmt, nullptr);
--  ASSERT_EQ(sqlite3_step(hStmt), SQLITE_DONE);
--  sqlite3_finalize(hStmt);
--  sqlite3_close(hDB);
--  }
--  
--  ASSERT_TRUE(proj_is_download_needed(ctx, "dk_sdfe_dvr90.tif", false));
--  
--  // Redo download with a progress callback this time.
--  unlink("proj_test_tmp/dk_sdfe_dvr90.tif");
--  
--  const auto cbk = [](PJ_CONTEXT *l_ctx, double pct, void *user_data) -> int {
--  auto vect = static_cast<std::vector<std::pair<PJ_CONTEXT *, double>> *>(
--  user_data);
--  vect->push_back(std::pair<PJ_CONTEXT *, double>(l_ctx, pct));
--  return true;
--  };
--  
--  std::vector<std::pair<PJ_CONTEXT *, double>> vectPct;
--  ASSERT_TRUE(
--  proj_download_file(ctx, "dk_sdfe_dvr90.tif", false, cbk, &vectPct));
--  ASSERT_EQ(vectPct.size(), 3U);
--  ASSERT_EQ(vectPct.back().first, ctx);
--  ASSERT_EQ(vectPct.back().second, 1.0);
--  
--  proj_context_destroy(ctx);
--  putenv(const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY=YES"));
--  putenv(const_cast<char *>("PROJ_USER_WRITABLE_DIRECTORY="));
--  putenv(const_cast<char *>("PROJ_FULL_FILE_CHUNK_SIZE="));
--  unlink("proj_test_tmp/cache.db");
--  unlink("proj_test_tmp/dk_sdfe_dvr90.tif");
--  rmdir("proj_test_tmp");      
   end networking_download_whole_files;

   procedure networking_file_api (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  if (!networkAccessOK) {
--  return;
--  }
--  
--  proj_cleanup();
--  unlink("proj_test_tmp/cache.db");
--  unlink("proj_test_tmp/dk_sdfe_dvr90.tif");
--  rmdir("proj_test_tmp");
--  
--  putenv(const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY="));
--  putenv(const_cast<char *>("PROJ_USER_WRITABLE_DIRECTORY=./proj_test_tmp"));
--  putenv(const_cast<char *>("PROJ_FULL_FILE_CHUNK_SIZE=30000"));
--  auto ctx = proj_context_create();
--  proj_context_set_enable_network(ctx, true);
--  
--  struct UserData {
--  bool in_open = false;
--  bool in_read = false;
--  bool in_write = false;
--  bool in_seek = false;
--  bool in_tell = false;
--  bool in_close = false;
--  bool in_exists = false;
--  bool in_mkdir = false;
--  bool in_unlink = false;
--  bool in_rename = false;
--  };
--  
--  struct PROJ_FILE_API api;
--  api.version = 1;
--  api.open_cbk = [](PJ_CONTEXT *, const char *filename,
--  PROJ_OPEN_ACCESS access,
--  void *user_data) -> PROJ_FILE_HANDLE * {
--  static_cast<UserData *>(user_data)->in_open = true;
--  return reinterpret_cast<PROJ_FILE_HANDLE *>(fopen(
--  filename,
--  access == PROJ_OPEN_ACCESS_READ_ONLY
--  ? "rb"
--  : access == PROJ_OPEN_ACCESS_READ_UPDATE ? "r+b" : "w+b"));
--  };
--  api.read_cbk = [](PJ_CONTEXT *, PROJ_FILE_HANDLE *handle, void *buffer,
--  size_t sizeBytes, void *user_data) -> size_t {
--  static_cast<UserData *>(user_data)->in_read = true;
--  return fread(buffer, 1, sizeBytes, reinterpret_cast<FILE *>(handle));
--  };
--  api.write_cbk = [](PJ_CONTEXT *, PROJ_FILE_HANDLE *handle,
--  const void *buffer, size_t sizeBytes,
--  void *user_data) -> size_t {
--  static_cast<UserData *>(user_data)->in_write = true;
--  return fwrite(buffer, 1, sizeBytes, reinterpret_cast<FILE *>(handle));
--  };
--  api.seek_cbk = [](PJ_CONTEXT *, PROJ_FILE_HANDLE *handle, long long offset,
--  int whence, void *user_data) -> int {
--  static_cast<UserData *>(user_data)->in_seek = true;
--  return fseek(reinterpret_cast<FILE *>(handle),
--  static_cast<long>(offset), whence) == 0;
--  };
--  api.tell_cbk = [](PJ_CONTEXT *, PROJ_FILE_HANDLE *handle,
--  void *user_data) -> unsigned long long {
--  static_cast<UserData *>(user_data)->in_tell = true;
--  return ftell(reinterpret_cast<FILE *>(handle));
--  };
--  api.close_cbk = [](PJ_CONTEXT *, PROJ_FILE_HANDLE *handle,
--  void *user_data) -> void {
--  static_cast<UserData *>(user_data)->in_close = true;
--  fclose(reinterpret_cast<FILE *>(handle));
--  };
--  api.exists_cbk = [](PJ_CONTEXT *, const char *filename,
--  void *user_data) -> int {
--  static_cast<UserData *>(user_data)->in_exists = true;
--  struct stat buf;
--  return stat(filename, &buf) == 0;
--  };
--  api.mkdir_cbk = [](PJ_CONTEXT *, const char *filename,
--  void *user_data) -> int {
--  static_cast<UserData *>(user_data)->in_mkdir = true;
--  #ifdef _WIN32
--  return mkdir(filename) == 0;
--  #else
--  return mkdir(filename, 0755) == 0;
--  #endif
--  };
--  api.unlink_cbk = [](PJ_CONTEXT *, const char *filename,
--  void *user_data) -> int {
--  static_cast<UserData *>(user_data)->in_unlink = true;
--  return unlink(filename) == 0;
--  };
--  api.rename_cbk = [](PJ_CONTEXT *, const char *oldPath, const char *newPath,
--  void *user_data) -> int {
--  static_cast<UserData *>(user_data)->in_rename = true;
--  return rename(oldPath, newPath) == 0;
--  };
--  
--  UserData userData;
--  ASSERT_TRUE(proj_context_set_fileapi(ctx, &api, &userData));
--  
--  ASSERT_TRUE(proj_is_download_needed(ctx, "dk_sdfe_dvr90.tif", false));
--  
--  ASSERT_TRUE(
--  proj_download_file(ctx, "dk_sdfe_dvr90.tif", false, nullptr, nullptr));
--  
--  ASSERT_TRUE(userData.in_open);
--  ASSERT_FALSE(userData.in_read);
--  ASSERT_TRUE(userData.in_write);
--  ASSERT_TRUE(userData.in_close);
--  ASSERT_TRUE(userData.in_exists);
--  ASSERT_TRUE(userData.in_mkdir);
--  ASSERT_TRUE(userData.in_unlink);
--  ASSERT_TRUE(userData.in_rename);
--  
--  proj_context_set_enable_network(ctx, false);
--  
--  const char *pipeline =
--  "+proj=pipeline "
--  "+step +proj=unitconvert +xy_in=deg +xy_out=rad "
--  "+step +proj=vgridshift +grids=dk_sdfe_dvr90.tif +multiplier=1 "
--  "+step +proj=unitconvert +xy_in=rad +xy_out=deg";
--  
--  auto P = proj_create(ctx, pipeline);
--  ASSERT_NE(P, nullptr);
--  
--  double lon = 12;
--  double lat = 56;
--  double z = 0;
--  proj_trans_generic(P, PJ_FWD, &lon, sizeof(double), 1, &lat, sizeof(double),
--  1, &z, sizeof(double), 1, nullptr, 0, 0);
--  EXPECT_NEAR(z, 36.5909996032715, 1e-10);
--  
--  proj_destroy(P);
--  
--  ASSERT_TRUE(userData.in_read);
--  ASSERT_TRUE(userData.in_seek);
--  
--  proj_context_destroy(ctx);
--  putenv(const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY=YES"));
--  putenv(const_cast<char *>("PROJ_USER_WRITABLE_DIRECTORY="));
--  putenv(const_cast<char *>("PROJ_FULL_FILE_CHUNK_SIZE="));
--  unlink("proj_test_tmp/cache.db");
--  unlink("proj_test_tmp/dk_sdfe_dvr90.tif");
--  rmdir("proj_test_tmp");      
   end networking_file_api;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, networking_initial_check'Access, "networking_initial_check");

      Registration.Register_Routine (Test, networking_basic'Access, "networking_basic");

      Registration.Register_Routine (Test, networking_curl_invalid_resource'Access, "networking_curl_invalid_resource");

      Registration.Register_Routine (Test, networking_custom'Access, "networking_custom");

      Registration.Register_Routine (Test, networking_getfilesize'Access, "networking_getfilesize");

      Registration.Register_Routine (Test, networking_simul_open_error'Access, "networking_simul_open_error");

      Registration.Register_Routine (Test, networking_simul_read_range_error'Access, "networking_simul_read_range_error");

      Registration.Register_Routine (Test, networking_simul_file_change_while_opened'Access, "networking_simul_file_change_while_opened");

      Registration.Register_Routine (Test, networking_curl_hgridshift'Access, "networking_curl_hgridshift");

      Registration.Register_Routine (Test, networking_curl_vgridshift'Access, "networking_curl_vgridshift");

      Registration.Register_Routine (Test, networking_curl_vgridshift_vertcon'Access, "networking_curl_vgridshift_vertcon");

      Registration.Register_Routine (Test, networking_network_endpoint_env_variable'Access, "networking_network_endpoint_env_variable");

      Registration.Register_Routine (Test, networking_network_endpoint_api'Access, "networking_network_endpoint_api");

      Registration.Register_Routine (Test, networking_cache_basic'Access, "networking_cache_basic");

      Registration.Register_Routine (Test, networking_proj_grid_cache_clear'Access, "networking_proj_grid_cache_clear");

      Registration.Register_Routine (Test, networking_cache_saturation'Access, "networking_cache_saturation");

      Registration.Register_Routine (Test, networking_cache_ttl'Access, "networking_cache_ttl");

      Registration.Register_Routine (Test, networking_cache_lock'Access, "networking_cache_lock");

      Registration.Register_Routine (Test, networking_download_whole_files'Access, "networking_download_whole_files");

      Registration.Register_Routine (Test, networking_file_api'Access, "networking_file_api");

   end Register_Tests;

end PROJ.Tests.test_network;