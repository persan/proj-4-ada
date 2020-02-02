with AUnit.Options;
with AUnit.Test_Filters;
with Ada.Text_IO; use Ada.Text_IO;
with Aunit.Run;
with GNAT.Strings;
with AUnit.Reporter.Text;
with AUnit.Reporter.XML;
with Ada.Command_Line;
with AUnit;
with GNAT.Command_Line;
with AUnit.Test_Filters.List_Filters;
with Ada.Directories;

procedure Aunit.run.Generic_runner is
   use AUnit;
   use GNAT.Command_Line;
   use type GNAT.Strings.String_Access;
   DEFAULT_LIST        : constant String := "testlist.txt";

   function Run is new AUnit.Run.Test_Runner_With_Status (Suite);
   Text_Reporter       : aliased AUnit.Reporter.Text.Text_Reporter;
   XML_Reporter        : aliased AUnit.Reporter.XML.XML_Reporter;

   Options             : aliased AUnit.Options.AUnit_Options := AUnit.Options.Default_Options;
   Filter              : aliased AUnit.Test_Filters.List_Filters.List_Filter;
   Filter_Path         : aliased GNAT.Strings.String_Access;
   Test_List_Save      : aliased GNAT.Strings.String_Access;
   Use_Text            : aliased Boolean := True;
   Use_XML             : aliased Boolean := False;

   Command_Line_Config : Command_Line_Configuration;

   type Reporter_Access is access all AUnit.Reporter.Reporter'Class;
   Reporter : Reporter_Access := Text_Reporter'Unrestricted_Access;
begin

   Options.Report_Successes := False;
   Define_Switch (Command_Line_Config, Options.Global_Timer'Unrestricted_Access, "-T", "--global-timer", Help => "Time all cases");
   Define_Switch (Command_Line_Config, Options.Test_Case_Timer'Unrestricted_Access, "-t", "--test-case-timer", Help => "time every case");
   Define_Switch (Command_Line_Config, Options.Report_Successes'Unrestricted_Access, "-s", "--report-successes", Help => "Report sucesses");
   Define_Switch (Command_Line_Config, Filter_Path'Unrestricted_Access, "-f?", "--filer?", Help => "Read testcases to run form PATH", Argument => "PATH");
   Define_Switch (Command_Line_Config, Test_List_Save'Unrestricted_Access, "-o=", "", Help => "save a list io testcates to PATH", Argument => "PATH");

   Define_Switch (Command_Line_Config, Use_Text'Unrestricted_Access, "", "--text", Help => "report in XML format");
   Define_Switch (Command_Line_Config, Use_XML'Unrestricted_Access, "", "--xml", Help => "Report in text format");

   GNAT.Command_Line.Getopt (Command_Line_Config);

   if Use_Text then
      Reporter := Text_Reporter'Unrestricted_Access;
   elsif Use_XML then
      Reporter := XML_Reporter'Unrestricted_Access;
   end if;

   if Filter_Path /= null and then Filter_Path.all'Length /= 0 then
      Filter.Read (Filter_Path.all);
      Options.Filter := Filter'Unrestricted_Access;
   elsif Ada.Directories.Exists (DEFAULT_LIST) then
      Filter.Read (DEFAULT_LIST);
      Options.Filter := Filter'Unrestricted_Access;
   end if;


   if Run (Reporter.all, Options) = AUnit.Success then
      Ada.Command_Line.Set_Exit_Status (Ada.Command_Line.Success);
   else
      Ada.Command_Line.Set_Exit_Status (Ada.Command_Line.Failure);
   end if;
   if Test_List_Save /= null and then Test_List_Save.all'Length /= 0 then
      Filter.Write(Test_List_Save.all);
   end if;
exception
   when GNAT.COMMAND_LINE.EXIT_FROM_COMMAND_LINE  | GNAT.COMMAND_LINE.INVALID_SWITCH  =>
      null;
end Aunit.run.Generic_runner;
