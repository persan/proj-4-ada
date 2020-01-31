with Ada.Unchecked_Conversion;
with Libproj.Proj_H;
package body Proj4 is
   use Libproj.Proj_H;
   ----------------
   -- Pj_Release --
   ----------------

   function Release return String is
   begin
      return Interfaces.C.To_Ada (Libproj.Proj_H.Pj_Release);
   end Release;

   -------------------------
   -- Proj_Context_Create --

   -------------------------
   procedure Initialize (Object : in out PJ_CONTEXT) is
   begin
      Object.Impl := Proj_Context_Create;
   end;
   procedure Finalize   (Object : in out PJ_CONTEXT) is
   begin
      Object.Impl := Proj_Context_Destroy (Ctx => Object.Impl);
      Object.Impl := null;
   end;



   procedure Set_File_Finder
     (Ctx       : PJ_CONTEXT;
      Finder    : not null access function (Ctx : not null access PJ_CONTEXT;
                                            Name : String;
                                            User_Data : in out User_Data_Type) return String;
      User_Data : in out User_Data_Type) is
      function Local_Finder
        (Arg1 : access Libproj.Proj_H.PJ_CONTEXT;
         Arg2 : Interfaces.C.Strings.chars_ptr;
         Arg3 : System.Address) return Interfaces.C.Strings.chars_ptr with Convention => C;
      function Local_Finder
        (Arg1 : access Libproj.Proj_H.PJ_CONTEXT;
         Arg2 : Interfaces.C.Strings.chars_ptr;
         Arg3 : System.Address) return Interfaces.C.Strings.chars_ptr is
      begin
         return Interfaces.C.Strings.Null_Ptr;
      end;
   begin
      Proj_Context_Set_File_Finder (Ctx       => Ctx.Impl,
                                    Finder    => Local_Finder'Unrestricted_Access,
                                    User_Data => User_Data'Address);
   end;

   procedure Set_Search_Paths
     (Ctx         : PJ_CONTEXT;
      Paths       : GNAT.Strings.String_List) is
   begin
      Libproj.Proj_H.Proj_Context_Set_Search_Paths
        (Ctx         => Ctx.Impl,
         Count_Paths => Paths'Length ,
         Paths       => Paths (Paths'First)'Address);
   end;


   procedure Use_Proj4_Init_Rules (Ctx : access PJ_CONTEXT; Enable : Boolean) is
   begin
      Libproj.Proj_H.Proj_Context_Use_Proj4_Init_Rules (Ctx.Impl, Boolean'Pos (Enable));
   end;

   function Get_Use_Proj4_Init_Rules
     (Ctx                   : access PJ_CONTEXT;
      From_Legacy_Code_Path : Boolean) return Boolean is
   begin
      return Libproj.Proj_H.Proj_Context_Get_Use_Proj4_Init_Rules
        (Ctx.Impl, Boolean'Pos (From_Legacy_Code_Path)) /= 0;

   end;


   function To_Chars_Ptr (Src : String) return Interfaces.C.Strings.chars_ptr is
      function Conv is new Ada.Unchecked_Conversion
        (Source => System.Address,
         Target => Interfaces.C.Strings.chars_ptr);
   begin
      return Conv (Src (Src'First)'Address);
   end;

   -----------------
   -- Proj_Create --
   -----------------

   function Create
     (Ctx : PJ_CONTEXT; Definition : String) return PJ'Class
   is
      Def : constant String := Definition & ASCII.NUL;
   begin
      return Ret : Pj do
         Ret.Impl := Libproj.Proj_H.Proj_Create (Ctx.Impl, To_Chars_Ptr (Def));
         if Ret.Impl = null then
            raise PROJ_ERROR with Libproj.Proj_H.Proj_Context_Errno (Ctx.Impl)'Img;
         end if;
      end return;
   end Create;

   ----------------------
   -- Proj_Create_Argv --
   ----------------------

   function Create
     (Ctx : PJ_CONTEXT; Argv : GNAT.Strings.String_List)
      return PJ'Class
   is
   begin
      return Ret : Pj do
         Ret.Impl := Libproj.Proj_H.Proj_Create_Argv (Ctx.Impl, Argv'Length, Argv (Argv'First)'Address);
         if Ret.Impl = null then
            raise PROJ_ERROR with Libproj.Proj_H.Proj_Context_Errno (Ctx.Impl)'Img;
         end if;
      end return;
   end Create;

   ----------------------------
   -- Proj_Create_Crs_To_Crs --
   ----------------------------

   function Create
     (Ctx        : PJ_CONTEXT;
      Source_Crs : String;
      Target_Crs : String;
      Area       : PJ_AREA'Class) return PJ'Class
   is
      Src : constant String := Source_Crs & ASCII.Nul;
      Tgt : constant String := Target_Crs & ASCII.Nul;
   begin
      return Ret : Pj do
         Ret.Impl := Libproj.Proj_H.Proj_Create_Crs_To_Crs
           (Ctx        => Ctx.Impl,
            Source_Crs => To_Chars_Ptr (Src) ,
            Target_Crs => To_Chars_Ptr (Tgt) ,
            Area       => AREA.Impl);
         if Ret.Impl = null then
            raise PROJ_ERROR with Libproj.Proj_H.Proj_Context_Errno (Ctx.Impl)'Img;
         end if;
      end return;
   end Create;

   ------------------------------------
   -- Proj_Create_Crs_To_Crs_From_Pj --
   ------------------------------------

   function Create
     (Ctx        : PJ_CONTEXT;
      Source_Crs : PJ'Class;
      Target_Crs : PJ'Class;
      Area       : PJ_AREA'Class;
      Options    : System.Address) return PJ'Class
   is
   begin
      return Ret : Pj do
         Ret.Impl := Libproj.Proj_H.Proj_Create_Crs_To_Crs_From_Pj
           (Ctx        => Ctx.Impl,
            Source_Crs => Source_Crs.Impl,
            Target_Crs => Target_Crs.Impl,
            Area       => AREA.Impl,
            Options    => Options);
      end return;
   end Create;


   ------------------
   -- Proj_Destroy --
   ------------------

   procedure Finalize   (Object : in out PJ) is
   begin
      Object.Impl := Libproj.Proj_H.Proj_Destroy (Object.Impl);
   end;

   --------------------------------------
   -- Proj_Normalize_For_Visualization --
   --------------------------------------

   function Normalize_For_Visualization
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class
   is
   begin
      return Ret : Pj do
         Ret.Impl := Libproj.Proj_H.Proj_Normalize_For_Visualization
           (Ctx => Ctx.Impl,
            Obj => Obj.Impl);
      end return;
   end Normalize_For_Visualization;

   -------------------------
   -- Proj_Assign_Context --
   -------------------------

   procedure Assign_Context (The_Pj : PJ; Ctx : PJ_CONTEXT'Class)
   is
   begin
      Libproj.Proj_H.Proj_Assign_Context
        (The_Pj => The_Pj.Impl,
         Ctx    => Ctx.Impl);
   end Assign_Context;

   ------------------
   -- Proj_Destroy --
   ------------------

   function Destroy (P : PJ) return PJ'Class is
   begin
      return Ret : Pj do
         Ret.Impl := Libproj.Proj_H.Proj_Destroy
           (P => P.Impl);
      end return;
   end Destroy;

   ----------------------
   -- Proj_Area_Create --
   ----------------------
   procedure Initialize (Object : in out PJ_AREA) is
   begin
      Object.Impl := Libproj.Proj_H.Proj_Area_Create;
   end;

   ------------------------
   -- Proj_Area_Set_Bbox --
   ------------------------

   procedure Set_Bbox
     (Area             : in out PJ_AREA;
      West_Lon_Degree  : Long_Float;
      South_Lat_Degree : Long_Float;
      East_Lon_Degree  : Long_Float;
      North_Lat_Degree : Long_Float)
   is
   begin
      Libproj.Proj_H.Proj_Area_Set_Bbox
        (Area             => Area.Impl,
         West_Lon_Degree  => Double (West_Lon_Degree),
         South_Lat_Degree => Double (South_Lat_Degree),
         East_Lon_Degree  => Double (East_Lon_Degree),
         North_Lat_Degree => Double (North_Lat_Degree));

   end Set_Bbox;

   -----------------------
   -- Proj_Area_Destroy --
   -----------------------
   procedure Finalize   (Object : in out PJ_AREA) is
   begin
      Libproj.Proj_H.Proj_Area_Destroy (Area => Object.Impl);
   end;

   ------------------------
   -- Proj_Angular_Input --
   ------------------------
   Direction_Map : constant array (Direction) of int := (-1, 0, 1);
   procedure Angular_Input (P : PJ; Dir : DIRECTION)
   is
      Dummy_Ret : int;
   begin
      Dummy_Ret := Libproj.Proj_H.Proj_Angular_Input (P.Impl, Direction_Map (Dir));
   end Angular_Input;

   -------------------------
   -- Proj_Angular_Output --
   -------------------------

   procedure Angular_Output (P : PJ; Dir : DIRECTION)
   is
      Dummy_Ret : int;
   begin
      Dummy_Ret := Libproj.Proj_H.Proj_Angular_Output (P.Impl, Direction_Map (Dir));
   end Angular_Output;

   ----------------
   -- Proj_Trans --
   ----------------
   function Convert_Down is new Ada.Unchecked_Conversion (PJ_COORD, Libproj.Proj_H.PJ_COORD);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_COORD, PJ_COORD);
   pragma Compile_Time_Error (PJ_COORD'Size /= Libproj.Proj_H.PJ_COORD'Size, "Invalid maping of PJ_COORD");

   function Trans
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD) return PJ_COORD
   is
   begin
      return Convert_Up (Libproj.Proj_H.Proj_Trans (P.Impl, Direction_Map (Dir), Convert_Down (Coord)));
   end Trans;

   ----------------------
   -- Proj_Trans_Array --
   ----------------------

   function Trans
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD_Array) return int
   is
      Ret : int;
   begin
      Ret := Libproj.Proj_H.Proj_Trans_Array (P.Impl, Direction_Map (Dir), Coord'Length, Convert_Down (Coord (Coord'First))'Unrestricted_Access);
      return Ret;
   end Trans;

   procedure Trans
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD_Array)
   is
      Ret : int;
   begin
      Ret := Libproj.Proj_H.Proj_Trans_Array (P.Impl, Direction_Map (Dir), Coord'Length, Convert_Down (Coord (Coord'First))'Unrestricted_Access);
      if Ret /= 0 then
         raise PROJ_ERROR with "Code :" & Ret'Image;
      end if;
   end Trans;

   ----------------
   -- Proj_Coord --
   ----------------

   function Coord
     (X : Long_Float; Y : Long_Float; Z : Long_Float; T : Long_Float) return PJ_COORD
   is
   begin
      return Convert_Up (Libproj.Proj_H.Proj_Coord (X => Double (X), Y => Double (Y), Z => Double (Z), T => Double (T)));
   end Coord;

   --------------------
   -- Proj_Roundtrip --
   --------------------

   function Roundtrip
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD_Array) return Long_Float
   is
   begin
      return Long_Float(Libproj.Proj_H.Proj_Roundtrip (P.Impl, Direction_Map (Dir), Coord'Length, Convert_Down (Coord (Coord'First))'Unrestricted_Access));
   end Roundtrip;

   ------------------
   -- Proj_Lp_Dist --
   ------------------

   function Proj_Lp_Dist
     (P : access constant PJ; A : PJ_COORD; B : PJ_COORD) return Double
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Lp_Dist unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Lp_Dist";
   end Proj_Lp_Dist;

   -------------------
   -- Proj_Lpz_Dist --
   -------------------

   function Proj_Lpz_Dist
     (P : access constant PJ; A : PJ_COORD; B : PJ_COORD) return Double
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Lpz_Dist unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Lpz_Dist";
   end Proj_Lpz_Dist;

   ------------------
   -- Proj_Xy_Dist --
   ------------------

   function Proj_Xy_Dist (A : PJ_COORD; B : PJ_COORD) return Double is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Xy_Dist unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Xy_Dist";
   end Proj_Xy_Dist;

   -------------------
   -- Proj_Xyz_Dist --
   -------------------

   function Proj_Xyz_Dist (A : PJ_COORD; B : PJ_COORD) return Double is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Xyz_Dist unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Xyz_Dist";
   end Proj_Xyz_Dist;

   ---------------
   -- Proj_Geod --
   ---------------

   function Proj_Geod
     (P : access constant PJ; A : PJ_COORD; B : PJ_COORD) return PJ_COORD
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Geod unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Geod";
   end Proj_Geod;

   ------------------------
   -- Proj_Context_Errno --
   ------------------------

   function Proj_Context_Errno (Ctx : access PJ_CONTEXT) return int is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Context_Errno unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Context_Errno";
   end Proj_Context_Errno;

   ----------------
   -- Proj_Errno --
   ----------------

   function Proj_Errno (P : access constant PJ) return int is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Errno unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Errno";
   end Proj_Errno;

   --------------------
   -- Proj_Errno_Set --
   --------------------

   function Proj_Errno_Set (P : access constant PJ; Err : int) return int is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Errno_Set unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Errno_Set";
   end Proj_Errno_Set;

   ----------------------
   -- Proj_Errno_Reset --
   ----------------------

   function Proj_Errno_Reset (P : access constant PJ) return int is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Errno_Reset unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Errno_Reset";
   end Proj_Errno_Reset;

   ------------------------
   -- Proj_Errno_Restore --
   ------------------------

   function Proj_Errno_Restore (P : access constant PJ; Err : int) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Errno_Restore unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Errno_Restore";
   end Proj_Errno_Restore;

   -----------------------
   -- Proj_Errno_String --
   -----------------------

   function Proj_Errno_String (Err : int) return String is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Errno_String unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Errno_String";
   end Proj_Errno_String;

   --------------------
   -- Proj_Log_Level --
   --------------------

   function Proj_Log_Level
     (Ctx : access PJ_CONTEXT; Log_Level : PJ_LOG_LEVEL) return PJ_LOG_LEVEL
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Log_Level unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Log_Level";
   end Proj_Log_Level;

   -------------------
   -- Proj_Log_Func --
   -------------------

   procedure Proj_Log_Func
     (Ctx  : access PJ_CONTEXT; App_Data : System.Address;
      Logf : PJ_LOG_FUNCTION)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Log_Func unimplemented");
      raise Program_Error with "Unimplemented procedure Proj_Log_Func";
   end Proj_Log_Func;

   ------------------
   -- Proj_Factors --
   ------------------

   function Proj_Factors (P : access PJ; Lp : PJ_COORD) return PJ_FACTORS is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Factors unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Factors";
   end Proj_Factors;

   ---------------
   -- Proj_Info --
   ---------------

   function Proj_Info return PJ_INFO is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Info unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Info";
   end Proj_Info;

   ------------------
   -- Proj_Pj_Info --
   ------------------

   function Proj_Pj_Info (P : access PJ) return PJ_PROJ_INFO is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Pj_Info unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Pj_Info";
   end Proj_Pj_Info;

   --------------------
   -- Proj_Grid_Info --
   --------------------

   function Proj_Grid_Info (Gridname : String) return PJ_GRID_INFO is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Grid_Info unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Grid_Info";
   end Proj_Grid_Info;

   --------------------
   -- Proj_Init_Info --
   --------------------

   function Proj_Init_Info (Initname : String) return PJ_INIT_INFO is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Init_Info unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Init_Info";
   end Proj_Init_Info;

   --------------------------
   -- Proj_List_Operations --
   --------------------------

   function Proj_List_Operations return access constant PJ_OPERATIONS is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Operations unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_List_Operations";
   end Proj_List_Operations;

   ---------------------
   -- Proj_List_Ellps --
   ---------------------

   function Proj_List_Ellps return access constant PJ_ELLPS is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Ellps unimplemented");
      return raise Program_Error with "Unimplemented function Proj_List_Ellps";
   end Proj_List_Ellps;

   ---------------------
   -- Proj_List_Units --
   ---------------------

   function Proj_List_Units return access constant PJ_UNITS is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Units unimplemented");
      return raise Program_Error with "Unimplemented function Proj_List_Units";
   end Proj_List_Units;

   -----------------------------
   -- Proj_List_Angular_Units --
   -----------------------------

   function Proj_List_Angular_Units return access constant PJ_UNITS is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Angular_Units unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_List_Angular_Units";
   end Proj_List_Angular_Units;

   -------------------------------
   -- Proj_List_Prime_Meridians --
   -------------------------------

   function Proj_List_Prime_Meridians return access constant PJ_PRIME_MERIDIANS
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Prime_Meridians unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_List_Prime_Meridians";
   end Proj_List_Prime_Meridians;

   ----------------
   -- Proj_Torad --
   ----------------

   function Proj_Torad (Angle_In_Degrees : Double) return Double is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Torad unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Torad";
   end Proj_Torad;

   ----------------
   -- Proj_Todeg --
   ----------------

   function Proj_Todeg (Angle_In_Radians : Double) return Double is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Todeg unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Todeg";
   end Proj_Todeg;

   -----------------
   -- Proj_Dmstor --
   -----------------

   function Proj_Dmstor (C_Is : String; Rs : System.Address) return Double is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Dmstor unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Dmstor";
   end Proj_Dmstor;

   -----------------
   -- Proj_Rtodms --
   -----------------

   function Proj_Rtodms
     (S : String; R : Double; Pos : int; Neg : int) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Rtodms unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Rtodms";
   end Proj_Rtodms;

   ------------------
   -- Proj_Cleanup --
   ------------------

   procedure Proj_Cleanup is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Cleanup unimplemented");
      raise Program_Error with "Unimplemented procedure Proj_Cleanup";
   end Proj_Cleanup;

   ------------------------------
   -- Proj_String_List_Destroy --
   ------------------------------

   procedure Proj_String_List_Destroy (List : PROJ_STRING_LIST) is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_String_List_Destroy unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_String_List_Destroy";
   end Proj_String_List_Destroy;

   -----------------------------------------
   -- Proj_Context_Set_Autoclose_Database --
   -----------------------------------------

   procedure Proj_Context_Set_Autoclose_Database
     (Ctx : access PJ_CONTEXT; Autoclose : int)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Context_Set_Autoclose_Database unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Context_Set_Autoclose_Database";
   end Proj_Context_Set_Autoclose_Database;

   ------------------------------------
   -- Proj_Context_Set_Database_Path --
   ------------------------------------

   function Proj_Context_Set_Database_Path
     (Ctx     : access PJ_CONTEXT; DbPath : String; AuxDbPaths : System.Address;
      Options : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Context_Set_Database_Path unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Context_Set_Database_Path";
   end Proj_Context_Set_Database_Path;

   ------------------------------------
   -- Proj_Context_Get_Database_Path --
   ------------------------------------

   function Proj_Context_Get_Database_Path
     (Ctx : access PJ_CONTEXT) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Context_Get_Database_Path unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Context_Get_Database_Path";
   end Proj_Context_Get_Database_Path;

   ----------------------------------------
   -- Proj_Context_Get_Database_Metadata --
   ----------------------------------------

   function Proj_Context_Get_Database_Metadata
     (Ctx : access PJ_CONTEXT; Key : String) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Context_Get_Database_Metadata unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Context_Get_Database_Metadata";
   end Proj_Context_Get_Database_Metadata;

   ------------------------------------
   -- Proj_Context_Guess_Wkt_Dialect --
   ------------------------------------

   function Proj_Context_Guess_Wkt_Dialect
     (Ctx : access PJ_CONTEXT; Wkt : String) return PJ_GUESSED_WKT_DIALECT
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Context_Guess_Wkt_Dialect unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Context_Guess_Wkt_Dialect";
   end Proj_Context_Guess_Wkt_Dialect;

   --------------------------
   -- Proj_Create_From_Wkt --
   --------------------------

   function Proj_Create_From_Wkt
     (Ctx                : PJ_CONTEXT;
      Wkt                : String;
      Options            : System.Address;
      Out_Warnings       : System.Address;
      Out_Grammar_Errors : System.Address) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Create_From_Wkt unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Create_From_Wkt";
   end Proj_Create_From_Wkt;

   -------------------------------
   -- Proj_Create_From_Database --
   -------------------------------

   function Proj_Create_From_Database
     (Ctx                         : PJ_CONTEXT;
      Auth_Name                   : String;
      Code                        : String;
      Category                    : PJ_CATEGORY;
      UsePROJAlternativeGridNames : int;
      Options                     : System.Address) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Create_From_Database unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Create_From_Database";
   end Proj_Create_From_Database;

   -------------------------------------
   -- Proj_Uom_Get_Info_From_Database --
   -------------------------------------

   function Proj_Uom_Get_Info_From_Database
     (Ctx             : PJ_CONTEXT;
      Auth_Name       : String;
      Code            : String;
      Out_Name        : System.Address;
      Out_Conv_Factor : in out Long_Float;
      Out_Category    : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Uom_Get_Info_From_Database unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Uom_Get_Info_From_Database";
   end Proj_Uom_Get_Info_From_Database;

   --------------------------------------
   -- Proj_Grid_Get_Info_From_Database --
   --------------------------------------

   function Proj_Grid_Get_Info_From_Database
     (Ctx              : access PJ_CONTEXT; Grid_Name : String;
      Out_Full_Name    : System.Address; Out_Package_Name : System.Address;
      Out_Url          : System.Address; Out_Direct_Download : access int;
      Out_Open_License : access int; Out_Available : access int) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Grid_Get_Info_From_Database unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Grid_Get_Info_From_Database";
   end Proj_Grid_Get_Info_From_Database;

   ----------------
   -- Proj_Clone --
   ----------------

   function Proj_Clone
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Clone unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Clone";
   end Proj_Clone;

   ---------------------------
   -- Proj_Create_From_Name --
   ---------------------------

   function Proj_Create_From_Name
     (Ctx              : access PJ_CONTEXT; Auth_Name : String; SearchedName : String;
      Types            : access PJ_TYPE; TypesCount : Size_T; ApproximateMatch : int;
      LimitResultCount : Size_T; Options : System.Address)
      return access PJ_OBJ_LIST
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Create_From_Name unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Create_From_Name";
   end Proj_Create_From_Name;

   -------------------
   -- Proj_Get_Type --
   -------------------

   function Proj_Get_Type (Obj : access constant PJ) return PJ_TYPE is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Type unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Get_Type";
   end Proj_Get_Type;

   ------------------------
   -- Proj_Is_Deprecated --
   ------------------------

   function Proj_Is_Deprecated (Obj : access constant PJ) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Is_Deprecated unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Is_Deprecated";
   end Proj_Is_Deprecated;

   -----------------------------
   -- Proj_Get_Non_Deprecated --
   -----------------------------

   function Proj_Get_Non_Deprecated
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return access PJ_OBJ_LIST
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Non_Deprecated unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Non_Deprecated";
   end Proj_Get_Non_Deprecated;

   ---------------------------
   -- Proj_Is_Equivalent_To --
   ---------------------------

   function Proj_Is_Equivalent_To
     (Obj       : access constant PJ; Other : access constant PJ;
      Criterion : PJ_COMPARISON_CRITERION) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Is_Equivalent_To unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Is_Equivalent_To";
   end Proj_Is_Equivalent_To;

   ------------------------------------
   -- Proj_Is_Equivalent_To_With_Ctx --
   ------------------------------------

   function Proj_Is_Equivalent_To_With_Ctx
     (Ctx       : PJ_CONTEXT;
      Obj       : PJ'Class;
      Other     : PJ'Class;
      Criterion : PJ_COMPARISON_CRITERION) return Boolean
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Is_Equivalent_To_With_Ctx unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Is_Equivalent_To_With_Ctx";
   end Proj_Is_Equivalent_To_With_Ctx;

   -----------------
   -- Proj_Is_Crs --
   -----------------

   function Proj_Is_Crs (Obj : access constant PJ) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_Is_Crs unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Is_Crs";
   end Proj_Is_Crs;

   -------------------
   -- Proj_Get_Name --
   -------------------

   function Proj_Get_Name (Obj : access constant PJ) return String is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Name unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Get_Name";
   end Proj_Get_Name;

   ---------------------------
   -- Proj_Get_Id_Auth_Name --
   ---------------------------

   function Proj_Get_Id_Auth_Name
     (Obj : access constant PJ; Index : int) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Id_Auth_Name unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Id_Auth_Name";
   end Proj_Get_Id_Auth_Name;

   ----------------------
   -- Proj_Get_Id_Code --
   ----------------------

   function Proj_Get_Id_Code
     (Obj : access constant PJ; Index : int) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Id_Code unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Id_Code";
   end Proj_Get_Id_Code;

   ----------------------
   -- Proj_Get_Remarks --
   ----------------------

   function Proj_Get_Remarks (Obj : access constant PJ) return String is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Remarks unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Remarks";
   end Proj_Get_Remarks;

   --------------------
   -- Proj_Get_Scope --
   --------------------

   function Proj_Get_Scope (Obj : access constant PJ) return String is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Scope unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Get_Scope";
   end Proj_Get_Scope;

   --------------------------
   -- Proj_Get_Area_Of_Use --
   --------------------------

   function Proj_Get_Area_Of_Use
     (Ctx                  : PJ_CONTEXT;
      Obj                  : PJ'Class;
      Out_West_Lon_Degree  : in out Long_Float;
      Out_South_Lat_Degree : in out Long_Float;
      Out_East_Lon_Degree  : in out Long_Float;
      Out_North_Lat_Degree : in out Long_Float;
      Out_Area_Name        : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Area_Of_Use unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Area_Of_Use";
   end Proj_Get_Area_Of_Use;

   -----------------
   -- Proj_As_Wkt --
   -----------------

   function Proj_As_Wkt
     (Ctx     : access PJ_CONTEXT;
      Obj     : PJ'Class;
      C_Type  : PJ_WKT_TYPE;
      Options : System.Address) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Proj_As_Wkt unimplemented");
      return raise Program_Error with "Unimplemented function Proj_As_Wkt";
   end Proj_As_Wkt;

   -------------------------
   -- Proj_As_Proj_String --
   -------------------------

   function Proj_As_Proj_String
     (Ctx     : access PJ_CONTEXT;
      Obj     : PJ'Class;
      C_Type  : PJ_PROJ_STRING_TYPE;
      Options : System.Address) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_As_Proj_String unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_As_Proj_String";
   end Proj_As_Proj_String;

   ----------------------
   -- Proj_As_Projjson --
   ----------------------

   function Proj_As_Projjson
     (Ctx     : access PJ_CONTEXT;
      Obj     : PJ'Class;
      Options : System.Address) return String
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_As_Projjson unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_As_Projjson";
   end Proj_As_Projjson;

   -------------------------
   -- Proj_Get_Source_Crs --
   -------------------------

   function Proj_Get_Source_Crs
     (Ctx : access PJ_CONTEXT; Obj : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Source_Crs unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Source_Crs";
   end Proj_Get_Source_Crs;

   -------------------------
   -- Proj_Get_Target_Crs --
   -------------------------

   function Proj_Get_Target_Crs
     (Ctx : access PJ_CONTEXT; Obj : access PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Target_Crs unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Target_Crs";
   end Proj_Get_Target_Crs;

   -------------------
   -- Proj_Identify --
   -------------------

   function Proj_Identify
     (Ctx            : PJ_CONTEXT;
      Obj            : PJ'Class;
      Auth_Name      : String;
      Options        : System.Address;
      Out_Confidence : System.Address) return access PJ_OBJ_LIST
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Identify unimplemented");
      return raise Program_Error with "Unimplemented function Proj_Identify";
   end Proj_Identify;

   ---------------------------
   -- Proj_Int_List_Destroy --
   ---------------------------

   procedure Proj_Int_List_Destroy (List : access int) is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Int_List_Destroy unimplemented");
      raise Program_Error with "Unimplemented procedure Proj_Int_List_Destroy";
   end Proj_Int_List_Destroy;

   ----------------------------------------
   -- Proj_Get_Authorities_From_Database --
   ----------------------------------------

   function Proj_Get_Authorities_From_Database
     (Ctx : access PJ_CONTEXT) return PROJ_STRING_LIST
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Authorities_From_Database unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Authorities_From_Database";
   end Proj_Get_Authorities_From_Database;

   ----------------------------------
   -- Proj_Get_Codes_From_Database --
   ----------------------------------

   function Proj_Get_Codes_From_Database
     (Ctx              : access PJ_CONTEXT; Auth_Name : String; C_Type : PJ_TYPE;
      Allow_Deprecated : int) return PROJ_STRING_LIST
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Codes_From_Database unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Codes_From_Database";
   end Proj_Get_Codes_From_Database;

   -----------------------------------------
   -- Proj_Get_Crs_List_Parameters_Create --
   -----------------------------------------

   function Proj_Get_Crs_List_Parameters_Create
     return access PROJ_CRS_LIST_PARAMETERS
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Crs_List_Parameters_Create unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Crs_List_Parameters_Create";
   end Proj_Get_Crs_List_Parameters_Create;

   ------------------------------------------
   -- Proj_Get_Crs_List_Parameters_Destroy --
   ------------------------------------------

   procedure Proj_Get_Crs_List_Parameters_Destroy
     (Params : access PROJ_CRS_LIST_PARAMETERS)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Crs_List_Parameters_Destroy unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Get_Crs_List_Parameters_Destroy";
   end Proj_Get_Crs_List_Parameters_Destroy;

   ------------------------------------------
   -- Proj_Get_Crs_Info_List_From_Database --
   ------------------------------------------

   function Proj_Get_Crs_Info_List_From_Database
     (Ctx              : access PJ_CONTEXT; Auth_Name : String;
      Params           : access constant PROJ_CRS_LIST_PARAMETERS;
      Out_Result_Count : access int) return System.Address
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Crs_Info_List_From_Database unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Crs_Info_List_From_Database";
   end Proj_Get_Crs_Info_List_From_Database;

   --------------------------------
   -- Proj_Crs_Info_List_Destroy --
   --------------------------------

   procedure Proj_Crs_Info_List_Destroy (List : System.Address) is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Crs_Info_List_Destroy unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Crs_Info_List_Destroy";
   end Proj_Crs_Info_List_Destroy;

   -------------------------------------------
   -- Proj_Create_Operation_Factory_Context --
   -------------------------------------------

   function Proj_Create_Operation_Factory_Context
     (Ctx : access PJ_CONTEXT; Authority : String)
      return access PJ_OPERATION_FACTORY_CONTEXT
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Create_Operation_Factory_Context unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Create_Operation_Factory_Context";
   end Proj_Create_Operation_Factory_Context;

   --------------------------------------------
   -- Proj_Operation_Factory_Context_Destroy --
   --------------------------------------------

   procedure Proj_Operation_Factory_Context_Destroy
     (Ctx : access PJ_OPERATION_FACTORY_CONTEXT)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Destroy unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Destroy";
   end Proj_Operation_Factory_Context_Destroy;

   ---------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Desired_Accuracy --
   ---------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Desired_Accuracy
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT; Accuracy : Double)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Desired_Accuracy unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Desired_Accuracy";
   end Proj_Operation_Factory_Context_Set_Desired_Accuracy;

   ---------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Area_Of_Interest --
   ---------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Area_Of_Interest
     (Ctx             : access PJ_CONTEXT;
      Factory_Ctx     : access PJ_OPERATION_FACTORY_CONTEXT;
      West_Lon_Degree : Double; South_Lat_Degree : Double;
      East_Lon_Degree : Double; North_Lat_Degree : Double)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Area_Of_Interest unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Area_Of_Interest";
   end Proj_Operation_Factory_Context_Set_Area_Of_Interest;

   -------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Crs_Extent_Use --
   -------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Crs_Extent_Use
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      C_Use       : PROJ_CRS_EXTENT_USE)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Crs_Extent_Use unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Crs_Extent_Use";
   end Proj_Operation_Factory_Context_Set_Crs_Extent_Use;

   ----------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Spatial_Criterion --
   ----------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Spatial_Criterion
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      Criterion   : PROJ_SPATIAL_CRITERION)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Spatial_Criterion unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Spatial_Criterion";
   end Proj_Operation_Factory_Context_Set_Spatial_Criterion;

   --------------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Grid_Availability_Use --
   --------------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Grid_Availability_Use
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      C_Use       : PROJ_GRID_AVAILABILITY_USE)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Grid_Availability_Use unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Grid_Availability_Use";
   end Proj_Operation_Factory_Context_Set_Grid_Availability_Use;

   ------------------------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Use_Proj_Alternative_Grid_Names --
   ------------------------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Use_Proj_Alternative_Grid_Names
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT; UsePROJNames : int)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Use_Proj_Alternative_Grid_Names unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Use_Proj_Alternative_Grid_Names";
   end Proj_Operation_Factory_Context_Set_Use_Proj_Alternative_Grid_Names;

   -------------------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Allow_Use_Intermediate_Crs --
   -------------------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Allow_Use_Intermediate_Crs
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      C_Use       : PROJ_INTERMEDIATE_CRS_USE)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Allow_Use_Intermediate_Crs unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Allow_Use_Intermediate_Crs";
   end Proj_Operation_Factory_Context_Set_Allow_Use_Intermediate_Crs;

   -----------------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Allowed_Intermediate_Crs --
   -----------------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Allowed_Intermediate_Crs
     (Ctx                     : PJ_CONTEXT;
      Factory_Ctx             : PJ_OPERATION_FACTORY_CONTEXT;
      List_Of_Auth_Name_Codes : System.Address)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Allowed_Intermediate_Crs unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Allowed_Intermediate_Crs";
   end Proj_Operation_Factory_Context_Set_Allowed_Intermediate_Crs;

   -----------------------------------------------------------
   -- Proj_Operation_Factory_Context_Set_Discard_Superseded --
   -----------------------------------------------------------

   procedure Proj_Operation_Factory_Context_Set_Discard_Superseded
     (Ctx         : PJ_CONTEXT;
      Factory_Ctx : PJ_OPERATION_FACTORY_CONTEXT;
      Discard     : int)
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Operation_Factory_Context_Set_Discard_Superseded unimplemented");
      raise Program_Error
        with "Unimplemented procedure Proj_Operation_Factory_Context_Set_Discard_Superseded";
   end Proj_Operation_Factory_Context_Set_Discard_Superseded;

   ----------------------------
   -- Proj_Create_Operations --
   ----------------------------

   function Proj_Create_Operations
     (Ctx              : PJ_CONTEXT;
      Source_Crs       : PJ'Class;
      Target_Crs       : PJ'Class;
      OperationContext : access constant PJ_OPERATION_FACTORY_CONTEXT) return access PJ_OBJ_LIST
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Create_Operations unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Create_Operations";
   end Proj_Create_Operations;

   -------------------------
   -- Proj_List_Get_Count --
   -------------------------

   function Proj_List_Get_Count
     (Result : access constant PJ_OBJ_LIST) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Get_Count unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_List_Get_Count";
   end Proj_List_Get_Count;

   -------------------
   -- Proj_List_Get --
   -------------------

   function Proj_List_Get
     (Ctx    : PJ_CONTEXT;
      Result : access constant PJ_OBJ_LIST;
      Index  : int) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Get unimplemented");
      return raise Program_Error with "Unimplemented function Proj_List_Get";
   end Proj_List_Get;

   -----------------------
   -- Proj_List_Destroy --
   -----------------------

   procedure Proj_List_Destroy (Result : access PJ_OBJ_LIST) is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_List_Destroy unimplemented");
      raise Program_Error with "Unimplemented procedure Proj_List_Destroy";
   end Proj_List_Destroy;

   -------------------------------
   -- Proj_Crs_Get_Geodetic_Crs --
   -------------------------------

   function Proj_Crs_Get_Geodetic_Crs
     (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Crs_Get_Geodetic_Crs unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Crs_Get_Geodetic_Crs";
   end Proj_Crs_Get_Geodetic_Crs;

   -----------------------------------
   -- Proj_Crs_Get_Horizontal_Datum --
   -----------------------------------

   function Proj_Crs_Get_Horizontal_Datum
     (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Crs_Get_Horizontal_Datum unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Crs_Get_Horizontal_Datum";
   end Proj_Crs_Get_Horizontal_Datum;

   --------------------------
   -- Proj_Crs_Get_Sub_Crs --
   --------------------------

   function Proj_Crs_Get_Sub_Crs
     (Ctx   : PJ_CONTEXT;
      Crs   : PJ'Class;
      Index : int) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Crs_Get_Sub_Crs unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Crs_Get_Sub_Crs";
   end Proj_Crs_Get_Sub_Crs;

   ------------------------
   -- Proj_Crs_Get_Datum --
   ------------------------

   function Proj_Crs_Get_Datum
     (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Crs_Get_Datum unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Crs_Get_Datum";
   end Proj_Crs_Get_Datum;

   ------------------------------------
   -- Proj_Crs_Get_Coordinate_System --
   ------------------------------------

   function Proj_Crs_Get_Coordinate_System
     (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Crs_Get_Coordinate_System unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Crs_Get_Coordinate_System";
   end Proj_Crs_Get_Coordinate_System;

   ----------------------
   -- Proj_Cs_Get_Type --
   ----------------------

   function Proj_Cs_Get_Type
     (Ctx : PJ_CONTEXT; Cs : PJ'Class) return PJ_COORDINATE_SYSTEM_TYPE
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Cs_Get_Type unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Cs_Get_Type";
   end Proj_Cs_Get_Type;

   ----------------------------
   -- Proj_Cs_Get_Axis_Count --
   ----------------------------

   function Proj_Cs_Get_Axis_Count
     (Ctx : PJ_CONTEXT; Cs : PJ'Class) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Cs_Get_Axis_Count unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Cs_Get_Axis_Count";
   end Proj_Cs_Get_Axis_Count;

   ---------------------------
   -- Proj_Cs_Get_Axis_Info --
   ---------------------------

   function Proj_Cs_Get_Axis_Info
     (Ctx                  : PJ_CONTEXT;
      Cs                   : PJ'Class;
      Index                : int;
      Out_Name             : System.Address;
      Out_Abbrev           : System.Address;
      Out_Direction        : System.Address;
      Out_Unit_Conv_Factor : in out Long_Float;
      Out_Unit_Name        : System.Address;
      Out_Unit_Auth_Name   : System.Address;
      Out_Unit_Code        : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Cs_Get_Axis_Info unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Cs_Get_Axis_Info";
   end Proj_Cs_Get_Axis_Info;

   ------------------------
   -- Proj_Get_Ellipsoid --
   ------------------------

   function Proj_Get_Ellipsoid
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Ellipsoid unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Ellipsoid";
   end Proj_Get_Ellipsoid;

   -----------------------------------
   -- Proj_Ellipsoid_Get_Parameters --
   -----------------------------------

   function Proj_Ellipsoid_Get_Parameters
     (Ctx                        : PJ_CONTEXT;
      Ellipsoid                  : PJ'Class;
      Out_Semi_Major_Metre       : in out Long_Float;
      Out_Semi_Minor_Metre       : in out Long_Float;
      Out_Is_Semi_Minor_Computed : access int;
      Out_Inv_Flattening         : in out Long_Float) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Ellipsoid_Get_Parameters unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Ellipsoid_Get_Parameters";
   end Proj_Ellipsoid_Get_Parameters;

   -----------------------------
   -- Proj_Get_Prime_Meridian --
   -----------------------------

   function Proj_Get_Prime_Meridian
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Get_Prime_Meridian unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Get_Prime_Meridian";
   end Proj_Get_Prime_Meridian;

   ----------------------------------------
   -- Proj_Prime_Meridian_Get_Parameters --
   ----------------------------------------

   function Proj_Prime_Meridian_Get_Parameters
     (Ctx                  : PJ_CONTEXT;
      Prime_Meridian       : PJ'Class;
      Out_Longitude        : in out Long_Float;
      Out_Unit_Conv_Factor : in out Long_Float;
      Out_Unit_Name        : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Prime_Meridian_Get_Parameters unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Prime_Meridian_Get_Parameters";
   end Proj_Prime_Meridian_Get_Parameters;

   ---------------------------------
   -- Proj_Crs_Get_Coordoperation --
   ---------------------------------

   function Proj_Crs_Get_Coordoperation
     (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Crs_Get_Coordoperation unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Crs_Get_Coordoperation";
   end Proj_Crs_Get_Coordoperation;

   -----------------------------------------
   -- Proj_Coordoperation_Get_Method_Info --
   -----------------------------------------

   function Proj_Coordoperation_Get_Method_Info
     (Ctx                  : PJ_CONTEXT;
      Coordoperation       : PJ'Class;
      Out_Method_Name      : System.Address;
      Out_Method_Auth_Name : System.Address;
      Out_Method_Code      : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Method_Info unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Method_Info";
   end Proj_Coordoperation_Get_Method_Info;

   -----------------------------------------
   -- Proj_Coordoperation_Is_Instantiable --
   -----------------------------------------

   function Proj_Coordoperation_Is_Instantiable
     (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Is_Instantiable unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Is_Instantiable";
   end Proj_Coordoperation_Is_Instantiable;

   -----------------------------------------------------
   -- Proj_Coordoperation_Has_Ballpark_Transformation --
   -----------------------------------------------------

   function Proj_Coordoperation_Has_Ballpark_Transformation
     (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Has_Ballpark_Transformation unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Has_Ballpark_Transformation";
   end Proj_Coordoperation_Has_Ballpark_Transformation;

   -----------------------------------------
   -- Proj_Coordoperation_Get_Param_Count --
   -----------------------------------------

   function Proj_Coordoperation_Get_Param_Count
     (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Param_Count unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Param_Count";
   end Proj_Coordoperation_Get_Param_Count;

   -----------------------------------------
   -- Proj_Coordoperation_Get_Param_Index --
   -----------------------------------------

   function Proj_Coordoperation_Get_Param_Index
     (Ctx            : PJ_CONTEXT;
      Coordoperation : PJ'Class;
      Name           : String) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Param_Index unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Param_Index";
   end Proj_Coordoperation_Get_Param_Index;

   -----------------------------------
   -- Proj_Coordoperation_Get_Param --
   -----------------------------------

   function Proj_Coordoperation_Get_Param
     (Ctx                  : PJ_CONTEXT;
      Coordoperation       : PJ'Class;
      Index                : int;
      Out_Name             : System.Address;
      Out_Auth_Name        : System.Address;
      Out_Code             : System.Address;
      Out_Value            : in out Long_Float;
      Out_Value_String     : System.Address;
      Out_Unit_Conv_Factor : in out Long_Float;
      Out_Unit_Name        : System.Address;
      Out_Unit_Auth_Name   : System.Address;
      Out_Unit_Code        : System.Address;
      Out_Unit_Category    : System.Address) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Param unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Param";
   end Proj_Coordoperation_Get_Param;

   ---------------------------------------------
   -- Proj_Coordoperation_Get_Grid_Used_Count --
   ---------------------------------------------

   function Proj_Coordoperation_Get_Grid_Used_Count
     (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Grid_Used_Count unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Grid_Used_Count";
   end Proj_Coordoperation_Get_Grid_Used_Count;

   ---------------------------------------
   -- Proj_Coordoperation_Get_Grid_Used --
   ---------------------------------------

   function Proj_Coordoperation_Get_Grid_Used
     (Ctx                 : PJ_CONTEXT;
      Coordoperation      : PJ'Class;
      Index               : int;
      Out_Short_Name      : System.Address;
      Out_Full_Name       : System.Address;
      Out_Package_Name    : System.Address;
      Out_Url             : System.Address;
      Out_Direct_Download : access int;
      Out_Open_License    : access int;
      Out_Available       : access int) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Grid_Used unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Grid_Used";
   end Proj_Coordoperation_Get_Grid_Used;

   --------------------------------------
   -- Proj_Coordoperation_Get_Accuracy --
   --------------------------------------

   function Proj_Coordoperation_Get_Accuracy
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return Double
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Accuracy unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Accuracy";
   end Proj_Coordoperation_Get_Accuracy;

   --------------------------------------------
   -- Proj_Coordoperation_Get_Towgs84_Values --
   --------------------------------------------

   function Proj_Coordoperation_Get_Towgs84_Values
     (Ctx                        : PJ_CONTEXT;
      Coordoperation             : PJ'Class;
      Out_Values                 : in out Long_Float;
      Value_Count                : int;
      Emit_Error_If_Incompatible : int) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Get_Towgs84_Values unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Get_Towgs84_Values";
   end Proj_Coordoperation_Get_Towgs84_Values;

   ----------------------------------------
   -- Proj_Coordoperation_Create_Inverse --
   ----------------------------------------

   function Proj_Coordoperation_Create_Inverse
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Coordoperation_Create_Inverse unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Coordoperation_Create_Inverse";
   end Proj_Coordoperation_Create_Inverse;

   -----------------------------------------
   -- Proj_Concatoperation_Get_Step_Count --
   -----------------------------------------

   function Proj_Concatoperation_Get_Step_Count
     (Ctx : PJ_CONTEXT; Concatoperation : PJ'Class) return int
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Concatoperation_Get_Step_Count unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Concatoperation_Get_Step_Count";
   end Proj_Concatoperation_Get_Step_Count;

   -----------------------------------
   -- Proj_Concatoperation_Get_Step --
   -----------------------------------

   function Proj_Concatoperation_Get_Step
     (Ctx             : PJ_CONTEXT;
      Concatoperation : PJ'Class;
      I_Step          : int) return PJ'Class
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Concatoperation_Get_Step unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Concatoperation_Get_Step";
   end Proj_Concatoperation_Get_Step;

   ------------------------
   -- Proj_Trans_Generic --
   ------------------------

   function Proj_Trans_Generic
     (P         : access PJ;
      Dir       : DIRECTION;
      X         : in out Long_Float;
      Sx        : Size_T;
      Nx        : Size_T;
      Y         : in out Long_Float;
      Sy        : Size_T;
      Ny        : Size_T;
      Z         : in out Long_Float;
      Sz        : Size_T;
      Nz        : Size_T;
      T         : in out Long_Float;
      St        : Size_T;
      Nt        : Size_T) return Size_T
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
                                   "Proj_Trans_Generic unimplemented");
      return raise Program_Error
        with "Unimplemented function Proj_Trans_Generic";
   end Proj_Trans_Generic;

end Proj4;
