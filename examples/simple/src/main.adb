with Proj4;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Ctx  : Proj4.PJ_CONTEXT;
   Proj : Proj4.PJ'Class := Ctx.Create ("+proj=etmerc +lat_0=38 +lon_0=125 +ellps=bessel");

   C1   : Proj4.PJ_COORD := (Discr => 1, Xyzt => (0.20, 00.20, 0.20, 0.20));
   C2   : Proj4.PJ_COORD := (Discr => 1, Xyzt => (11.0, 10.0, 10.0, 10.0));
   C3   : Proj4.PJ_COORD;

   function Image ( Item : Proj4.PJ_XYZT ) return String is
   begin
      return
        "(X => " & Item.X'Img &
        ",Y => " & Item.Y'Img &
        ",Z => " & Item.Z'Img &
        ",T => " & Item.T'Img & ")";
   end Image;

   function Image ( Item : Proj4.PJ_COORD ) return String is
   begin
      return Image (Item.Xyzt);
   end Image;
begin
   Put_Line (Image (C1));
   C3 := Proj.Trans (Proj4.FWD, C1);
   Put_Line (Image (C3));
   C3 := Proj.Trans (Proj4.FWD, C3);
   Put_Line (Image (C3));
   Put_Line (Proj4.Release);
end Main;
