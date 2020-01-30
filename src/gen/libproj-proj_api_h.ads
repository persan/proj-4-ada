pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;


package libproj.proj_api_h is

   PJ_VERSION : constant := 480;  --  /usr/include/proj_api.h:43

   RAD_TO_DEG : constant := 57.29577951308232;  --  /usr/include/proj_api.h:47
   DEG_TO_RAD : constant := 0.0174532925199432958;  --  /usr/include/proj_api.h:48
   --  unsupported macro: projXY projUV
   --  unsupported macro: projLP projUV

   PJ_LOG_NONE : constant := 0;  --  /usr/include/proj_api.h:124
   PJ_LOG_ERROR : constant := 1;  --  /usr/include/proj_api.h:125
   PJ_LOG_DEBUG_MAJOR : constant := 2;  --  /usr/include/proj_api.h:126
   PJ_LOG_DEBUG_MINOR : constant := 3;  --  /usr/include/proj_api.h:127

  --*****************************************************************************
  -- * $Id: proj_api.h 2160 2012-02-15 23:51:45Z warmerdam $
  -- *
  -- * Project:  PROJ.4
  -- * Purpose:  Public (application) include file for PROJ.4 API, and constants.
  -- * Author:   Frank Warmerdam, <warmerdam@pobox.com>
  -- *
  -- ******************************************************************************
  -- * Copyright (c) 2001, Frank Warmerdam <warmerdam@pobox.com>
  -- *
  -- * Permission is hereby granted, free of charge, to any person obtaining a
  -- * copy of this software and associated documentation files (the "Software"),
  -- * to deal in the Software without restriction, including without limitation
  -- * the rights to use, copy, modify, merge, publish, distribute, sublicense,
  -- * and/or sell copies of the Software, and to permit persons to whom the
  -- * Software is furnished to do so, subject to the following conditions:
  -- *
  -- * The above copyright notice and this permission notice shall be included
  -- * in all copies or substantial portions of the Software.
  -- *
  -- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
  -- * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  -- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
  -- * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  -- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  -- * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  -- * DEALINGS IN THE SOFTWARE.
  -- **************************************************************************** 

  -- General projections header file  
  -- standard inclusions  
  -- Try to update this every version!  
  -- global release id string  
   pj_release : aliased Interfaces.C.char_array (size_t)  -- /usr/include/proj_api.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "pj_release";

  -- global error return code  
   pj_errno : aliased int  -- /usr/include/proj_api.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "pj_errno";

   --  skipped anonymous struct anon_58

   type projUV is record
      u : aliased double;  -- /usr/include/proj_api.h:54
      v : aliased double;  -- /usr/include/proj_api.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/proj_api.h:54

   type projPJ is new System.Address;  -- /usr/include/proj_api.h:55

   type projCtx is new System.Address;  -- /usr/include/proj_api.h:58

  -- procedure prototypes  
   function pj_fwd (arg1 : projUV; arg2 : projPJ) return projUV  -- /usr/include/proj_api.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "pj_fwd";

   function pj_inv (arg1 : projUV; arg2 : projPJ) return projUV  -- /usr/include/proj_api.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "pj_inv";

   function pj_transform
     (src : projPJ;
      dst : projPJ;
      point_count : long;
      point_offset : int;
      x : access double;
      y : access double;
      z : access double) return int  -- /usr/include/proj_api.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "pj_transform";

   function pj_datum_transform
     (src : projPJ;
      dst : projPJ;
      point_count : long;
      point_offset : int;
      x : access double;
      y : access double;
      z : access double) return int  -- /usr/include/proj_api.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "pj_datum_transform";

   function pj_geocentric_to_geodetic
     (a : double;
      es : double;
      point_count : long;
      point_offset : int;
      x : access double;
      y : access double;
      z : access double) return int  -- /usr/include/proj_api.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "pj_geocentric_to_geodetic";

   function pj_geodetic_to_geocentric
     (a : double;
      es : double;
      point_count : long;
      point_offset : int;
      x : access double;
      y : access double;
      z : access double) return int  -- /usr/include/proj_api.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "pj_geodetic_to_geocentric";

   function pj_compare_datums (srcdefn : projPJ; dstdefn : projPJ) return int  -- /usr/include/proj_api.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "pj_compare_datums";

   function pj_apply_gridshift
     (arg1 : projCtx;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      point_count : long;
      point_offset : int;
      x : access double;
      y : access double;
      z : access double) return int  -- /usr/include/proj_api.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "pj_apply_gridshift";

   procedure pj_deallocate_grids  -- /usr/include/proj_api.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "pj_deallocate_grids";

   procedure pj_clear_initcache  -- /usr/include/proj_api.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "pj_clear_initcache";

   function pj_is_latlong (arg1 : projPJ) return int  -- /usr/include/proj_api.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "pj_is_latlong";

   function pj_is_geocent (arg1 : projPJ) return int  -- /usr/include/proj_api.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "pj_is_geocent";

   procedure pj_get_spheroid_defn
     (defn : projPJ;
      major_axis : access double;
      eccentricity_squared : access double)  -- /usr/include/proj_api.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "pj_get_spheroid_defn";

   procedure pj_pr_list (arg1 : projPJ)  -- /usr/include/proj_api.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "pj_pr_list";

   procedure pj_free (arg1 : projPJ)  -- /usr/include/proj_api.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "pj_free";

   procedure pj_set_finder (arg1 : access function (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr)  -- /usr/include/proj_api.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "pj_set_finder";

   procedure pj_set_searchpath (count : int; path : System.Address)  -- /usr/include/proj_api.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "pj_set_searchpath";

   function pj_init (arg1 : int; arg2 : System.Address) return projPJ  -- /usr/include/proj_api.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "pj_init";

   function pj_init_plus (arg1 : Interfaces.C.Strings.chars_ptr) return projPJ  -- /usr/include/proj_api.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "pj_init_plus";

   function pj_init_ctx
     (arg1 : projCtx;
      arg2 : int;
      arg3 : System.Address) return projPJ  -- /usr/include/proj_api.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "pj_init_ctx";

   function pj_init_plus_ctx (arg1 : projCtx; arg2 : Interfaces.C.Strings.chars_ptr) return projPJ  -- /usr/include/proj_api.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "pj_init_plus_ctx";

   function pj_get_def (arg1 : projPJ; arg2 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/proj_api.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "pj_get_def";

   function pj_latlong_from_proj (arg1 : projPJ) return projPJ  -- /usr/include/proj_api.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "pj_latlong_from_proj";

   function pj_malloc (arg1 : size_t) return System.Address  -- /usr/include/proj_api.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "pj_malloc";

   procedure pj_dalloc (arg1 : System.Address)  -- /usr/include/proj_api.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "pj_dalloc";

   function pj_strerrno (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/proj_api.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "pj_strerrno";

   function pj_get_errno_ref return access int  -- /usr/include/proj_api.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "pj_get_errno_ref";

   function pj_get_release return Interfaces.C.Strings.chars_ptr  -- /usr/include/proj_api.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "pj_get_release";

   procedure pj_acquire_lock  -- /usr/include/proj_api.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "pj_acquire_lock";

   procedure pj_release_lock  -- /usr/include/proj_api.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "pj_release_lock";

   procedure pj_cleanup_lock  -- /usr/include/proj_api.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "pj_cleanup_lock";

   function pj_get_default_ctx return projCtx  -- /usr/include/proj_api.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "pj_get_default_ctx";

   function pj_get_ctx (arg1 : projPJ) return projCtx  -- /usr/include/proj_api.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "pj_get_ctx";

   procedure pj_set_ctx (arg1 : projPJ; arg2 : projCtx)  -- /usr/include/proj_api.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "pj_set_ctx";

   function pj_ctx_alloc return projCtx  -- /usr/include/proj_api.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_alloc";

   procedure pj_ctx_free (arg1 : projCtx)  -- /usr/include/proj_api.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_free";

   function pj_ctx_get_errno (arg1 : projCtx) return int  -- /usr/include/proj_api.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_get_errno";

   procedure pj_ctx_set_errno (arg1 : projCtx; arg2 : int)  -- /usr/include/proj_api.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_set_errno";

   procedure pj_ctx_set_debug (arg1 : projCtx; arg2 : int)  -- /usr/include/proj_api.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_set_debug";

   procedure pj_ctx_set_logger (arg1 : projCtx; arg2 : access procedure
        (arg1 : System.Address;
         arg2 : int;
         arg3 : Interfaces.C.Strings.chars_ptr))  -- /usr/include/proj_api.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_set_logger";

   procedure pj_ctx_set_app_data (arg1 : projCtx; arg2 : System.Address)  -- /usr/include/proj_api.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_set_app_data";

   function pj_ctx_get_app_data (arg1 : projCtx) return System.Address  -- /usr/include/proj_api.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "pj_ctx_get_app_data";

   procedure pj_log
     (ctx : projCtx;
      level : int;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/proj_api.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "pj_log";

   procedure pj_stderr_logger
     (arg1 : System.Address;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/proj_api.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "pj_stderr_logger";

end libproj.proj_api_h;
