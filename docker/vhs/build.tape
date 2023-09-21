# Where should we write the GIF?
Output assets/build.mp4

Require docker

Set FontSize 28
Set Width 2400
Set Height 600
Set Framerate 30
Set CursorBlink false
Set PlaybackSpeed 0.8

Set Theme "Monokai Pro"
Sleep 2s

Type "docker build -t ghcr.io/norsk-programmering/website ."
Enter
Sleep 25s
