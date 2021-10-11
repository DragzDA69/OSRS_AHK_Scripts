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
Loop, 3 {
   Click Left
   MoveRightItem()
   Click Left
   MoveDownItem()
   Click Left
   MoveLeftItem()
   Click Left
   MoveDownItem()
}
Loop, 3 {
   Click Left
   MoveRightItem()
}
Click Left
MoveUpItem()

Loop, 2 {
   Click Left
   MoveLeftItem()
   Click Left
   MoveUpItem()
   Click Left
   MoveRightItem()
   Click Left
   MoveUpItem()
}
Click Left
MoveLeftItem()
Click Left
MoveUpItem() 
Click Left
MoveRightItem()
Click Left
