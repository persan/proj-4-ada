pragma Ada_2012;
package body Proj.Conversions is

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Libproj.Proj_H.PJ_ELLPS) return PJ_ELLPS is
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Libproj.Proj_H.PJ_UNITS) return PJ_UNITS is
      pragma Unreferenced (Source);
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
      pragma Unreferenced (Source);
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
      pragma Unreferenced (Source);
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
      pragma Unreferenced (Source);
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
      pragma Unreferenced (Source);
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
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;


   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Libproj.Proj_H.PJ_TYPE) return PJ_TYPE is
      pragma Unreferenced (Source);
   begin
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Up;

   ------------------
   -- Convert_Down --
   ------------------

   function Convert_Down (Source : PJ_TYPE) return Libproj.Proj_H.PJ_TYPE is
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Interfaces.C.int) return Boolean is
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True, "Convert_Up unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Up";
   end Convert_Up;

   ------------------
   -- Convert_Down --
   ------------------

   function Convert_Down (Source : Boolean) return Interfaces.C.int is
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;

   ----------------
   -- Convert_Up --
   ----------------

   function Convert_Up (Source : Interfaces.C.Strings.chars_ptr) return Ada.Strings.Unbounded.Unbounded_String is
   begin
      return Ada.Strings.Unbounded.To_Unbounded_String (Interfaces.C.Strings.Value (Source));
   end;

   function Convert_Up (Source : System.Address; Count : Interfaces.C.Size_T) return Unbounded_Vectors.Vector is
      Src : Interfaces.C.Strings.Chars_Ptr_Array (1 .. Count) with
        Import => True,
        Address => Source;
   begin
      return Ret : Unbounded_Vectors.Vector do
         for S of Src loop
            Ret.Append (Convert_Up (S));
         end loop;
      end return;
   end;

--     function Convert_Up (Source : System.Address; Count : Interfaces.C.Size_T) return Unbounded_Vectors.Vector is
--     begin
--        return Ada.Strings.Unbounded.To_Unbounded_String (Interfaces.C.Strings.Value (Source));
--     end;

   function Convert_Up (Source : Libproj.Proj_H.PJ_INFO) return PJ_INFO is
   begin
      return Ret : PJ_INFO do
         Ret.Major := Convert_Up (Source.Major);
         Ret.Minor := Convert_Up (Source.Minor);
         Ret.Patch := Convert_Up (Source.Patch);

         Ret.Release := Convert_Up (Source.Release);
         Ret.Version := Convert_Up (Source.Version);
         Ret.Searchpath := Convert_Up (Source.Searchpath);
         Ret.Paths := Convert_Up (Source.Paths, Source.path_count);
      end return;
   end Convert_Up;

   ------------------
   -- Convert_Down --
   ------------------

   function Convert_Down (Source : PJ_INFO) return Libproj.Proj_H.PJ_INFO is
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end Convert_Down;
 function Convert_Up (Source : Libproj.Proj_H.PJ_PROJ_INFO) return PJ_PROJ_INFO is
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end ;
   function Convert_Down (Source : PJ_PROJ_INFO) return Libproj.Proj_H.PJ_PROJ_INFO is
      pragma Unreferenced (Source);
   begin
      pragma Compile_Time_Warning (Standard.True,
         "Convert_Down unimplemented");
      return raise Program_Error with "Unimplemented function Convert_Down";
   end ;

end Proj.Conversions;
