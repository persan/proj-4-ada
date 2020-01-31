with Proj4;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Ctx  : Proj4.PJ_CONTEXT;
   Proj : Proj4.PJ'Class := Ctx.Create ("+proj=etmerc +lat_0=38 +lon_0=125 +ellps=bessel");
   C1   : Proj4.PJ_COORD := Proj4.Coord (10.0, 10.0, 10.0, 10.0);
   C2   : Proj4.PJ_COORD := Proj4.Coord (11.0, 10.0, 10.0, 10.0);
   C3   : Proj4.PJ_COORD;

begin
   C3 := Proj.Trans (Proj4.FWD,C1);
   Put_Line (Proj4.Release);
end Main;
