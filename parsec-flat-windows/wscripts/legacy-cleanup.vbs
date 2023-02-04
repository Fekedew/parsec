Set sh = CreateObject("Wscript.Shell")
Dim args

args = "schtasks /delete /tn ParsecTeams /f"
sh.Run args, 0, true
