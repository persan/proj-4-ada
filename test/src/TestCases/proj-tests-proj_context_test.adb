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
package body PROJ.Tests.proj_context_test is
   use AUnit;
   use AUnit.Test_Cases;

   Test_Name : constant Message_String := Format (GNAT.Source_Info.Enclosing_Entity);
   
   function Name (Test : Test_Case) return Message_String is
   begin
      return test_name;
   end;

   procedure proj_context_proj_context_set_file_finder (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      declare
      Ctx : Proj.PJ_CONTEXT;
      P   : Proj.PJ'Class := Ctx.Create ("+init=temp_proj_dic1:MY_PIPELINE");
      begin
         null;
      end;
      
--  
--  std::string dirname;
--  auto filename = createTempDict(dirname, "temp_proj_dic1");
--  if (filename.empty())
--  return;
--  
--  auto ctx = proj_context_create();
--  
--  struct FinderData {
--  PJ_CONTEXT *got_ctx = nullptr;
--  std::string dirname{};
--  std::string tmpFilename{};
--  };
--  
--  const auto finder = [](PJ_CONTEXT *got_ctx, const char *file,
--  void *user_data) -> const char * {
--  auto finderData = static_cast<FinderData *>(user_data);
--  finderData->got_ctx = got_ctx;
--  finderData->tmpFilename = finderData->dirname;
--  finderData->tmpFilename += DIR_CHAR;
--  finderData->tmpFilename += file;
--  return finderData->tmpFilename.c_str();
--  };
--  
--  FinderData finderData;
--  finderData.dirname = dirname;
--  proj_context_set_file_finder(ctx, finder, &finderData);
--  
--  auto P = proj_create(ctx, "+init=temp_proj_dic1:MY_PIPELINE");
--  EXPECT_NE(P, nullptr);
--  proj_destroy(P);
--  
--  EXPECT_EQ(finderData.got_ctx, ctx);
--  
--  proj_context_destroy(ctx);      
   end proj_context_proj_context_set_file_finder;

   procedure proj_context_proj_context_set_search_paths (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  std::string dirname;
--  auto filename = createTempDict(dirname, "temp_proj_dic2");
--  if (filename.empty())
--  return;
--  
--  auto ctx = proj_context_create();
--  
--  const char *path = dirname.c_str();
--  proj_context_set_search_paths(ctx, 1, &path);
--  
--  auto P = proj_create(ctx, "+init=temp_proj_dic2:MY_PIPELINE");
--  EXPECT_NE(P, nullptr);
--  proj_destroy(P);
--  
--  proj_context_destroy(ctx);
--  
--  MyUnlink(filename);      
   end proj_context_proj_context_set_search_paths;

   procedure proj_context_read_grid_from_user_writable_directory (Test : in out AUnit.Test_Cases.Test_Case'Class) is
   begin
      null;
--  
--  auto ctx = proj_context_create();
--  auto path = pj_context_get_user_writable_directory(ctx, true);
--  EXPECT_TRUE(!path.empty());
--  auto filename = path + DIR_CHAR + "temp_proj_dic3";
--  EXPECT_TRUE(createTmpFile(filename));
--  {
--  // Check that with PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY=YES (set by
--  // calling script), we cannot find the file
--  auto P = proj_create(ctx, "+init=temp_proj_dic3:MY_PIPELINE");
--  EXPECT_EQ(P, nullptr);
--  proj_destroy(P);
--  }
--  {
--  // Cancel the effect of PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY
--  putenv(const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY="));
--  auto P = proj_create(ctx, "+init=temp_proj_dic3:MY_PIPELINE");
--  EXPECT_NE(P, nullptr);
--  putenv(
--  const_cast<char *>("PROJ_SKIP_READ_USER_WRITABLE_DIRECTORY=YES"));
--  proj_destroy(P);
--  }
--  proj_context_destroy(ctx);
--  MyUnlink(filename);      
   end proj_context_read_grid_from_user_writable_directory;
   
   procedure Register_Tests (Test : in out Test_Case) is
   begin
      null;
      Registration.Register_Routine (Test, proj_context_proj_context_set_file_finder'Access, "proj_context_proj_context_set_file_finder");

      Registration.Register_Routine (Test, proj_context_proj_context_set_search_paths'Access, "proj_context_proj_context_set_search_paths");

      Registration.Register_Routine (Test, proj_context_read_grid_from_user_writable_directory'Access, "proj_context_read_grid_from_user_writable_directory");

   end Register_Tests;

end PROJ.Tests.proj_context_test;
