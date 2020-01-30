package Proj4 is
   type Proj_UV is tagged private;
   type Proj_PJ is tagged private;
   type Proj_XY is tagged private;
   type Proj_LP is tagged private;
   type Proj_Ctx is tagged private;
   type Status_Code is new Integer;

   function Fwd (A : Proj_LP; B : Proj_PJ) return Proj_XY;
   function Inv (A : Proj_XY; B : Proj_PJ) return Proj_LP;
   function Transform
     (Src          : ProjPJ;
      Dst          : ProjPJ;
      Point_Count  : Long_Integer;
      Point_Offset : Integer;
      X            : out Long_Float;
      Y            : out Long_Float;
      Z            : out Long_Float) return Status_Code;

   function Datum_Transform
     (Src          : ProjPJ;
      Dst          : ProjPJ;
      Point_Count  : Long_Integer;
      Point_Offset : Integer;
      X            : out Long_Float;
      Y            : out Long_Float;
      Z            : out Long_Float) return Status_Code
   private
   type Proj_UV is new Ada.Finalization.Controlled with record
      null;
   end record;
   type Proj_PJ is new Ada.Finalization.Controlled with record
      null;
   end record;
   type Proj_XY Isnew Ada.Finalization.Controlled with record
      null;
   end record;
   type Proj_LP Isnew Ada.Finalization.Controlled with record
      null;
   end record;
   type Proj_Ctx Isnew Ada.Finalization.Controlled with record
      null;
   end record;

end Proj4;
