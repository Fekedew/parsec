Set sh = CreateObject("Wscript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")
Dim args

args = "netsh.exe advfirewall firewall delete rule name=Parsec"
sh.Run args, 0, true

args = "netsh.exe advfirewall firewall delete rule name=parsec.exe"
sh.Run args, 0, true

args = "netsh.exe advfirewall firewall delete rule name=parsecd.exe"
sh.Run args, 0, true
