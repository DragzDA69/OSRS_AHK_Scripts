#Persistent
SetTimer, WatchCursor, 100
return

WatchCursor:
MouseGetPos, xpos, ypos 
ToolTip, The cursor is at  ->  x:%xpos%   y:%ypos%
return