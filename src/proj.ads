with Ada.Finalization;
with GNAT.Strings;
with Interfaces.C;
with Interfaces.C.Strings;
with System;

private with Libproj.Proj_H;
private with Ada.Unchecked_Conversion;
package Proj4 is
   use Interfaces.C;

   PROJ_VERSION_MAJOR : constant := 6;
   PROJ_VERSION_MINOR : constant := 3;
   PROJ_VERSION_PATCH : constant := 0;


   function Release return String;

   type PJ_COORD;
   type PJ_AREA is tagged limited private;

   type PJ_FACTORS is record
      Meridional_Scale        : Long_Float;
      Parallel_Scale          : Long_Float;
      Areal_Scale             : Long_Float;
      Angular_Distortion      : Long_Float;
      Meridian_Parallel_Angle : Long_Float;
      Meridian_Convergence    : Long_Float;
      Tissot_Semimajor        : Long_Float;
      Tissot_Semiminor        : Long_Float;
      Dx_Dlam                 : Long_Float;
      Dx_Dphi                 : Long_Float;
      Dy_Dlam                 : Long_Float;
      Dy_Dphi                 : Long_Float;
   end record;


   type PJ (<>) is tagged limited private;


   type PJ_INFO;
   type PJ_PROJ_INFO;
   type PJ_GRID_INFO;
   type PJ_INIT_INFO;
   type PJ_LIST is record
      Id    : Interfaces.C.Strings.chars_ptr;
      Proj  : access function (Arg1 : access PJ) return access PJ;
      Descr : System.Address;
   end record
     with Convention => C_Pass_By_Copy;

   subtype PJ_OPERATIONS is PJ_LIST;

   type PJ_ELLPS is record
      Id    : Interfaces.C.Strings.chars_ptr;
      Major : Interfaces.C.Strings.chars_ptr;
      Ell   : Interfaces.C.Strings.chars_ptr;
      Name  : Interfaces.C.Strings.chars_ptr;
   end record
     with Convention => C_Pass_By_Copy;

   type PJ_UNITS is record
      Id       : Interfaces.C.Strings.chars_ptr;
      To_Meter : Interfaces.C.Strings.chars_ptr;
      Name     : Interfaces.C.Strings.chars_ptr;
      Factor   : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   type PJ_PRIME_MERIDIANS is record
      Id   : Interfaces.C.Strings.chars_ptr;
      Defn : Interfaces.C.Strings.chars_ptr;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_1

   type PJ_XYZT is record
      X : Long_Float;
      Y : Long_Float;
      Z : Long_Float;
      T : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_2

   type PJ_UVWT is record
      U : Long_Float;
      V : Long_Float;
      W : Long_Float;
      T : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_3

   type PJ_LPZT is record
      Lam : Long_Float;
      Phi : Long_Float;
      Z   : Long_Float;
      T   : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_4

   type PJ_OPK is record
      O : Long_Float;
      P : Long_Float;
      K : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_5

   type PJ_ENU is record
      E : Long_Float;
      N : Long_Float;
      U : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_6

   type PJ_GEOD is record
      S  : Long_Float;
      A1 : Long_Float;
      A2 : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_7

   type PJ_UV is record
      U : Long_Float;
      V : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_8

   type PJ_XY is record
      X : Long_Float;
      Y : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_9

   type PJ_LP is record
      Lam : Long_Float;
      Phi : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_10

   type PJ_XYZ is record
      X : Long_Float;
      Y : Long_Float;
      Z : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_11

   type PJ_UVW is record
      U : Long_Float;
      V : Long_Float;
      W : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_12

   type PJ_LPZ is record
      Lam : Long_Float;
      Phi : Long_Float;
      Z   : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   type PJ_COORD_V_Array is array (0 .. 3) of Long_Float;
   type PJ_COORD (Discr : Unsigned := 0) is record
      case Discr is
         when 0 => V       : aliased PJ_COORD_V_Array;
         when 1 => Xyzt    : aliased PJ_XYZT;
         when 2 => Uvwt    : aliased PJ_UVWT;
         when 3 => Lpzt    : aliased PJ_LPZT;
         when 4 => Geod    : aliased PJ_GEOD;
         when 5 => Opk     : aliased PJ_OPK;
         when 6 => Enu     : aliased PJ_ENU;
         when 7 => Xyz     : aliased PJ_XYZ;
         when 8 => Uvw     : aliased PJ_UVW;
         when 9 => Lpz     : aliased PJ_LPZ;
         when 10 => Xy     : aliased PJ_XY;
         when 11 => Uv     : aliased PJ_UV;
         when others => Lp : aliased PJ_LP;
      end case;
   end record
     with Unchecked_Union => True;

   type PJ_COORD_Array is array (Positive range <>) of aliased PJ_COORD;

   type PJ_INFO is record
      Major      : aliased int;
      Minor      : aliased int;
      Patch      : aliased int;
      Release    : Interfaces.C.Strings.chars_ptr;
      Version    : Interfaces.C.Strings.chars_ptr;
      Searchpath : Interfaces.C.Strings.chars_ptr;
      Paths      : System.Address;
      Path_Count : aliased Size_T;
   end record
     with Convention => C_Pass_By_Copy;

   type PJ_PROJ_INFO is record
      Id          : Interfaces.C.Strings.chars_ptr;
      Description : Interfaces.C.Strings.chars_ptr;
      Definition  : Interfaces.C.Strings.chars_ptr;
      Has_Inverse : aliased int;
      Accuracy    : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   subtype PJ_GRID_INFO_Gridname_Array is String (1 .. 32);
   subtype PJ_GRID_INFO_Filename_Array is String (1 .. 260);
   subtype PJ_GRID_INFO_Format_Array is String (1 .. 8);
   type PJ_GRID_INFO is record
      Gridname   : aliased PJ_GRID_INFO_Gridname_Array;
      Filename   : aliased PJ_GRID_INFO_Filename_Array;
      Format     : aliased PJ_GRID_INFO_Format_Array;
      Lowerleft  : aliased PJ_LP;
      Upperright : aliased PJ_LP;
      N_Lon      : aliased int;
      N_Lat      : aliased int;
      Cs_Lon     : Long_Float;
      Cs_Lat     : Long_Float;
   end record
     with Convention => C_Pass_By_Copy;

   subtype PJ_INIT_INFO_Name_Array is Interfaces.C.Char_Array (0 .. 31);
   subtype PJ_INIT_INFO_Filename_Array is Interfaces.C.Char_Array (0 .. 259);
   subtype PJ_INIT_INFO_Version_Array is Interfaces.C.Char_Array (0 .. 31);
   subtype PJ_INIT_INFO_Origin_Array is Interfaces.C.Char_Array (0 .. 31);
   subtype PJ_INIT_INFO_Lastupdate_Array is Interfaces.C.Char_Array (0 .. 15);
   type PJ_INIT_INFO is record
      Name       : aliased PJ_INIT_INFO_Name_Array;
      Filename   : aliased PJ_INIT_INFO_Filename_Array;
      Version    : aliased PJ_INIT_INFO_Version_Array;
      Origin     : aliased PJ_INIT_INFO_Origin_Array;
      Lastupdate : aliased PJ_INIT_INFO_Lastupdate_Array;
   end record
     with Convention => C_Pass_By_Copy;

   type PJ_LOG_LEVEL is new  Unsigned;
   PJ_LOG_NONE : constant Unsigned := 0;
   PJ_LOG_ERROR : constant Unsigned := 1;
   PJ_LOG_DEBUG : constant Unsigned := 2;
   PJ_LOG_TRACE : constant Unsigned := 3;
   PJ_LOG_TELL : constant Unsigned := 4;
   PJ_LOG_DEBUG_MAJOR : constant Unsigned := 2;
   PJ_LOG_DEBUG_MINOR : constant Unsigned := 3;

   type Logger is interface;
   type PJ_LOG_FUNCTION is access procedure
     (Arg1 : System.Address;
      Arg2 : int;
      Arg3 : Interfaces.C.Strings.chars_ptr)
     with Convention => C;


   type PJ_CONTEXT is tagged limited private;
   --  Creates a new threading-context when created.

   generic
      type User_Data_Type is limited private;
   procedure Set_File_Finder
     (Ctx       : PJ_CONTEXT;
      Finder    : not null access function (Ctx : not null access PJ_CONTEXT;
                                            Name : String;
                                            User_Data : in out User_Data_Type) return String;
      User_Data : in out User_Data_Type);

   procedure Set_Search_Paths
     (Ctx         : PJ_CONTEXT;
      Paths       : GNAT.Strings.String_List);

   procedure Use_Proj4_Init_Rules (Ctx : access PJ_CONTEXT; Enable : Boolean);

   function Get_Use_Proj4_Init_Rules
     (Ctx                   : access PJ_CONTEXT;
      From_Legacy_Code_Path : Boolean) return Boolean;



   function Create (Ctx : PJ_CONTEXT; Definition : String) return PJ'Class;
   --  Create a transformation object, or a CRS object, from:
   --      a proj-string,
   --      a WKT string,
   --         an object code (like "EPSG:4326", "urn:ogc:def:crs:EPSG::4326",
   --                              "urn:ogc:def:coordinateOperation:EPSG::1671"),
   --      a OGC URN combining references for compound coordinate reference systems
   --           (e.g "urn:ogc:def:crs,crs:EPSG::2393,crs:EPSG::5717" or
   --                 custom abbreviated syntax "EPSG:2393+5717"),
   --      a OGC URN combining references for concatenated operations
   --        (e.g. "urn:ogc:def:coordinateOperation,coordinateOperation:EPSG::3895,coordinateOperation:EPSG::1618")
   --  Example call:
   --      PJ *P = proj_create(0, "+proj=etmerc +lat_0=38 +lon_0=125 +ellps=bessel");
   --
   --  If a proj-string contains a +type=crs option, then it is interpreted as a CRS definition.
   --  In particular geographic CRS are assumed to have axis in the longitude,
   --  latitude order and with degree angular unit.
   --  The use of proj-string to describe a CRS is discouraged.
   --  It is a legacy means of conveying CRS descriptions:
   --    use of object codes (EPSG:XXXX typically) or WKT description
   --    is recommended for better expressivity.
   --  If a proj-string does not contain +type=crs, then it is interpreted as
   --  a coordination operation / transformation.
   --  If creation of the transformation object fails, the function returns 0
   --  and the PROJ error number is updated.
   --  The error number can be read with proj_errno() or proj_context_errno().
   --  The returned PJ-pointer should be deallocated with proj_destroy().
   --  Parameters
   --             ctx - Threading context.
   --             definition - Proj-string of the desired transformation.
   -----------------------------------------------------------------------------


   function Create
     (Ctx  : PJ_CONTEXT;
      Argv : GNAT.Strings.String_List) return PJ'Class;

   function Create
     (Ctx        : PJ_CONTEXT;
      Source_Crs : String;
      Target_Crs : String;
      Area       : PJ_AREA'class) return PJ'Class;
--
   function Create
     (Ctx        : PJ_CONTEXT;
      Source_Crs : PJ'Class;
      Target_Crs : PJ'Class;
      Area       : PJ_AREA'Class;
      Options    : System.Address) return PJ'Class;


   function Normalize_For_Visualization
     (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class;

   procedure Assign_Context (The_Pj : PJ; Ctx : PJ_CONTEXT'Class);

   function Destroy (P : PJ) return PJ'Class;


   procedure Set_Bbox
     (Area             : in out PJ_AREA;
      West_Lon_Degree  : Long_Float;
      South_Lat_Degree : Long_Float;
      East_Lon_Degree  : Long_Float;
      North_Lat_Degree : Long_Float);


   type DIRECTION is (FWD, IDENT, INV);

   procedure Angular_Input (P : PJ; Dir : DIRECTION);

   procedure Angular_Output (P : PJ; Dir : DIRECTION);

   function Trans
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD) return PJ_COORD;

   function Trans
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD_Array) return int;

   procedure Trans
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD_Array);

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
      Nt        : Size_T) return Size_T;

   function Coord
     (X : Long_Float;
      Y : Long_Float;
      Z : Long_Float;
      T : Long_Float) return PJ_COORD;

   function Roundtrip
     (P         : PJ;
      Dir       : DIRECTION;
      Coord     : PJ_COORD_Array) return Long_Float;

   function Lp_Dist
     (P : PJ;
      A : PJ_COORD;
      B : PJ_COORD) return Long_Float;

   function Lpz_Dist
     (P : PJ;
      A : PJ_COORD;
      B : PJ_COORD) return Long_Float;

   function Xy_Dist (A : PJ_COORD; B : PJ_COORD) return Long_Float;

   function Xyz_Dist (A : PJ_COORD; B : PJ_COORD) return Long_Float;

   function Geod
     (P : PJ;
      A : PJ_COORD;
      B : PJ_COORD) return PJ_COORD;

   type Status_Code is new Integer;

   function Errno (Ctx : PJ_CONTEXT) return Status_Code;

   function Errno (P :  PJ) return Status_Code;

   function Errno_Set (P :  PJ; Err : Status_Code) return Status_Code;

   function Errno_Reset (P : PJ) return Status_Code;

   function Errno_Restore (P : PJ; Err : Status_Code) return Status_Code;

   function Errno_String (Err : Status_Code) return String;

   function Log_Level (Ctx : PJ_CONTEXT; Log_Level : PJ_LOG_LEVEL) return PJ_LOG_LEVEL;

   procedure Proj_Log_Func
     (Ctx      : access PJ_CONTEXT;
      App_Data : System.Address;
      Logf     : PJ_LOG_FUNCTION);

   function Factors (P : PJ; Lp : PJ_COORD) return PJ_FACTORS;

   function Info return PJ_INFO;

   function Info (P : PJ) return PJ_PROJ_INFO;

   function Grid_Info (Gridname : String) return PJ_GRID_INFO;

   function Proj_Init_Info (Initname : String) return PJ_INIT_INFO;

   -----------------------------------------------------------------------------

   function Proj_List_Operations return access constant PJ_OPERATIONS;

   function Proj_List_Ellps return access constant PJ_ELLPS;

   function Proj_List_Units return access constant PJ_UNITS;

   function Proj_List_Angular_Units return access constant PJ_UNITS;

   function Proj_List_Prime_Meridians return access constant PJ_PRIME_MERIDIANS;
   --------------------------------------------------------------------------------

   function Proj_Torad (Angle_In_Degrees : Double) return Double;

   function Proj_Todeg (Angle_In_Radians : Double) return Double;

   function Proj_Dmstor (C_Is : String; Rs : System.Address) return Double;

   function Proj_Rtodms
     (S   : String;
      R   : Double;
      Pos : int;
      Neg : int) return String;

   procedure Proj_Cleanup;

   type PROJ_STRING_LIST is new System.Address;

   subtype PJ_GUESSED_WKT_DIALECT is Unsigned;
   PJ_GUESSED_WKT2_2019 : constant Unsigned := 0;
   PJ_GUESSED_WKT2_2018 : constant Unsigned := 0;
   PJ_GUESSED_WKT2_2015 : constant Unsigned := 1;
   PJ_GUESSED_WKT1_GDAL : constant Unsigned := 2;
   PJ_GUESSED_WKT1_ESRI : constant Unsigned := 3;
   PJ_GUESSED_NOT_WKT : constant Unsigned := 4;

   type PJ_CATEGORY is
     (PJ_CATEGORY_ELLIPSOID,
      PJ_CATEGORY_PRIME_MERIDIAN,
      PJ_CATEGORY_DATUM,
      PJ_CATEGORY_CRS,
      PJ_CATEGORY_COORDINATE_OPERATION)
     with Convention => C;

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
     with Convention => C;

   type PJ_COMPARISON_CRITERION is
     (PJ_COMP_STRICT,
      PJ_COMP_EQUIVALENT,
      PJ_COMP_EQUIVALENT_EXCEPT_AXIS_ORDER_GEOGCRS)
     with Convention => C;

   subtype PJ_WKT_TYPE is Unsigned;
   PJ_WKT2_2015 : constant Unsigned := 0;
   PJ_WKT2_2015_SIMPLIFIED : constant Unsigned := 1;
   PJ_WKT2_2019 : constant Unsigned := 2;
   PJ_WKT2_2018 : constant Unsigned := 2;
   PJ_WKT2_2019_SIMPLIFIED : constant Unsigned := 3;
   PJ_WKT2_2018_SIMPLIFIED : constant Unsigned := 3;
   PJ_WKT1_GDAL : constant Unsigned := 4;
   PJ_WKT1_ESRI : constant Unsigned := 5;

   type PROJ_CRS_EXTENT_USE is
     (PJ_CRS_EXTENT_NONE,
      PJ_CRS_EXTENT_BOTH,
      PJ_CRS_EXTENT_INTERSECTION,
      PJ_CRS_EXTENT_SMALLEST)
     with Convention => C;

   type PROJ_GRID_AVAILABILITY_USE is
     (PROJ_GRID_AVAILABILITY_USED_FOR_SORTING,
      PROJ_GRID_AVAILABILITY_DISCARD_OPERATION_IF_MISSING_GRID,
      PROJ_GRID_AVAILABILITY_IGNORED)
     with Convention => C;

   type PJ_PROJ_STRING_TYPE is
     (PJ_PROJ_5,
      PJ_PROJ_4)
     with Convention => C;

   type PROJ_SPATIAL_CRITERION is
     (PROJ_SPATIAL_CRITERION_STRICT_CONTAINMENT,
      PROJ_SPATIAL_CRITERION_PARTIAL_INTERSECTION)
     with Convention => C;

   type PROJ_INTERMEDIATE_CRS_USE is
     (PROJ_INTERMEDIATE_CRS_USE_ALWAYS,
      PROJ_INTERMEDIATE_CRS_USE_IF_NO_DIRECT_TRANSFORMATION,
      PROJ_INTERMEDIATE_CRS_USE_NEVER)
     with Convention => C;

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
     with Convention => C;

   --  skipped anonymous struct anon_24

   type PROJ_CRS_INFO is record
      Auth_Name              : Interfaces.C.Strings.chars_ptr;
      Code                   : Interfaces.C.Strings.chars_ptr;
      Name                   : Interfaces.C.Strings.chars_ptr;
      C_Type                 : aliased PJ_TYPE;
      Deprecated             : Boolean;
      Bbox_Valid             : Boolean;
      West_Lon_Degree        : Long_Float;
      South_Lat_Degree       : Long_Float;
      East_Lon_Degree        : Long_Float;
      North_Lat_Degree       : Long_Float;
      Area_Name              : Interfaces.C.Strings.chars_ptr;
      Projection_Method_Name : Interfaces.C.Strings.chars_ptr;
   end record
     with Convention => C_Pass_By_Copy;

   --  skipped anonymous struct anon_25

   type PROJ_CRS_LIST_PARAMETERS is record
      Types                         : access PJ_TYPE;
      TypesCount                    : aliased Size_T;
      Crs_Area_Of_Use_Contains_Bbox : aliased int;
      Bbox_Valid                    : Boolean;
      West_Lon_Degree               : Long_Float;
      South_Lat_Degree              : Long_Float;
      East_Lon_Degree               : Long_Float;
      North_Lat_Degree              : Long_Float;
      Allow_Deprecated              : Boolean;
   end record
     with Convention => C_Pass_By_Copy;

   type PJ_OBJ_LIST is null record;

   procedure Proj_String_List_Destroy (List : PROJ_STRING_LIST);

   procedure Proj_Context_Set_Autoclose_Database (Ctx : access PJ_CONTEXT; Autoclose : int);

   function Proj_Context_Set_Database_Path
     (Ctx        : access PJ_CONTEXT;
      DbPath     : String;
      AuxDbPaths : System.Address;
      Options    : System.Address) return int;

   function Proj_Context_Get_Database_Path (Ctx : access PJ_CONTEXT) return String;

   function Proj_Context_Get_Database_Metadata (Ctx : access PJ_CONTEXT; Key : String) return String;

   function Proj_Context_Guess_Wkt_Dialect (Ctx : access PJ_CONTEXT; Wkt : String) return PJ_GUESSED_WKT_DIALECT;

   function Proj_Create_From_Wkt
     (Ctx                : PJ_CONTEXT;
      Wkt                : String;
      Options            : System.Address;
      Out_Warnings       : System.Address;
      Out_Grammar_Errors : System.Address) return PJ'Class;

   function Proj_Create_From_Database
     (Ctx                         : PJ_CONTEXT;
      Auth_Name                   : String;
      Code                        : String;
      Category                    : PJ_CATEGORY;
      UsePROJAlternativeGridNames : int;
      Options                     : System.Address) return PJ'Class;

   function Proj_Uom_Get_Info_From_Database
     (Ctx             : PJ_CONTEXT;
      Auth_Name       : String;
      Code            : String;
      Out_Name        : System.Address;
      Out_Conv_Factor : in out Long_Float;
      Out_Category    : System.Address) return int;

   function Proj_Grid_Get_Info_From_Database
     (Ctx                 : access PJ_CONTEXT;
      Grid_Name           : String;
      Out_Full_Name       : System.Address;
      Out_Package_Name    : System.Address;
      Out_Url             : System.Address;
      Out_Direct_Download : access int;
      Out_Open_License    : access int;
      Out_Available       : access int) return int;

   function Proj_Clone (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class;

   function Proj_Create_From_Name
     (Ctx              : access PJ_CONTEXT;
      Auth_Name        : String;
      SearchedName     : String;
      Types            : access PJ_TYPE;
      TypesCount       : Size_T;
      ApproximateMatch : int;
      LimitResultCount : Size_T;
      Options          : System.Address) return access PJ_OBJ_LIST;

   function Proj_Get_Type (Obj : access constant PJ) return PJ_TYPE;

   function Proj_Is_Deprecated (Obj : access constant PJ) return Boolean;

   function Proj_Get_Non_Deprecated (Ctx : PJ_CONTEXT; Obj : PJ'Class) return access PJ_OBJ_LIST;

   function Proj_Is_Equivalent_To
     (Obj       : access constant PJ;
      Other     : access constant PJ;
      Criterion : PJ_COMPARISON_CRITERION) return Boolean;

   function Proj_Is_Equivalent_To_With_Ctx
     (Ctx       : PJ_CONTEXT;
      Obj       : PJ'Class;
      Other     : PJ'Class;
      Criterion : PJ_COMPARISON_CRITERION) return Boolean;

   function Proj_Is_Crs (Obj : access constant PJ) return Boolean;

   function Proj_Get_Name (Obj : access constant PJ) return String;

   function Proj_Get_Id_Auth_Name (Obj : access constant PJ; Index : int) return String;

   function Proj_Get_Id_Code (Obj : access constant PJ; Index : int) return String;

   function Proj_Get_Remarks (Obj : access constant PJ) return String;

   function Proj_Get_Scope (Obj : access constant PJ) return String;

   function Proj_Get_Area_Of_Use
     (Ctx                  : PJ_CONTEXT;
      Obj                  : PJ'Class;
      Out_West_Lon_Degree  : in out Long_Float;
      Out_South_Lat_Degree : in out Long_Float;
      Out_East_Lon_Degree  : in out Long_Float;
      Out_North_Lat_Degree : in out Long_Float;
      Out_Area_Name        : System.Address) return int;

   function Proj_As_Wkt
     (Ctx     : access PJ_CONTEXT;
      Obj     : PJ'Class;
      C_Type  : PJ_WKT_TYPE;
      Options : System.Address) return String;

   function Proj_As_Proj_String
     (Ctx     : access PJ_CONTEXT;
      Obj     : PJ'Class;
      C_Type  : PJ_PROJ_STRING_TYPE;
      Options : System.Address) return String;

   function Proj_As_Projjson
     (Ctx     : access PJ_CONTEXT;
      Obj     : PJ'Class;
      Options : System.Address) return String;

   function Proj_Get_Source_Crs (Ctx : access PJ_CONTEXT; Obj : PJ'Class) return PJ'Class;

   function Proj_Get_Target_Crs (Ctx : access PJ_CONTEXT; Obj : access PJ'Class) return PJ'Class;

   function Proj_Identify
     (Ctx            : PJ_CONTEXT;
      Obj            : PJ'Class;
      Auth_Name      : String;
      Options        : System.Address;
      Out_Confidence : System.Address) return access PJ_OBJ_LIST;

   procedure Proj_Int_List_Destroy (List : access int);

   function Proj_Get_Authorities_From_Database (Ctx : access PJ_CONTEXT) return PROJ_STRING_LIST;

   function Proj_Get_Codes_From_Database
     (Ctx              : access PJ_CONTEXT;
      Auth_Name        : String;
      C_Type           : PJ_TYPE;
      Allow_Deprecated : int) return PROJ_STRING_LIST;

   function Proj_Get_Crs_List_Parameters_Create return access PROJ_CRS_LIST_PARAMETERS;

   procedure Proj_Get_Crs_List_Parameters_Destroy (Params : access PROJ_CRS_LIST_PARAMETERS);

   function Proj_Get_Crs_Info_List_From_Database
     (Ctx              : access PJ_CONTEXT;
      Auth_Name        : String;
      Params           : access constant PROJ_CRS_LIST_PARAMETERS;
      Out_Result_Count : access int) return System.Address;

   procedure Proj_Crs_Info_List_Destroy (List : System.Address);

   type PJ_OPERATION_FACTORY_CONTEXT is null record;

   function Proj_Create_Operation_Factory_Context (Ctx : access PJ_CONTEXT; Authority : String) return access PJ_OPERATION_FACTORY_CONTEXT;

   procedure Proj_Operation_Factory_Context_Destroy (Ctx : access PJ_OPERATION_FACTORY_CONTEXT);

   procedure Proj_Operation_Factory_Context_Set_Desired_Accuracy
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      Accuracy    : Double);

   procedure Proj_Operation_Factory_Context_Set_Area_Of_Interest
     (Ctx              : access PJ_CONTEXT;
      Factory_Ctx      : access PJ_OPERATION_FACTORY_CONTEXT;
      West_Lon_Degree  : Double;
      South_Lat_Degree : Double;
      East_Lon_Degree  : Double;
      North_Lat_Degree : Double);

   procedure Proj_Operation_Factory_Context_Set_Crs_Extent_Use
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      C_Use       : PROJ_CRS_EXTENT_USE);

   procedure Proj_Operation_Factory_Context_Set_Spatial_Criterion
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      Criterion   : PROJ_SPATIAL_CRITERION);

   procedure Proj_Operation_Factory_Context_Set_Grid_Availability_Use
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      C_Use       : PROJ_GRID_AVAILABILITY_USE);

   procedure Proj_Operation_Factory_Context_Set_Use_Proj_Alternative_Grid_Names
     (Ctx          : access PJ_CONTEXT;
      Factory_Ctx  : access PJ_OPERATION_FACTORY_CONTEXT;
      UsePROJNames : int);

   procedure Proj_Operation_Factory_Context_Set_Allow_Use_Intermediate_Crs
     (Ctx         : access PJ_CONTEXT;
      Factory_Ctx : access PJ_OPERATION_FACTORY_CONTEXT;
      C_Use       : PROJ_INTERMEDIATE_CRS_USE);

   procedure Proj_Operation_Factory_Context_Set_Allowed_Intermediate_Crs
     (Ctx                     : PJ_CONTEXT;
      Factory_Ctx             : PJ_OPERATION_FACTORY_CONTEXT;
      List_Of_Auth_Name_Codes : System.Address);

   procedure Proj_Operation_Factory_Context_Set_Discard_Superseded
     (Ctx         : PJ_CONTEXT;
      Factory_Ctx : PJ_OPERATION_FACTORY_CONTEXT;
      Discard     : int);

   function Proj_Create_Operations
     (Ctx              : PJ_CONTEXT;
      Source_Crs       : PJ'Class;
      Target_Crs       : PJ'Class;
      OperationContext : access constant PJ_OPERATION_FACTORY_CONTEXT) return access PJ_OBJ_LIST;

   function Proj_List_Get_Count (Result : access constant PJ_OBJ_LIST) return int;

   function Proj_List_Get
     (Ctx    : PJ_CONTEXT;
      Result : access constant PJ_OBJ_LIST;
      Index  : int) return PJ'Class;

   procedure Proj_List_Destroy (Result : access PJ_OBJ_LIST) ;

   function Proj_Crs_Get_Geodetic_Crs (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class;

   function Proj_Crs_Get_Horizontal_Datum (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class;

   function Proj_Crs_Get_Sub_Crs
     (Ctx   : PJ_CONTEXT;
      Crs   : PJ'Class;
      Index : int) return PJ'Class;

   function Proj_Crs_Get_Datum (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class;

   function Proj_Crs_Get_Coordinate_System (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class;

   function Proj_Cs_Get_Type (Ctx : PJ_CONTEXT; Cs : PJ'Class) return PJ_COORDINATE_SYSTEM_TYPE;

   function Proj_Cs_Get_Axis_Count (Ctx : PJ_CONTEXT; Cs : PJ'Class) return int;

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
      Out_Unit_Code        : System.Address) return int;

   function Proj_Get_Ellipsoid (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class;

   function Proj_Ellipsoid_Get_Parameters
     (Ctx                        : PJ_CONTEXT;
      Ellipsoid                  : PJ'Class;
      Out_Semi_Major_Metre       : in out Long_Float;
      Out_Semi_Minor_Metre       : in out Long_Float;
      Out_Is_Semi_Minor_Computed : access int;
      Out_Inv_Flattening         : in out Long_Float) return int;

   function Proj_Get_Prime_Meridian (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class;

   function Proj_Prime_Meridian_Get_Parameters
     (Ctx                  : PJ_CONTEXT;
      Prime_Meridian       : PJ'Class;
      Out_Longitude        : in out Long_Float;
      Out_Unit_Conv_Factor : in out Long_Float;
      Out_Unit_Name        : System.Address) return int  ;

   function Proj_Crs_Get_Coordoperation (Ctx : PJ_CONTEXT; Crs : PJ'Class) return PJ'Class;

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   function Proj_Coordoperation_Get_Method_Info
     (Ctx                  : PJ_CONTEXT;
      Coordoperation       : PJ'Class;
      Out_Method_Name      : System.Address;
      Out_Method_Auth_Name : System.Address;
      Out_Method_Code      : System.Address) return int ;

   function Proj_Coordoperation_Is_Instantiable (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int;
   function Proj_Coordoperation_Has_Ballpark_Transformation (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int;

   function Proj_Coordoperation_Get_Param_Count (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int;

   function Proj_Coordoperation_Get_Param_Index
     (Ctx            : PJ_CONTEXT;
      Coordoperation : PJ'Class;
      Name           : String) return int;

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
      Out_Unit_Category    : System.Address) return int;

   function Proj_Coordoperation_Get_Grid_Used_Count (Ctx : PJ_CONTEXT; Coordoperation : PJ'Class) return int;

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
      Out_Available       : access int) return int;

   function Proj_Coordoperation_Get_Accuracy (Ctx : PJ_CONTEXT; Obj : PJ'Class) return Double ;

   function Proj_Coordoperation_Get_Towgs84_Values
     (Ctx                        : PJ_CONTEXT;
      Coordoperation             : PJ'Class;
      Out_Values                 : in out Long_Float;
      Value_Count                : int;
      Emit_Error_If_Incompatible : int) return int;

   function Proj_Coordoperation_Create_Inverse (Ctx : PJ_CONTEXT; Obj : PJ'Class) return PJ'Class;

   function Proj_Concatoperation_Get_Step_Count (Ctx : PJ_CONTEXT; Concatoperation : PJ'Class) return int;

   function Proj_Concatoperation_Get_Step
     (Ctx             : PJ_CONTEXT;
      Concatoperation : PJ'Class;
      I_Step          : int) return PJ'Class;

   PROJ_ERROR : exception;

private
   type PJ_CONTEXT_Access is access all Libproj.Proj_H.PJ_CONTEXT with Storage_Size => 0;
   type PJ_CONTEXT is new Ada.Finalization.Limited_Controlled with record
      Impl : PJ_CONTEXT_Access;
   end record;
   procedure Initialize (Object : in out PJ_CONTEXT);
   procedure Finalize   (Object : in out PJ_CONTEXT);

   type PJ_Access is access all Libproj.Proj_H.PJ with Storage_Size => 0;
   type PJ is new Ada.Finalization.Limited_Controlled with record
      Impl : PJ_Access;
   end record;
   procedure Finalize   (Object : in out PJ);

   type PJ_AREA_Access is access all Libproj.Proj_H.PJ_AREA with Storage_Size => 0;
   type PJ_AREA is new Ada.Finalization.Limited_Controlled with record
      Impl : PJ_AREA_Access;
   end record;
   procedure Initialize (Object : in out PJ_AREA);
   procedure Finalize   (Object : in out PJ_AREA);

   function Convert_Down is new Ada.Unchecked_Conversion (PJ_COORD, Libproj.Proj_H.PJ_COORD);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_COORD, PJ_COORD);
   pragma Compile_Time_Error (PJ_COORD'Size /= Libproj.Proj_H.PJ_COORD'Size, "Invalid maping of PJ_COORD");


   function Convert_Down is new Ada.Unchecked_Conversion (PJ_FACTORS, Libproj.Proj_H.PJ_FACTORS);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_FACTORS, PJ_FACTORS);
   pragma Compile_Time_Error (PJ_FACTORS'Size /= Libproj.Proj_H.PJ_FACTORS'Size, "Invalid maping of PJ_FACTORS");


   function Convert_Down is new Ada.Unchecked_Conversion (PJ_INFO, Libproj.Proj_H.PJ_INFO);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_INFO, PJ_INFO);
   pragma Compile_Time_Error (PJ_INFO'Size /= Libproj.Proj_H.PJ_INFO'Size, "Invalid maping of PJ_INFO");

   function Convert_Down is new Ada.Unchecked_Conversion (PJ_PROJ_INFO, Libproj.Proj_H.PJ_PROJ_INFO);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_PROJ_INFO, PJ_PROJ_INFO);
   pragma Compile_Time_Error (PJ_PROJ_INFO'Size /= Libproj.Proj_H.PJ_PROJ_INFO'Size, "Invalid maping of PJ_PROJ_INFO");

   function Convert_Down is new Ada.Unchecked_Conversion (PJ_GRID_INFO, Libproj.Proj_H.PJ_GRID_INFO);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_GRID_INFO, PJ_GRID_INFO);
   pragma Compile_Time_Error (PJ_GRID_INFO'Size /= Libproj.Proj_H.PJ_GRID_INFO'Size, "Invalid maping of PJ_GRID_INFO");


end Proj4;
