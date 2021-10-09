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
MoveTo(x, y) {
  Mousemove, x, y, 0
}

; ## Local Variables ##
Slot1_x := 742
Slot1_y := 325
Fish_x := 630
Fish_y := 350

; ## Key Binding Executions ## 
NumpadDiv::
MoveTo(Slot1_x, Slot1_y)
Click Left
Sleep, 600
MoveDownItem(1)
Click Left
Sleep, 300
MoveDownItem(1)
Click Left
Sleep, 300
Mousemove, -100, 0, 0, R
Click Left
Return

Numpad3::
MoveTo(Slot1_x, Slot1_y)
Click Left
Return

Numpad2::
MoveDownItem(1)
Click Left
Return 

Numpad1::
MoveDownItem(1)
Click Left
Return

Numpad5::
MoveTo(Fish_x, Fish_y)
Click Left