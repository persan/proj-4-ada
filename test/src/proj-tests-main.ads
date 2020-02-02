with PROJ.Tests.Test_Suit;
with Aunit.run.Generic_runner;
procedure PROJ.Tests.Main is new Aunit.Run.Generic_Runner (PROJ.Tests.Test_Suit.Suit);
