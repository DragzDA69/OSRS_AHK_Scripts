#Persistent
SetTimer, WatchCursor, 100
Return

WatchCursor:
MouseGetPos, xpos, ypos, id, control
WinGetTitle, title, A
ToolTip, Application:  %title%`nCoordinates:  [x:%xpos%  y:%ypos%]
Return
