pragma Ada_2012;
with Interfaces.C.Strings;
with Libproj.proj_api_h;
with Interfaces.C; use Interfaces.C;
package body Proj4 is
   use Libproj.Proj_Api_H;
   ---------
   -- Fwd --
   ---------

   function Fwd (A : ProjLP; B : ProjPJ'Class) return ProjXY'Class is
   begin
      pragma Compile_Time_Warning (Standard.True, "Fwd unimplemented");
      return raise Program_Error with "Unimplemented function Fwd";
   end Fwd;

   ---------
   -- Inv --
   ---------

   function Inv (A : ProjXY; B : ProjPJ'Class) return ProjLP'Class is
   begin
      pragma Compile_Time_Warning (Standard.True, "Inv unimplemented");
      return raise Program_Error with "Unimplemented function Inv";
   end Inv;

   ---------------
   -- Transform --
   ---------------

   function Transform
     (Src          : ProjPJ; Dst : ProjPJ'Class; Point_Count : Long_Integer;
      Point_Offset :     Integer; X : out Long_Float; Y : out Long_Float;
      Z            : out Long_Float) return Status_Code
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Transform unimplemented");
      return raise Program_Error with "Unimplemented function Transform";
   end Transform;

   ---------------------
   -- Datum_Transform --
   ---------------------

   function Datum_Transform
     (Src          : ProjPJ; Dst : ProjPJ'Class; Point_Count : Long_Integer;
      Point_Offset :     Integer; X : out Long_Float; Y : out Long_Float;
      Z            : out Long_Float) return Status_Code
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Datum_Transform unimplemented");
      return raise Program_Error with "Unimplemented function Datum_Transform";
   end Datum_Transform;

   --------------
   -- Strerrno --
   --------------

   function Strerrno (Errno : Status_Code) return String is
   begin
      return Interfaces.c.Strings.Value(Libproj.Proj_Api_H.Pj_Strerrno (int (Errno)));
   end Strerrno;

end Proj4;
