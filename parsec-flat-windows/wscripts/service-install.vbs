Set sh = CreateObject("Wscript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")
Dim args
Dim path

If Wscript.Arguments.Count = 0 Then
	path = fs.GetAbsolutePathName("") & "\pservice.exe"
Else
	path = Wscript.Arguments(0)
End If

args = "sc.exe create Parsec binPath= ""\""" & path & "\"""" start= auto type= interact type= own"
sh.Run args, 0, true

args = "sc.exe start Parsec"
sh.Run args, 0, true
