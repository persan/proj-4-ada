with PROJ.Tests.Test_Grids;
with PROJ.Tests.Gie_Self_Tests;
with PROJ.Tests.Test_Operation;
with PROJ.Tests.Test_Util;
with PROJ.Tests.Pj_Transform_Test;
with PROJ.Tests.Test_Io;
with PROJ.Tests.Test_Common;
with PROJ.Tests.Test_Crs;
with PROJ.Tests.Test_Factory;
with PROJ.Tests.Proj_Errno_String_Test;
with PROJ.Tests.Test_Network;
with PROJ.Tests.Test_Datum;
with PROJ.Tests.Pj_Phi2_Test;
with PROJ.Tests.Test_Metadata;
with PROJ.Tests.Proj_Angular_Io_Test;
with PROJ.Tests.Proj_Context_Test;
package body PROJ.Tests.Test_Suit is
   T_Test_Grids             : aliased PROJ.Tests.Test_Grids.Test_Case;
   T_Gie_Self_Tests         : aliased PROJ.Tests.Gie_Self_Tests.Test_Case;
   T_Test_Operation         : aliased PROJ.Tests.Test_Operation.Test_Case;
   T_Test_Util              : aliased PROJ.Tests.Test_Util.Test_Case;
   T_Pj_Transform_Test      : aliased PROJ.Tests.Pj_Transform_Test.Test_Case;
   T_Test_Io                : aliased PROJ.Tests.Test_Io.Test_Case;
   T_Test_Common            : aliased PROJ.Tests.Test_Common.Test_Case;
   T_Test_Crs               : aliased PROJ.Tests.Test_Crs.Test_Case;
   T_Test_Factory           : aliased PROJ.Tests.Test_Factory.Test_Case;
   T_Proj_Errno_String_Test : aliased PROJ.Tests.Proj_Errno_String_Test.Test_Case;
   T_Test_Network           : aliased PROJ.Tests.Test_Network.Test_Case;
   T_Test_Datum             : aliased PROJ.Tests.Test_Datum.Test_Case;
   T_Pj_Phi2_Test           : aliased PROJ.Tests.Pj_Phi2_Test.Test_Case;
   T_Test_Metadata          : aliased PROJ.Tests.Test_Metadata.Test_Case;
   T_Proj_Angular_Io_Test   : aliased PROJ.Tests.Proj_Angular_Io_Test.Test_Case;
   T_Proj_Context_Test      : aliased PROJ.Tests.Proj_Context_Test.Test_Case;

   S : aliased AUnit.Test_Suites.Test_Suite;
    
   function Suit return AUnit.Test_Suites.Access_Test_Suite is
   begin
      S.Add_Test (T_Test_Grids'Access);
      S.Add_Test (T_Gie_Self_Tests'Access);
      S.Add_Test (T_Test_Operation'Access);
      S.Add_Test (T_Test_Util'Access);
      S.Add_Test (T_Pj_Transform_Test'Access);
      S.Add_Test (T_Test_Io'Access);
      S.Add_Test (T_Test_Common'Access);
      S.Add_Test (T_Test_Crs'Access);
      S.Add_Test (T_Test_Factory'Access);
      S.Add_Test (T_Proj_Errno_String_Test'Access);
      S.Add_Test (T_Test_Network'Access);
      S.Add_Test (T_Test_Datum'Access);
      S.Add_Test (T_Pj_Phi2_Test'Access);
      S.Add_Test (T_Test_Metadata'Access);
      S.Add_Test (T_Proj_Angular_Io_Test'Access);
      S.Add_Test (T_Proj_Context_Test'Access);
      return S'Access;
   end Suit;
end PROJ.Tests.Test_Suit;
