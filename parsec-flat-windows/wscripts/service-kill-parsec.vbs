Set sh = CreateObject("Wscript.Shell")
Dim args

args = "sc.exe control Parsec 200"
sh.Run args, 0, true
