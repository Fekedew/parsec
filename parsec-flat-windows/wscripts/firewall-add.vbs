Set sh = CreateObject("Wscript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")
Dim args
Dim path

path = Wscript.Arguments(0)

args = "netsh.exe advfirewall firewall add rule name=Parsec dir=in action=allow program=""" & path & """ enable=yes profile=public,private,domain"
sh.Run args, 0, true
