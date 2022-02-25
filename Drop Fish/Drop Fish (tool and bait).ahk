; ## Local Variables ##
ItemsToSkip = 0	;Skips items stored in the 4th slot of each row - starting at the top.
FinalLoop := (4-ItemsToSkip)	;Amount of times the final loop wil run - DO NOT TOUCH!

; ## Helper Functions ##
MoveDownItem(i:=1) {
  Mousemove, 0 , i*(36) , 0 , R 
}
MoveUpItem(i:=1) {
  Mousemove, 0 , i*(-36) , 0 , R 
}
MoveRightItem(i:=1) {
  Mousemove, i*(40) , 0 , 0 , R 
}
MoveLeftItem(i:=1) {
  Mousemove, i*(-40) , 0 , 0 , R 
}

; ## Key Binding Executions ## 
F6::
MsgBox, ,Skip Settings, Currently skipping %ItemsToSkip% item(s).
Return 

F4:: 
MouseGetPos, xPos, yPos
Loop, 6 {
  Click Left
  MoveDownItem(1)
}

Click Left
MoveRightItem(1)

Loop, 6 {
  Click Left
  MoveUpItem(1)
}

Click Left
MoveRightItem(1)

Loop, 6 {
  Click Left
  MoveDownItem(1)
}

Click Left
MouseMove 40, -72, 0, R

Loop, %FinalLoop% {
  Click Left
  MoveUpItem(1)
}

Click Left
MouseMove xPos, yPos		; Move mouse back to original position

Return
