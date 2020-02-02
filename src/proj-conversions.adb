pragma Ada_2012;
package body Proj.Conversions is

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Libproj.Proj_H.PJ_ELLPS) return PJ_ELLPS is
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Libproj.Proj_H.PJ_UNITS) return PJ_UNITS is
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up
     (Source : Libproj.Proj_H.PJ_PRIME_MERIDIANS) return PJ_PRIME_MERIDIANS
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up
     (Source : Libproj.Proj_H.PJ_COORDINATE_SYSTEM_TYPE)
      return PJ_COORDINATE_SYSTEM_TYPE
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ------------------
   -- Convert_Down --
   ------------------

   function Convert_Down
     (Source : PJ_COORDINATE_SYSTEM_TYPE) return Libproj.Proj_H
     .PJ_COORDINATE_SYSTEM_TYPE
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up
     (Source : Libproj.Proj_H.PJ_COMPARISON_CRITERION)
      return PJ_COMPARISON_CRITERION
   is
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ------------------
   -- Convert_Down --
   ------------------

   function Convert_Down
     (Source : PJ_COMPARISON_CRITERION) return Libproj.Proj_H
     .PJ_COMPARISON_CRITERION
   is
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Libproj.Proj_H.PJ_TYPE) return PJ_TYPE is
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ------------------
   -- Convert_Down --
   ------------------

   function Convert_Down (Source : PJ_TYPE) return Libproj.Proj_H.PJ_TYPE is
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Interfaces.C.int) return Boolean is
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ------------------
   -- Convert_Down --
   ------------------

   function Convert_Down (Source : Boolean) return Interfaces.C.int is
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;

end Proj.Conversions;
