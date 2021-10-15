; ## Local Variables ##
FletchCyclesToDo := 10

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
Loop, %FletchCyclesToDo% {
  Click Left
  MoveDownItem()
  Click Left
  Click Left
  MoveUpItem()
  Click Left
}

Return


Escape::
ExitApp
Return