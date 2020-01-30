with Proj4;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is

begin
   for I in 1 .. 10 loop
      Put_Line (Proj4.Strerrno (Errno => Proj4.Status_Code (I)));
   end loop;
end Main;
