with Ada.Unchecked_Conversion;
private package Proj.Conversions is
   function Convert_Down is new Ada.Unchecked_Conversion (PJ_COORD, Libproj.Proj_H.PJ_COORD);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_COORD, PJ_COORD);
   pragma Compile_Time_Error (PJ_COORD'Size /= Libproj.Proj_H.PJ_COORD'Size, "Invalid maping of PJ_COORD");


   function Convert_Down is new Ada.Unchecked_Conversion (PJ_FACTORS, Libproj.Proj_H.PJ_FACTORS);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_FACTORS, PJ_FACTORS);
   pragma Compile_Time_Error (PJ_FACTORS'Size /= Libproj.Proj_H.PJ_FACTORS'Size, "Invalid maping of PJ_FACTORS");


   function Convert_Up (Source : Libproj.Proj_H.PJ_INFO) return PJ_INFO;
   function Convert_Down (Source : PJ_INFO) return Libproj.Proj_H.PJ_INFO;


   function Convert_Down is new Ada.Unchecked_Conversion (PJ_PROJ_INFO, Libproj.Proj_H.PJ_PROJ_INFO);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_PROJ_INFO, PJ_PROJ_INFO);
   pragma Compile_Time_Error (PJ_PROJ_INFO'Size /= Libproj.Proj_H.PJ_PROJ_INFO'Size, "Invalid maping of PJ_PROJ_INFO");

   function Convert_Down is new Ada.Unchecked_Conversion (PJ_GRID_INFO, Libproj.Proj_H.PJ_GRID_INFO);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_GRID_INFO, PJ_GRID_INFO);
   pragma Compile_Time_Error (PJ_GRID_INFO'Size /= Libproj.Proj_H.PJ_GRID_INFO'Size, "Invalid maping of PJ_GRID_INFO");

   function Convert_Down is new Ada.Unchecked_Conversion (PJ_INIT_INFO, Libproj.Proj_H.PJ_INIT_INFO);
   function Convert_Up is new Ada.Unchecked_Conversion (Libproj.Proj_H.PJ_INIT_INFO, PJ_INIT_INFO);
   pragma Compile_Time_Error (PJ_INIT_INFO'Size /= Libproj.Proj_H.PJ_INIT_INFO'Size, "Invalid maping of PJ_GRID_INFO");

   function Convert_Up (Source : Libproj.Proj_H.PJ_ELLPS) return  PJ_ELLPS;
   function Convert_Up (Source : Libproj.Proj_H.PJ_UNITS) return  PJ_UNITS;
   function Convert_Up (Source : Libproj.Proj_H.PJ_PRIME_MERIDIANS) return PJ_PRIME_MERIDIANS;

   function Convert_Up (Source : Libproj.Proj_H.PJ_COORDINATE_SYSTEM_TYPE) return PJ_COORDINATE_SYSTEM_TYPE;
   function Convert_Down (Source : PJ_COORDINATE_SYSTEM_TYPE) return Libproj.Proj_H.PJ_COORDINATE_SYSTEM_TYPE;

   function Convert_Up (Source : Libproj.Proj_H.PJ_COMPARISON_CRITERION) return PJ_COMPARISON_CRITERION;
   function Convert_Down (Source : PJ_COMPARISON_CRITERION) return Libproj.Proj_H.PJ_COMPARISON_CRITERION;


   function Convert_Up (Source : Libproj.Proj_H.PJ_TYPE) return PJ_TYPE;
   function Convert_Down (Source : PJ_TYPE) return Libproj.Proj_H.PJ_TYPE;

   function Convert_Up (Source : Interfaces.C.int) return Boolean;
   function Convert_Down (Source : Boolean) return Interfaces.C.int;

   function Convert_Up (Source : Interfaces.C.int) return Integer is (Integer (Source));
   function Convert_Down (Source : Integer ) return Interfaces.C.int is (Interfaces.C.int (Source));

end Proj.Conversions;
