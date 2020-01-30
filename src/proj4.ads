with Ada.Finalization;
package Proj4 is
   type ProjUV is tagged private;
   type ProjPJ is tagged private;
   type ProjXY is tagged private;
   type ProjLP is tagged private;
   type ProjCtx is tagged private;
   type Status_Code is new Integer;

   function Fwd (A : ProjLP; B : ProjPJ'Class) return ProjXY'Class;
   function Inv (A : ProjXY; B : ProjPJ'Class) return ProjLP'Class;

   function Transform
     (Src          : ProjPJ;
      Dst          : ProjPJ'Class;
      Point_Count  : Long_Integer;
      Point_Offset : Integer;
      X            : out Long_Float;
      Y            : out Long_Float;
      Z            : out Long_Float) return Status_Code;

   function Datum_Transform
     (Src          : ProjPJ;
      Dst          : ProjPJ'Class;
      Point_Count  : Long_Integer;
      Point_Offset : Integer;
      X            : out Long_Float;
      Y            : out Long_Float;
      Z            : out Long_Float) return Status_Code;
   function Strerrno (Errno : Status_Code) return String;
private
   type ProjUV is new Ada.Finalization.Controlled with record
      null;
   end record;
   type ProjPJ is new Ada.Finalization.Controlled with record
      null;
   end record;
   type ProjXY is new Ada.Finalization.Controlled with record
      null;
   end record;
   type ProjLP is new Ada.Finalization.Controlled with record
      null;
   end record;
   type ProjCtx is new Ada.Finalization.Controlled with record
      null;
   end record;

end Proj4;
