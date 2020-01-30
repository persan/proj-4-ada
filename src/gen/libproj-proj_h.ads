pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;


package libproj.proj_h is

   --  unsupported macro: PROJ_DLL __attribute__ ((visibility("default")))
   PROJ_VERSION_MAJOR : constant := 6;  --  /usr/gnat/include/proj.h:155
   PROJ_VERSION_MINOR : constant := 3;  --  /usr/gnat/include/proj.h:156
   PROJ_VERSION_PATCH : constant := 0;  --  /usr/gnat/include/proj.h:157
   --  unsupported macro: PJ_DEFAULT_CTX nullptr

   pj_release : aliased Interfaces.C.char_array (size_t)  -- /usr/gnat/include/proj.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "pj_release";

   type PJ_COORD;
   type PJ_AREA is null record;   -- incomplete struct

   type P5_FACTORS is record
      meridional_scale : aliased double;  -- /usr/gnat/include/proj.h:171
      parallel_scale : aliased double;  -- /usr/gnat/include/proj.h:172
      areal_scale : aliased double;  -- /usr/gnat/include/proj.h:173
      angular_distortion : aliased double;  -- /usr/gnat/include/proj.h:175
      meridian_parallel_angle : aliased double;  -- /usr/gnat/include/proj.h:176
      meridian_convergence : aliased double;  -- /usr/gnat/include/proj.h:177
      tissot_semimajor : aliased double;  -- /usr/gnat/include/proj.h:179
      tissot_semiminor : aliased double;  -- /usr/gnat/include/proj.h:180
      dx_dlam : aliased double;  -- /usr/gnat/include/proj.h:182
      dx_dphi : aliased double;  -- /usr/gnat/include/proj.h:182
      dy_dlam : aliased double;  -- /usr/gnat/include/proj.h:183
      dy_dphi : aliased double;  -- /usr/gnat/include/proj.h:183
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:170

   subtype PJ_FACTORS is P5_FACTORS;  -- /usr/gnat/include/proj.h:185

   type PJconsts is null record;   -- incomplete struct

   subtype PJ is PJconsts;  -- /usr/gnat/include/proj.h:189

   type PJ_INFO;
   type PJ_PROJ_INFO;
   type PJ_GRID_INFO;
   type PJ_INIT_INFO;
   type PJ_LIST is record
      id : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:206
      proj : access function (arg1 : access PJ) return access PJ;  -- /usr/gnat/include/proj.h:207
      descr : System.Address;  -- /usr/gnat/include/proj.h:208
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:205

   subtype PJ_OPERATIONS is PJ_LIST;  -- /usr/gnat/include/proj.h:211

   type PJ_ELLPS is record
      id : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:214
      major : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:215
      ell : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:216
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:217
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:213

   type PJ_UNITS is record
      id : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:222
      to_meter : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:223
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:224
      factor : aliased double;  -- /usr/gnat/include/proj.h:225
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:221

   type PJ_PRIME_MERIDIANS is record
      id : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:230
      defn : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:231
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:229

   --  skipped anonymous struct anon_1

   type PJ_XYZT is record
      x : aliased double;  -- /usr/gnat/include/proj.h:237
      y : aliased double;  -- /usr/gnat/include/proj.h:237
      z : aliased double;  -- /usr/gnat/include/proj.h:237
      t : aliased double;  -- /usr/gnat/include/proj.h:237
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:237

   --  skipped anonymous struct anon_2

   type PJ_UVWT is record
      u : aliased double;  -- /usr/gnat/include/proj.h:238
      v : aliased double;  -- /usr/gnat/include/proj.h:238
      w : aliased double;  -- /usr/gnat/include/proj.h:238
      t : aliased double;  -- /usr/gnat/include/proj.h:238
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:238

   --  skipped anonymous struct anon_3

   type PJ_LPZT is record
      lam : aliased double;  -- /usr/gnat/include/proj.h:239
      phi : aliased double;  -- /usr/gnat/include/proj.h:239
      z : aliased double;  -- /usr/gnat/include/proj.h:239
      t : aliased double;  -- /usr/gnat/include/proj.h:239
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:239

   --  skipped anonymous struct anon_4

   type PJ_OPK is record
      o : aliased double;  -- /usr/gnat/include/proj.h:240
      p : aliased double;  -- /usr/gnat/include/proj.h:240
      k : aliased double;  -- /usr/gnat/include/proj.h:240
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:240

   --  skipped anonymous struct anon_5

   type PJ_ENU is record
      e : aliased double;  -- /usr/gnat/include/proj.h:241
      n : aliased double;  -- /usr/gnat/include/proj.h:241
      u : aliased double;  -- /usr/gnat/include/proj.h:241
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:241

   --  skipped anonymous struct anon_6

   type PJ_GEOD is record
      s : aliased double;  -- /usr/gnat/include/proj.h:242
      a1 : aliased double;  -- /usr/gnat/include/proj.h:242
      a2 : aliased double;  -- /usr/gnat/include/proj.h:242
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:242

   --  skipped anonymous struct anon_7

   type PJ_UV is record
      u : aliased double;  -- /usr/gnat/include/proj.h:245
      v : aliased double;  -- /usr/gnat/include/proj.h:245
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:245

   --  skipped anonymous struct anon_8

   type PJ_XY is record
      x : aliased double;  -- /usr/gnat/include/proj.h:246
      y : aliased double;  -- /usr/gnat/include/proj.h:246
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:246

   --  skipped anonymous struct anon_9

   type PJ_LP is record
      lam : aliased double;  -- /usr/gnat/include/proj.h:247
      phi : aliased double;  -- /usr/gnat/include/proj.h:247
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:247

   --  skipped anonymous struct anon_10

   type PJ_XYZ is record
      x : aliased double;  -- /usr/gnat/include/proj.h:249
      y : aliased double;  -- /usr/gnat/include/proj.h:249
      z : aliased double;  -- /usr/gnat/include/proj.h:249
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:249

   --  skipped anonymous struct anon_11

   type PJ_UVW is record
      u : aliased double;  -- /usr/gnat/include/proj.h:250
      v : aliased double;  -- /usr/gnat/include/proj.h:250
      w : aliased double;  -- /usr/gnat/include/proj.h:250
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:250

   --  skipped anonymous struct anon_12

   type PJ_LPZ is record
      lam : aliased double;  -- /usr/gnat/include/proj.h:251
      phi : aliased double;  -- /usr/gnat/include/proj.h:251
      z : aliased double;  -- /usr/gnat/include/proj.h:251
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:251

   type PJ_COORD_v_array is array (0 .. 3) of aliased double;
   type PJ_COORD (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            v : aliased PJ_COORD_v_array;  -- /usr/gnat/include/proj.h:256
         when 1 =>
            xyzt : aliased PJ_XYZT;  -- /usr/gnat/include/proj.h:257
         when 2 =>
            uvwt : aliased PJ_UVWT;  -- /usr/gnat/include/proj.h:258
         when 3 =>
            lpzt : aliased PJ_LPZT;  -- /usr/gnat/include/proj.h:259
         when 4 =>
            geod : aliased PJ_GEOD;  -- /usr/gnat/include/proj.h:260
         when 5 =>
            opk : aliased PJ_OPK;  -- /usr/gnat/include/proj.h:261
         when 6 =>
            enu : aliased PJ_ENU;  -- /usr/gnat/include/proj.h:262
         when 7 =>
            xyz : aliased PJ_XYZ;  -- /usr/gnat/include/proj.h:263
         when 8 =>
            uvw : aliased PJ_UVW;  -- /usr/gnat/include/proj.h:264
         when 9 =>
            lpz : aliased PJ_LPZ;  -- /usr/gnat/include/proj.h:265
         when 10 =>
            xy : aliased PJ_XY;  -- /usr/gnat/include/proj.h:266
         when 11 =>
            uv : aliased PJ_UV;  -- /usr/gnat/include/proj.h:267
         when others =>
            lp : aliased PJ_LP;  -- /usr/gnat/include/proj.h:268
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/gnat/include/proj.h:255

   type PJ_INFO is record
      major : aliased int;  -- /usr/gnat/include/proj.h:273
      minor : aliased int;  -- /usr/gnat/include/proj.h:274
      patch : aliased int;  -- /usr/gnat/include/proj.h:275
      release : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:276
      version : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:277
      searchpath : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:278
      paths : System.Address;  -- /usr/gnat/include/proj.h:282
      path_count : aliased size_t;  -- /usr/gnat/include/proj.h:283
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:272

   type PJ_PROJ_INFO is record
      id : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:287
      description : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:288
      definition : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:289
      has_inverse : aliased int;  -- /usr/gnat/include/proj.h:290
      accuracy : aliased double;  -- /usr/gnat/include/proj.h:291
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:286

   subtype PJ_GRID_INFO_gridname_array is Interfaces.C.char_array (0 .. 31);
   subtype PJ_GRID_INFO_filename_array is Interfaces.C.char_array (0 .. 259);
   subtype PJ_GRID_INFO_format_array is Interfaces.C.char_array (0 .. 7);
   type PJ_GRID_INFO is record
      gridname : aliased PJ_GRID_INFO_gridname_array;  -- /usr/gnat/include/proj.h:295
      filename : aliased PJ_GRID_INFO_filename_array;  -- /usr/gnat/include/proj.h:296
      format : aliased PJ_GRID_INFO_format_array;  -- /usr/gnat/include/proj.h:297
      lowerleft : aliased PJ_LP;  -- /usr/gnat/include/proj.h:298
      upperright : aliased PJ_LP;  -- /usr/gnat/include/proj.h:299
      n_lon : aliased int;  -- /usr/gnat/include/proj.h:300
      n_lat : aliased int;  -- /usr/gnat/include/proj.h:300
      cs_lon : aliased double;  -- /usr/gnat/include/proj.h:301
      cs_lat : aliased double;  -- /usr/gnat/include/proj.h:301
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:294

   subtype PJ_INIT_INFO_name_array is Interfaces.C.char_array (0 .. 31);
   subtype PJ_INIT_INFO_filename_array is Interfaces.C.char_array (0 .. 259);
   subtype PJ_INIT_INFO_version_array is Interfaces.C.char_array (0 .. 31);
   subtype PJ_INIT_INFO_origin_array is Interfaces.C.char_array (0 .. 31);
   subtype PJ_INIT_INFO_lastupdate_array is Interfaces.C.char_array (0 .. 15);
   type PJ_INIT_INFO is record
      name : aliased PJ_INIT_INFO_name_array;  -- /usr/gnat/include/proj.h:305
      filename : aliased PJ_INIT_INFO_filename_array;  -- /usr/gnat/include/proj.h:306
      version : aliased PJ_INIT_INFO_version_array;  -- /usr/gnat/include/proj.h:307
      origin : aliased PJ_INIT_INFO_origin_array;  -- /usr/gnat/include/proj.h:308
      lastupdate : aliased PJ_INIT_INFO_lastupdate_array;  -- /usr/gnat/include/proj.h:309
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:304

   subtype PJ_LOG_LEVEL is unsigned;
   PJ_LOG_NONE : constant unsigned := 0;
   PJ_LOG_ERROR : constant unsigned := 1;
   PJ_LOG_DEBUG : constant unsigned := 2;
   PJ_LOG_TRACE : constant unsigned := 3;
   PJ_LOG_TELL : constant unsigned := 4;
   PJ_LOG_DEBUG_MAJOR : constant unsigned := 2;
   PJ_LOG_DEBUG_MINOR : constant unsigned := 3;  -- /usr/gnat/include/proj.h:312

   type PJ_LOG_FUNCTION is access procedure
        (arg1 : System.Address;
         arg2 : int;
         arg3 : Interfaces.C.Strings.chars_ptr)
   with Convention => C;  -- /usr/gnat/include/proj.h:322

   type projCtx_t is null record;   -- incomplete struct

   subtype PJ_CONTEXT is projCtx_t;  -- /usr/gnat/include/proj.h:327

   function proj_context_create return access PJ_CONTEXT  -- /usr/gnat/include/proj.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_create";

   function proj_context_destroy (ctx : access PJ_CONTEXT) return access PJ_CONTEXT  -- /usr/gnat/include/proj.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_destroy";

   type proj_file_finder is access function
        (arg1 : access PJ_CONTEXT;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : System.Address) return Interfaces.C.Strings.chars_ptr
   with Convention => C;  -- /usr/gnat/include/proj.h:348

   procedure proj_context_set_file_finder
     (ctx : access PJ_CONTEXT;
      finder : proj_file_finder;
      user_data : System.Address)  -- /usr/gnat/include/proj.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_set_file_finder";

   procedure proj_context_set_search_paths
     (ctx : access PJ_CONTEXT;
      count_paths : int;
      paths : System.Address)  -- /usr/gnat/include/proj.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_set_search_paths";

   procedure proj_context_use_proj4_init_rules (ctx : access PJ_CONTEXT; enable : int)  -- /usr/gnat/include/proj.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_use_proj4_init_rules";

   function proj_context_get_use_proj4_init_rules (ctx : access PJ_CONTEXT; from_legacy_code_path : int) return int  -- /usr/gnat/include/proj.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_get_use_proj4_init_rules";

   function proj_create (ctx : access PJ_CONTEXT; definition : Interfaces.C.Strings.chars_ptr) return access PJ  -- /usr/gnat/include/proj.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create";

   function proj_create_argv
     (ctx : access PJ_CONTEXT;
      argc : int;
      argv : System.Address) return access PJ  -- /usr/gnat/include/proj.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_argv";

   function proj_create_crs_to_crs
     (ctx : access PJ_CONTEXT;
      source_crs : Interfaces.C.Strings.chars_ptr;
      target_crs : Interfaces.C.Strings.chars_ptr;
      area : access PJ_AREA) return access PJ  -- /usr/gnat/include/proj.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_crs_to_crs";

   function proj_create_crs_to_crs_from_pj
     (ctx : access PJ_CONTEXT;
      source_crs : access constant PJ;
      target_crs : access constant PJ;
      area : access PJ_AREA;
      options : System.Address) return access PJ  -- /usr/gnat/include/proj.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_crs_to_crs_from_pj";

   function proj_normalize_for_visualization (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "proj_normalize_for_visualization";

   procedure proj_assign_context (the_pj : access PJ; ctx : access PJ_CONTEXT)  -- /usr/gnat/include/proj.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "proj_assign_context";

   function proj_destroy (P : access PJ) return access PJ  -- /usr/gnat/include/proj.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "proj_destroy";

   function proj_area_create return access PJ_AREA  -- /usr/gnat/include/proj.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "proj_area_create";

   procedure proj_area_set_bbox
     (area : access PJ_AREA;
      west_lon_degree : double;
      south_lat_degree : double;
      east_lon_degree : double;
      north_lat_degree : double)  -- /usr/gnat/include/proj.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "proj_area_set_bbox";

   procedure proj_area_destroy (area : access PJ_AREA)  -- /usr/gnat/include/proj.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "proj_area_destroy";

   subtype PJ_DIRECTION is int;
   PJ_FWD : constant int := 1;
   PJ_IDENT : constant int := 0;
   PJ_INV : constant int := -1;  -- /usr/gnat/include/proj.h:379

   function proj_angular_input (P : access PJ; dir : PJ_DIRECTION) return int  -- /usr/gnat/include/proj.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "proj_angular_input";

   function proj_angular_output (P : access PJ; dir : PJ_DIRECTION) return int  -- /usr/gnat/include/proj.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "proj_angular_output";

   function proj_trans
     (P : access PJ;
      direction : PJ_DIRECTION;
      coord : PJ_COORD) return PJ_COORD  -- /usr/gnat/include/proj.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "proj_trans";

   function proj_trans_array
     (P : access PJ;
      direction : PJ_DIRECTION;
      n : size_t;
      coord : access PJ_COORD) return int  -- /usr/gnat/include/proj.h:392
   with Import => True, 
        Convention => C, 
        External_Name => "proj_trans_array";

   function proj_trans_generic
     (P : access PJ;
      direction : PJ_DIRECTION;
      x : access double;
      sx : size_t;
      nx : size_t;
      y : access double;
      sy : size_t;
      ny : size_t;
      z : access double;
      sz : size_t;
      nz : size_t;
      t : access double;
      st : size_t;
      nt : size_t) return libproj.stddef_h.size_t  -- /usr/gnat/include/proj.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "proj_trans_generic";

   function proj_coord
     (x : double;
      y : double;
      z : double;
      t : double) return PJ_COORD  -- /usr/gnat/include/proj.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coord";

   function proj_roundtrip
     (P : access PJ;
      direction : PJ_DIRECTION;
      n : int;
      coord : access PJ_COORD) return double  -- /usr/gnat/include/proj.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "proj_roundtrip";

   function proj_lp_dist
     (P : access constant PJ;
      a : PJ_COORD;
      b : PJ_COORD) return double  -- /usr/gnat/include/proj.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "proj_lp_dist";

   function proj_lpz_dist
     (P : access constant PJ;
      a : PJ_COORD;
      b : PJ_COORD) return double  -- /usr/gnat/include/proj.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "proj_lpz_dist";

   function proj_xy_dist (a : PJ_COORD; b : PJ_COORD) return double  -- /usr/gnat/include/proj.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "proj_xy_dist";

   function proj_xyz_dist (a : PJ_COORD; b : PJ_COORD) return double  -- /usr/gnat/include/proj.h:419
   with Import => True, 
        Convention => C, 
        External_Name => "proj_xyz_dist";

   function proj_geod
     (P : access constant PJ;
      a : PJ_COORD;
      b : PJ_COORD) return PJ_COORD  -- /usr/gnat/include/proj.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "proj_geod";

   function proj_context_errno (ctx : access PJ_CONTEXT) return int  -- /usr/gnat/include/proj.h:426
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_errno";

   function proj_errno (P : access constant PJ) return int  -- /usr/gnat/include/proj.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "proj_errno";

   function proj_errno_set (P : access constant PJ; err : int) return int  -- /usr/gnat/include/proj.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "proj_errno_set";

   function proj_errno_reset (P : access constant PJ) return int  -- /usr/gnat/include/proj.h:429
   with Import => True, 
        Convention => C, 
        External_Name => "proj_errno_reset";

   function proj_errno_restore (P : access constant PJ; err : int) return int  -- /usr/gnat/include/proj.h:430
   with Import => True, 
        Convention => C, 
        External_Name => "proj_errno_restore";

   function proj_errno_string (err : int) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "proj_errno_string";

   function proj_log_level (ctx : access PJ_CONTEXT; log_level : PJ_LOG_LEVEL) return PJ_LOG_LEVEL  -- /usr/gnat/include/proj.h:433
   with Import => True, 
        Convention => C, 
        External_Name => "proj_log_level";

   procedure proj_log_func
     (ctx : access PJ_CONTEXT;
      app_data : System.Address;
      logf : PJ_LOG_FUNCTION)  -- /usr/gnat/include/proj.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "proj_log_func";

   function proj_factors (P : access PJ; lp : PJ_COORD) return PJ_FACTORS  -- /usr/gnat/include/proj.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "proj_factors";

   function proj_info return PJ_INFO  -- /usr/gnat/include/proj.h:440
   with Import => True, 
        Convention => C, 
        External_Name => "proj_info";

   function proj_pj_info (P : access PJ) return PJ_PROJ_INFO  -- /usr/gnat/include/proj.h:441
   with Import => True, 
        Convention => C, 
        External_Name => "proj_pj_info";

   function proj_grid_info (gridname : Interfaces.C.Strings.chars_ptr) return PJ_GRID_INFO  -- /usr/gnat/include/proj.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "proj_grid_info";

   function proj_init_info (initname : Interfaces.C.Strings.chars_ptr) return PJ_INIT_INFO  -- /usr/gnat/include/proj.h:443
   with Import => True, 
        Convention => C, 
        External_Name => "proj_init_info";

   function proj_list_operations return access constant PJ_OPERATIONS  -- /usr/gnat/include/proj.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_operations";

   function proj_list_ellps return access constant PJ_ELLPS  -- /usr/gnat/include/proj.h:448
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_ellps";

   function proj_list_units return access constant PJ_UNITS  -- /usr/gnat/include/proj.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_units";

   function proj_list_angular_units return access constant PJ_UNITS  -- /usr/gnat/include/proj.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_angular_units";

   function proj_list_prime_meridians return access constant PJ_PRIME_MERIDIANS  -- /usr/gnat/include/proj.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_prime_meridians";

   function proj_torad (angle_in_degrees : double) return double  -- /usr/gnat/include/proj.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "proj_torad";

   function proj_todeg (angle_in_radians : double) return double  -- /usr/gnat/include/proj.h:457
   with Import => True, 
        Convention => C, 
        External_Name => "proj_todeg";

   function proj_dmstor (c_is : Interfaces.C.Strings.chars_ptr; rs : System.Address) return double  -- /usr/gnat/include/proj.h:459
   with Import => True, 
        Convention => C, 
        External_Name => "proj_dmstor";

   function proj_rtodms
     (s : Interfaces.C.Strings.chars_ptr;
      r : double;
      pos : int;
      neg : int) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "proj_rtodms";

   procedure proj_cleanup  -- /usr/gnat/include/proj.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "proj_cleanup";

   type PROJ_STRING_LIST is new System.Address;  -- /usr/gnat/include/proj.h:477

   subtype PJ_GUESSED_WKT_DIALECT is unsigned;
   PJ_GUESSED_WKT2_2019 : constant unsigned := 0;
   PJ_GUESSED_WKT2_2018 : constant unsigned := 0;
   PJ_GUESSED_WKT2_2015 : constant unsigned := 1;
   PJ_GUESSED_WKT1_GDAL : constant unsigned := 2;
   PJ_GUESSED_WKT1_ESRI : constant unsigned := 3;
   PJ_GUESSED_NOT_WKT : constant unsigned := 4;  -- /usr/gnat/include/proj.h:499

   type PJ_CATEGORY is 
     (PJ_CATEGORY_ELLIPSOID,
      PJ_CATEGORY_PRIME_MERIDIAN,
      PJ_CATEGORY_DATUM,
      PJ_CATEGORY_CRS,
      PJ_CATEGORY_COORDINATE_OPERATION)
   with Convention => C;  -- /usr/gnat/include/proj.h:509

   type PJ_TYPE is 
     (PJ_TYPE_UNKNOWN,
      PJ_TYPE_ELLIPSOID,
      PJ_TYPE_PRIME_MERIDIAN,
      PJ_TYPE_GEODETIC_REFERENCE_FRAME,
      PJ_TYPE_DYNAMIC_GEODETIC_REFERENCE_FRAME,
      PJ_TYPE_VERTICAL_REFERENCE_FRAME,
      PJ_TYPE_DYNAMIC_VERTICAL_REFERENCE_FRAME,
      PJ_TYPE_DATUM_ENSEMBLE,
      PJ_TYPE_CRS,
      PJ_TYPE_GEODETIC_CRS,
      PJ_TYPE_GEOCENTRIC_CRS,
      PJ_TYPE_GEOGRAPHIC_CRS,
      PJ_TYPE_GEOGRAPHIC_2D_CRS,
      PJ_TYPE_GEOGRAPHIC_3D_CRS,
      PJ_TYPE_VERTICAL_CRS,
      PJ_TYPE_PROJECTED_CRS,
      PJ_TYPE_COMPOUND_CRS,
      PJ_TYPE_TEMPORAL_CRS,
      PJ_TYPE_ENGINEERING_CRS,
      PJ_TYPE_BOUND_CRS,
      PJ_TYPE_OTHER_CRS,
      PJ_TYPE_CONVERSION,
      PJ_TYPE_TRANSFORMATION,
      PJ_TYPE_CONCATENATED_OPERATION,
      PJ_TYPE_OTHER_COORDINATE_OPERATION)
   with Convention => C;  -- /usr/gnat/include/proj.h:550

   type PJ_COMPARISON_CRITERION is 
     (PJ_COMP_STRICT,
      PJ_COMP_EQUIVALENT,
      PJ_COMP_EQUIVALENT_EXCEPT_AXIS_ORDER_GEOGCRS)
   with Convention => C;  -- /usr/gnat/include/proj.h:572

   subtype PJ_WKT_TYPE is unsigned;
   PJ_WKT2_2015 : constant unsigned := 0;
   PJ_WKT2_2015_SIMPLIFIED : constant unsigned := 1;
   PJ_WKT2_2019 : constant unsigned := 2;
   PJ_WKT2_2018 : constant unsigned := 2;
   PJ_WKT2_2019_SIMPLIFIED : constant unsigned := 3;
   PJ_WKT2_2018_SIMPLIFIED : constant unsigned := 3;
   PJ_WKT1_GDAL : constant unsigned := 4;
   PJ_WKT1_ESRI : constant unsigned := 5;  -- /usr/gnat/include/proj.h:594

   type PROJ_CRS_EXTENT_USE is 
     (PJ_CRS_EXTENT_NONE,
      PJ_CRS_EXTENT_BOTH,
      PJ_CRS_EXTENT_INTERSECTION,
      PJ_CRS_EXTENT_SMALLEST)
   with Convention => C;  -- /usr/gnat/include/proj.h:613

   type PROJ_GRID_AVAILABILITY_USE is 
     (PROJ_GRID_AVAILABILITY_USED_FOR_SORTING,
      PROJ_GRID_AVAILABILITY_DISCARD_OPERATION_IF_MISSING_GRID,
      PROJ_GRID_AVAILABILITY_IGNORED)
   with Convention => C;  -- /usr/gnat/include/proj.h:627

   type PJ_PROJ_STRING_TYPE is 
     (PJ_PROJ_5,
      PJ_PROJ_4)
   with Convention => C;  -- /usr/gnat/include/proj.h:636

   type PROJ_SPATIAL_CRITERION is 
     (PROJ_SPATIAL_CRITERION_STRICT_CONTAINMENT,
      PROJ_SPATIAL_CRITERION_PARTIAL_INTERSECTION)
   with Convention => C;  -- /usr/gnat/include/proj.h:647

   type PROJ_INTERMEDIATE_CRS_USE is 
     (PROJ_INTERMEDIATE_CRS_USE_ALWAYS,
      PROJ_INTERMEDIATE_CRS_USE_IF_NO_DIRECT_TRANSFORMATION,
      PROJ_INTERMEDIATE_CRS_USE_NEVER)
   with Convention => C;  -- /usr/gnat/include/proj.h:660

   type PJ_COORDINATE_SYSTEM_TYPE is 
     (PJ_CS_TYPE_UNKNOWN,
      PJ_CS_TYPE_CARTESIAN,
      PJ_CS_TYPE_ELLIPSOIDAL,
      PJ_CS_TYPE_VERTICAL,
      PJ_CS_TYPE_SPHERICAL,
      PJ_CS_TYPE_ORDINAL,
      PJ_CS_TYPE_PARAMETRIC,
      PJ_CS_TYPE_DATETIMETEMPORAL,
      PJ_CS_TYPE_TEMPORALCOUNT,
      PJ_CS_TYPE_TEMPORALMEASURE)
   with Convention => C;  -- /usr/gnat/include/proj.h:676

   --  skipped anonymous struct anon_24

   type PROJ_CRS_INFO is record
      auth_name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:686
      code : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:688
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:690
      c_type : aliased PJ_TYPE;  -- /usr/gnat/include/proj.h:692
      deprecated : aliased int;  -- /usr/gnat/include/proj.h:694
      bbox_valid : aliased int;  -- /usr/gnat/include/proj.h:697
      west_lon_degree : aliased double;  -- /usr/gnat/include/proj.h:699
      south_lat_degree : aliased double;  -- /usr/gnat/include/proj.h:701
      east_lon_degree : aliased double;  -- /usr/gnat/include/proj.h:703
      north_lat_degree : aliased double;  -- /usr/gnat/include/proj.h:705
      area_name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:707
      projection_method_name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/proj.h:710
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:711

   --  skipped anonymous struct anon_25

   type PROJ_CRS_LIST_PARAMETERS is record
      types : access PJ_TYPE;  -- /usr/gnat/include/proj.h:721
      typesCount : aliased size_t;  -- /usr/gnat/include/proj.h:723
      crs_area_of_use_contains_bbox : aliased int;  -- /usr/gnat/include/proj.h:730
      bbox_valid : aliased int;  -- /usr/gnat/include/proj.h:733
      west_lon_degree : aliased double;  -- /usr/gnat/include/proj.h:735
      south_lat_degree : aliased double;  -- /usr/gnat/include/proj.h:737
      east_lon_degree : aliased double;  -- /usr/gnat/include/proj.h:739
      north_lat_degree : aliased double;  -- /usr/gnat/include/proj.h:741
      allow_deprecated : aliased int;  -- /usr/gnat/include/proj.h:744
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/proj.h:745

   type PJ_OBJ_LIST is null record;   -- incomplete struct

   procedure proj_string_list_destroy (list : PROJ_STRING_LIST)  -- /usr/gnat/include/proj.h:771
   with Import => True, 
        Convention => C, 
        External_Name => "proj_string_list_destroy";

   procedure proj_context_set_autoclose_database (ctx : access PJ_CONTEXT; autoclose : int)  -- /usr/gnat/include/proj.h:773
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_set_autoclose_database";

   function proj_context_set_database_path
     (ctx : access PJ_CONTEXT;
      dbPath : Interfaces.C.Strings.chars_ptr;
      auxDbPaths : System.Address;
      options : System.Address) return int  -- /usr/gnat/include/proj.h:776
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_set_database_path";

   function proj_context_get_database_path (ctx : access PJ_CONTEXT) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:781
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_get_database_path";

   function proj_context_get_database_metadata (ctx : access PJ_CONTEXT; key : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:783
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_get_database_metadata";

   function proj_context_guess_wkt_dialect (ctx : access PJ_CONTEXT; wkt : Interfaces.C.Strings.chars_ptr) return PJ_GUESSED_WKT_DIALECT  -- /usr/gnat/include/proj.h:787
   with Import => True, 
        Convention => C, 
        External_Name => "proj_context_guess_wkt_dialect";

   function proj_create_from_wkt
     (ctx : access PJ_CONTEXT;
      wkt : Interfaces.C.Strings.chars_ptr;
      options : System.Address;
      out_warnings : System.Address;
      out_grammar_errors : System.Address) return access PJ  -- /usr/gnat/include/proj.h:790
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_from_wkt";

   function proj_create_from_database
     (ctx : access PJ_CONTEXT;
      auth_name : Interfaces.C.Strings.chars_ptr;
      code : Interfaces.C.Strings.chars_ptr;
      category : PJ_CATEGORY;
      usePROJAlternativeGridNames : int;
      options : System.Address) return access PJ  -- /usr/gnat/include/proj.h:795
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_from_database";

   function proj_uom_get_info_from_database
     (ctx : access PJ_CONTEXT;
      auth_name : Interfaces.C.Strings.chars_ptr;
      code : Interfaces.C.Strings.chars_ptr;
      out_name : System.Address;
      out_conv_factor : access double;
      out_category : System.Address) return int  -- /usr/gnat/include/proj.h:802
   with Import => True, 
        Convention => C, 
        External_Name => "proj_uom_get_info_from_database";

   function proj_grid_get_info_from_database
     (ctx : access PJ_CONTEXT;
      grid_name : Interfaces.C.Strings.chars_ptr;
      out_full_name : System.Address;
      out_package_name : System.Address;
      out_url : System.Address;
      out_direct_download : access int;
      out_open_license : access int;
      out_available : access int) return int  -- /usr/gnat/include/proj.h:809
   with Import => True, 
        Convention => C, 
        External_Name => "proj_grid_get_info_from_database";

   function proj_clone (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:818
   with Import => True, 
        Convention => C, 
        External_Name => "proj_clone";

   function proj_create_from_name
     (ctx : access PJ_CONTEXT;
      auth_name : Interfaces.C.Strings.chars_ptr;
      searchedName : Interfaces.C.Strings.chars_ptr;
      types : access PJ_TYPE;
      typesCount : size_t;
      approximateMatch : int;
      limitResultCount : size_t;
      options : System.Address) return access PJ_OBJ_LIST  -- /usr/gnat/include/proj.h:820
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_from_name";

   function proj_get_type (obj : access constant PJ) return PJ_TYPE  -- /usr/gnat/include/proj.h:829
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_type";

   function proj_is_deprecated (obj : access constant PJ) return int  -- /usr/gnat/include/proj.h:831
   with Import => True, 
        Convention => C, 
        External_Name => "proj_is_deprecated";

   function proj_get_non_deprecated (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ_OBJ_LIST  -- /usr/gnat/include/proj.h:833
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_non_deprecated";

   function proj_is_equivalent_to
     (obj : access constant PJ;
      other : access constant PJ;
      criterion : PJ_COMPARISON_CRITERION) return int  -- /usr/gnat/include/proj.h:836
   with Import => True, 
        Convention => C, 
        External_Name => "proj_is_equivalent_to";

   function proj_is_equivalent_to_with_ctx
     (ctx : access PJ_CONTEXT;
      obj : access constant PJ;
      other : access constant PJ;
      criterion : PJ_COMPARISON_CRITERION) return int  -- /usr/gnat/include/proj.h:839
   with Import => True, 
        Convention => C, 
        External_Name => "proj_is_equivalent_to_with_ctx";

   function proj_is_crs (obj : access constant PJ) return int  -- /usr/gnat/include/proj.h:843
   with Import => True, 
        Convention => C, 
        External_Name => "proj_is_crs";

   function proj_get_name (obj : access constant PJ) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:845
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_name";

   function proj_get_id_auth_name (obj : access constant PJ; index : int) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:847
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_id_auth_name";

   function proj_get_id_code (obj : access constant PJ; index : int) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:849
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_id_code";

   function proj_get_remarks (obj : access constant PJ) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:851
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_remarks";

   function proj_get_scope (obj : access constant PJ) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:853
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_scope";

   function proj_get_area_of_use
     (ctx : access PJ_CONTEXT;
      obj : access constant PJ;
      out_west_lon_degree : access double;
      out_south_lat_degree : access double;
      out_east_lon_degree : access double;
      out_north_lat_degree : access double;
      out_area_name : System.Address) return int  -- /usr/gnat/include/proj.h:855
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_area_of_use";

   function proj_as_wkt
     (ctx : access PJ_CONTEXT;
      obj : access constant PJ;
      c_type : PJ_WKT_TYPE;
      options : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:863
   with Import => True, 
        Convention => C, 
        External_Name => "proj_as_wkt";

   function proj_as_proj_string
     (ctx : access PJ_CONTEXT;
      obj : access constant PJ;
      c_type : PJ_PROJ_STRING_TYPE;
      options : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:867
   with Import => True, 
        Convention => C, 
        External_Name => "proj_as_proj_string";

   function proj_as_projjson
     (ctx : access PJ_CONTEXT;
      obj : access constant PJ;
      options : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/proj.h:872
   with Import => True, 
        Convention => C, 
        External_Name => "proj_as_projjson";

   function proj_get_source_crs (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:876
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_source_crs";

   function proj_get_target_crs (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:879
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_target_crs";

   function proj_identify
     (ctx : access PJ_CONTEXT;
      obj : access constant PJ;
      auth_name : Interfaces.C.Strings.chars_ptr;
      options : System.Address;
      out_confidence : System.Address) return access PJ_OBJ_LIST  -- /usr/gnat/include/proj.h:882
   with Import => True, 
        Convention => C, 
        External_Name => "proj_identify";

   procedure proj_int_list_destroy (list : access int)  -- /usr/gnat/include/proj.h:888
   with Import => True, 
        Convention => C, 
        External_Name => "proj_int_list_destroy";

   function proj_get_authorities_from_database (ctx : access PJ_CONTEXT) return PROJ_STRING_LIST  -- /usr/gnat/include/proj.h:892
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_authorities_from_database";

   function proj_get_codes_from_database
     (ctx : access PJ_CONTEXT;
      auth_name : Interfaces.C.Strings.chars_ptr;
      c_type : PJ_TYPE;
      allow_deprecated : int) return PROJ_STRING_LIST  -- /usr/gnat/include/proj.h:894
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_codes_from_database";

   function proj_get_crs_list_parameters_create return access PROJ_CRS_LIST_PARAMETERS  -- /usr/gnat/include/proj.h:899
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_crs_list_parameters_create";

   procedure proj_get_crs_list_parameters_destroy (params : access PROJ_CRS_LIST_PARAMETERS)  -- /usr/gnat/include/proj.h:901
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_crs_list_parameters_destroy";

   function proj_get_crs_info_list_from_database
     (ctx : access PJ_CONTEXT;
      auth_name : Interfaces.C.Strings.chars_ptr;
      params : access constant PROJ_CRS_LIST_PARAMETERS;
      out_result_count : access int) return System.Address  -- /usr/gnat/include/proj.h:904
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_crs_info_list_from_database";

   procedure proj_crs_info_list_destroy (list : System.Address)  -- /usr/gnat/include/proj.h:910
   with Import => True, 
        Convention => C, 
        External_Name => "proj_crs_info_list_destroy";

   type PJ_OPERATION_FACTORY_CONTEXT is null record;   -- incomplete struct

   function proj_create_operation_factory_context (ctx : access PJ_CONTEXT; authority : Interfaces.C.Strings.chars_ptr) return access PJ_OPERATION_FACTORY_CONTEXT  -- /usr/gnat/include/proj.h:919
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_operation_factory_context";

   procedure proj_operation_factory_context_destroy (ctx : access PJ_OPERATION_FACTORY_CONTEXT)  -- /usr/gnat/include/proj.h:923
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_destroy";

   procedure proj_operation_factory_context_set_desired_accuracy
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      accuracy : double)  -- /usr/gnat/include/proj.h:926
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_desired_accuracy";

   procedure proj_operation_factory_context_set_area_of_interest
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      west_lon_degree : double;
      south_lat_degree : double;
      east_lon_degree : double;
      north_lat_degree : double)  -- /usr/gnat/include/proj.h:931
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_area_of_interest";

   procedure proj_operation_factory_context_set_crs_extent_use
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      c_use : PROJ_CRS_EXTENT_USE)  -- /usr/gnat/include/proj.h:939
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_crs_extent_use";

   procedure proj_operation_factory_context_set_spatial_criterion
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      criterion : PROJ_SPATIAL_CRITERION)  -- /usr/gnat/include/proj.h:944
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_spatial_criterion";

   procedure proj_operation_factory_context_set_grid_availability_use
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      c_use : PROJ_GRID_AVAILABILITY_USE)  -- /usr/gnat/include/proj.h:950
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_grid_availability_use";

   procedure proj_operation_factory_context_set_use_proj_alternative_grid_names
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      usePROJNames : int)  -- /usr/gnat/include/proj.h:955
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_use_proj_alternative_grid_names";

   procedure proj_operation_factory_context_set_allow_use_intermediate_crs
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      c_use : PROJ_INTERMEDIATE_CRS_USE)  -- /usr/gnat/include/proj.h:960
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_allow_use_intermediate_crs";

   procedure proj_operation_factory_context_set_allowed_intermediate_crs
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      list_of_auth_name_codes : System.Address)  -- /usr/gnat/include/proj.h:965
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_allowed_intermediate_crs";

   procedure proj_operation_factory_context_set_discard_superseded
     (ctx : access PJ_CONTEXT;
      factory_ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      discard : int)  -- /usr/gnat/include/proj.h:970
   with Import => True, 
        Convention => C, 
        External_Name => "proj_operation_factory_context_set_discard_superseded";

   function proj_create_operations
     (ctx : access PJ_CONTEXT;
      source_crs : access constant PJ;
      target_crs : access constant PJ;
      operationContext : access constant PJ_OPERATION_FACTORY_CONTEXT) return access PJ_OBJ_LIST  -- /usr/gnat/include/proj.h:978
   with Import => True, 
        Convention => C, 
        External_Name => "proj_create_operations";

   function proj_list_get_count (result : access constant PJ_OBJ_LIST) return int  -- /usr/gnat/include/proj.h:984
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_get_count";

   function proj_list_get
     (ctx : access PJ_CONTEXT;
      result : access constant PJ_OBJ_LIST;
      index : int) return access PJ  -- /usr/gnat/include/proj.h:986
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_get";

   procedure proj_list_destroy (result : access PJ_OBJ_LIST)  -- /usr/gnat/include/proj.h:990
   with Import => True, 
        Convention => C, 
        External_Name => "proj_list_destroy";

   function proj_crs_get_geodetic_crs (ctx : access PJ_CONTEXT; crs : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:994
   with Import => True, 
        Convention => C, 
        External_Name => "proj_crs_get_geodetic_crs";

   function proj_crs_get_horizontal_datum (ctx : access PJ_CONTEXT; crs : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:996
   with Import => True, 
        Convention => C, 
        External_Name => "proj_crs_get_horizontal_datum";

   function proj_crs_get_sub_crs
     (ctx : access PJ_CONTEXT;
      crs : access constant PJ;
      index : int) return access PJ  -- /usr/gnat/include/proj.h:998
   with Import => True, 
        Convention => C, 
        External_Name => "proj_crs_get_sub_crs";

   function proj_crs_get_datum (ctx : access PJ_CONTEXT; crs : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:1000
   with Import => True, 
        Convention => C, 
        External_Name => "proj_crs_get_datum";

   function proj_crs_get_coordinate_system (ctx : access PJ_CONTEXT; crs : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:1002
   with Import => True, 
        Convention => C, 
        External_Name => "proj_crs_get_coordinate_system";

   function proj_cs_get_type (ctx : access PJ_CONTEXT; cs : access constant PJ) return PJ_COORDINATE_SYSTEM_TYPE  -- /usr/gnat/include/proj.h:1004
   with Import => True, 
        Convention => C, 
        External_Name => "proj_cs_get_type";

   function proj_cs_get_axis_count (ctx : access PJ_CONTEXT; cs : access constant PJ) return int  -- /usr/gnat/include/proj.h:1007
   with Import => True, 
        Convention => C, 
        External_Name => "proj_cs_get_axis_count";

   function proj_cs_get_axis_info
     (ctx : access PJ_CONTEXT;
      cs : access constant PJ;
      index : int;
      out_name : System.Address;
      out_abbrev : System.Address;
      out_direction : System.Address;
      out_unit_conv_factor : access double;
      out_unit_name : System.Address;
      out_unit_auth_name : System.Address;
      out_unit_code : System.Address) return int  -- /usr/gnat/include/proj.h:1010
   with Import => True, 
        Convention => C, 
        External_Name => "proj_cs_get_axis_info";

   function proj_get_ellipsoid (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:1020
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_ellipsoid";

   function proj_ellipsoid_get_parameters
     (ctx : access PJ_CONTEXT;
      ellipsoid : access constant PJ;
      out_semi_major_metre : access double;
      out_semi_minor_metre : access double;
      out_is_semi_minor_computed : access int;
      out_inv_flattening : access double) return int  -- /usr/gnat/include/proj.h:1023
   with Import => True, 
        Convention => C, 
        External_Name => "proj_ellipsoid_get_parameters";

   function proj_get_prime_meridian (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:1030
   with Import => True, 
        Convention => C, 
        External_Name => "proj_get_prime_meridian";

   function proj_prime_meridian_get_parameters
     (ctx : access PJ_CONTEXT;
      prime_meridian : access constant PJ;
      out_longitude : access double;
      out_unit_conv_factor : access double;
      out_unit_name : System.Address) return int  -- /usr/gnat/include/proj.h:1033
   with Import => True, 
        Convention => C, 
        External_Name => "proj_prime_meridian_get_parameters";

   function proj_crs_get_coordoperation (ctx : access PJ_CONTEXT; crs : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:1039
   with Import => True, 
        Convention => C, 
        External_Name => "proj_crs_get_coordoperation";

   function proj_coordoperation_get_method_info
     (ctx : access PJ_CONTEXT;
      coordoperation : access constant PJ;
      out_method_name : System.Address;
      out_method_auth_name : System.Address;
      out_method_code : System.Address) return int  -- /usr/gnat/include/proj.h:1042
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_method_info";

   function proj_coordoperation_is_instantiable (ctx : access PJ_CONTEXT; coordoperation : access constant PJ) return int  -- /usr/gnat/include/proj.h:1048
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_is_instantiable";

   function proj_coordoperation_has_ballpark_transformation (ctx : access PJ_CONTEXT; coordoperation : access constant PJ) return int  -- /usr/gnat/include/proj.h:1051
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_has_ballpark_transformation";

   function proj_coordoperation_get_param_count (ctx : access PJ_CONTEXT; coordoperation : access constant PJ) return int  -- /usr/gnat/include/proj.h:1054
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_param_count";

   function proj_coordoperation_get_param_index
     (ctx : access PJ_CONTEXT;
      coordoperation : access constant PJ;
      name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/gnat/include/proj.h:1057
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_param_index";

   function proj_coordoperation_get_param
     (ctx : access PJ_CONTEXT;
      coordoperation : access constant PJ;
      index : int;
      out_name : System.Address;
      out_auth_name : System.Address;
      out_code : System.Address;
      out_value : access double;
      out_value_string : System.Address;
      out_unit_conv_factor : access double;
      out_unit_name : System.Address;
      out_unit_auth_name : System.Address;
      out_unit_code : System.Address;
      out_unit_category : System.Address) return int  -- /usr/gnat/include/proj.h:1061
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_param";

   function proj_coordoperation_get_grid_used_count (ctx : access PJ_CONTEXT; coordoperation : access constant PJ) return int  -- /usr/gnat/include/proj.h:1075
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_grid_used_count";

   function proj_coordoperation_get_grid_used
     (ctx : access PJ_CONTEXT;
      coordoperation : access constant PJ;
      index : int;
      out_short_name : System.Address;
      out_full_name : System.Address;
      out_package_name : System.Address;
      out_url : System.Address;
      out_direct_download : access int;
      out_open_license : access int;
      out_available : access int) return int  -- /usr/gnat/include/proj.h:1078
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_grid_used";

   function proj_coordoperation_get_accuracy (ctx : access PJ_CONTEXT; obj : access constant PJ) return double  -- /usr/gnat/include/proj.h:1089
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_accuracy";

   function proj_coordoperation_get_towgs84_values
     (ctx : access PJ_CONTEXT;
      coordoperation : access constant PJ;
      out_values : access double;
      value_count : int;
      emit_error_if_incompatible : int) return int  -- /usr/gnat/include/proj.h:1092
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_get_towgs84_values";

   function proj_coordoperation_create_inverse (ctx : access PJ_CONTEXT; obj : access constant PJ) return access PJ  -- /usr/gnat/include/proj.h:1098
   with Import => True, 
        Convention => C, 
        External_Name => "proj_coordoperation_create_inverse";

   function proj_concatoperation_get_step_count (ctx : access PJ_CONTEXT; concatoperation : access constant PJ) return int  -- /usr/gnat/include/proj.h:1101
   with Import => True, 
        Convention => C, 
        External_Name => "proj_concatoperation_get_step_count";

   function proj_concatoperation_get_step
     (ctx : access PJ_CONTEXT;
      concatoperation : access constant PJ;
      i_step : int) return access PJ  -- /usr/gnat/include/proj.h:1104
   with Import => True, 
        Convention => C, 
        External_Name => "proj_concatoperation_get_step";

end libproj.proj_h;
