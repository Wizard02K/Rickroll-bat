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
