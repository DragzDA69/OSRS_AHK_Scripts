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
F4:: 
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

Loop, 4 {
  Click Left
  MoveUpItem(1)
}

Click Left

Return
