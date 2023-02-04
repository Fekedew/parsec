Set sh = CreateObject("Wscript.Shell")
Dim args

args = "sc.exe stop Parsec"
sh.Run args, 0, true

args = "sc.exe delete Parsec"
sh.Run args, 0, true
