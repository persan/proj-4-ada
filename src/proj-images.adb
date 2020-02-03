with Ada.Strings.Fixed;
package body PROJ.Images is

   use Ada.Strings.Unbounded;

   function Image (Item : Boolean) return String is
   begin
      return Ada.Strings.Fixed.Trim (Item'Img, Ada.Strings.Both);
   end Image;
   function Image (Item : String) return String is
   begin
      return Ada.Strings.Fixed.Trim (Item, Ada.Strings.Both);
   end Image;

   function Image (Item : Integer) return String is
   begin
      return Ada.Strings.Fixed.Trim (Item'Img, Ada.Strings.Both);
   end Image;

   function Image (Item : Long_Float) return String is
   begin
      return Ada.Strings.Fixed.Trim (Item'Img, Ada.Strings.Both);
   end Image;

   function Image (Item : Ada.Strings.Unbounded.Unbounded_String) return String is
   begin
      return '"' & Ada.Strings.Unbounded.To_String (Item) & '"';
   end Image;

   function Image (Item : Unbounded_Vectors.Vector) return String is
      Ret : Ada.Strings.Unbounded.Unbounded_String;
   begin
      for Src of Item loop
         if Length (Ret) > 1 then
            Append (Ret, ", ");
         end if;
         Append (Ret, Src);
      end loop;
      return "(" & To_String (Ret) & ")";
   end Image;

   function Image (Item : PJ_COORD) return String is
   begin
      return "(Uvwt => " & Image (Item.Xyzt) & ")";
   end Image;

   function Image (Item : PJ_AREA) return String is
      pragma Unreferenced (Item);
   begin
      return "<N/A>";
   end Image;

   function Image (Item : PJ_FACTORS) return String is
   begin
      return "(Meridional_Scale =>"  & Image (Item.Meridional_Scale) &
        ", Parallel_Scale =>"  & Image (Item.Meridional_Scale) &
        ", Areal_Scale =>"  & Image (Item.Meridional_Scale) &
        ", Angular_Distortion =>"  & Image (Item.Meridional_Scale) &
        ", Meridian_Parallel_Angle =>"  & Image (Item.Meridional_Scale) &
        ". Meridian_Convergence =>"  & Image (Item.Meridional_Scale) &
        ", Tissot_Semimajor =>"  & Image (Item.Meridional_Scale) &
        ", Tissot_Semiminor =>"  & Image (Item.Meridional_Scale) &
        ", Dx_Dlam =>"  & Image (Item.Meridional_Scale) &
        ", Dx_Dphi =>"  & Image (Item.Meridional_Scale) &
        ", Dy_Dlam =>"  & Image (Item.Meridional_Scale) &
        ", Dy_Dphi =>"  & Image (Item.Meridional_Scale) & ")";
   end Image;

   function Image (Item : PJ) return String is
      pragma Unreferenced (Item);
   begin
      return "<N/A>";
   end Image;

   function Image (Item : PJ_INFO) return String is
   begin
      return "(Version => " & Image (Item.Major) & "." & Image (Item.Minor) & "." & Image (Item.Patch) &
        ", Release => " & Image (Item.Release) &
        ", Version => " & Image (Item.Version) &
        ", Searchpath => " & Image (Item.Searchpath) &
        ", Paths => " & Image (Item.Paths) & ")";
   end Image;

   function Image (Item : PJ_PROJ_INFO) return String is
   begin
      return "(Id => " & Image (Item.Id) &
        ", Description => " & Image (Item.Description) &
        ", Definition => " & Image (Item.Definition) &
        ", Has_Inverse => " & Image (Item.Has_Inverse) &
        ", Accuracy => " & Image (Item.Accuracy) & ")";
   end Image;

   function Image (Item : PJ_GRID_INFO) return String is
   begin
      return "(Gridname => " & Image (Item.Gridname) &
        ", Filename => " & Image (Item.Filename) &
        ", Format => " & Image (Item.Format) &
        ", Lowerleft => " & Image (Item.Lowerleft) &
        ", Upperright => " & Image (Item.Upperright) &
        ", N_Lon => " & Image (Item.N_Lon) &
        ", N_Lat => " & Image (Item.N_Lat) &
        ", Cs_Lon => " & Image (Item.Cs_Lon) &
        ", Cs_Lat => " & Image (Item.Cs_Lat) & ")";

   end Image;

   function Image (Item : PJ_INIT_INFO) return String is
   begin
      return "(Name => " & Image (Item.Name) &
        ", Filename => " & Image (Item.Filename) &
        ", Version => " & Image (Item.Version) &
        ", Origin => " & Image (Item.Origin) &
        ", Lastupdate => " & Image (Item.Lastupdate) & ")";
   end Image;

   function Image (Item : PJ_LIST) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_ELLPS) return String is
   begin
      return "(Id => " & Image (Item.Id) &
        ", Major => " & Image (Item.Major) &
        ", Ell => " & Image (Item.Ell) &
        ", Name => " & Image (Item.Name) & ")";
   end Image;

   function Image (Item : PJ_UNITS) return String is
   begin
      return "(Id => " & Image (Item.Id) &
        ", To_Meter => " & Image (Item.To_Meter) &
        ", Name => " & Image (Item.Name) &
        ", Factor => " & Image (Item.Factor) & ")";
   end Image;

   function Image (Item : PJ_PRIME_MERIDIANS) return String is
   begin
      return "(Id => " & Image (Item.Id) &
        ", Defn => " & Image (Item.Defn) & ")";
   end Image;

   function Image (Item : PJ_XYZT) return String is
   begin
      return "(X => " & Image (Item.X) &
        ", Y => " & Image (Item.Y) &
        ", Z => " & Image (Item.Z) &
        ", T => " & Image (Item.T) & ")";
   end Image;

   function Image (Item : PJ_UVWT) return String is
   begin
      return "(U => " & Image (Item.U) &
        ", V => " & Image (Item.V) &
        ", W => " & Image (Item.W) &
        ", T => " & Image (Item.T) & ")";
   end Image;

   function Image (Item : PJ_LPZT) return String is
   begin
      return "(Lam => " & Image (Item.Lam) &
        ", Phi => " & Image (Item.Phi) &
        ", Z => " & Image (Item.Z) &
        ", T => " & Image (Item.T) & ")";
   end Image;

   function Image (Item : PJ_OPK) return String is
   begin
      return "(O => " & Image (Item.O) &
        ", P => " & Image (Item.P) &
        ", K => " & Image (Item.K) & ")";
   end Image;

   function Image (Item : PJ_ENU) return String is
   begin
      return "(E => " & Image (Item.E) &
        ", N => " & Image (Item.N) &
        ", U => " & Image (Item.U) & ")";
   end Image;

   function Image (Item : PJ_GEOD) return String is
   begin
      return "(S => " & Image (Item.S) &
        ", A1 => " & Image (Item.A1) &
        ", A2 => " & Image (Item.A2) & ")";
   end Image;

   function Image (Item : PJ_UV) return String is
   begin
      return "(U => " & Image (Item.U) &
        ", V => " & Image (Item.V) & ")";
   end Image;

   function Image (Item : PJ_XY) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_LP) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_XYZ) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_UVW) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_LPZ) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_COORD_V_Array) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_COORD_Array) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_LOG_LEVEL) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_LOG_FUNCTION) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_CONTEXT) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_DEFAULT_CONTEXT_TYPE) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : DIRECTION) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : Status_Code) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PROJ_STRING_LIST) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_GUESSED_WKT_DIALECT) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_CATEGORY) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_TYPE) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_COMPARISON_CRITERION) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PROJ_CRS_EXTENT_USE) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PROJ_GRID_AVAILABILITY_USE) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_PROJ_STRING_TYPE) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PROJ_SPATIAL_CRITERION) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PROJ_INTERMEDIATE_CRS_USE) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_COORDINATE_SYSTEM_TYPE) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PROJ_CRS_INFO) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PROJ_CRS_LIST_PARAMETERS) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_OBJ_LIST) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

   function Image (Item : PJ_OPERATION_FACTORY_CONTEXT) return String is
      pragma Unreferenced (Item);
   begin
      return "<Image unimplemented>";
   end Image;

end PROJ.Images;
