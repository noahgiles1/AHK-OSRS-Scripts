#SingleInstance, Force


cook(){
  CFindBank()
  CemptyInv()
  CWithdrawFood()
  CUseFood()
  CFindFire()
}

click() {
  Random, sleepClick, 130, 170
  Sleep sleepClick
  Click
  Random, sleepClick, 130, 170
  Sleep sleepClick
}

mousemove(x, y){
  Random, s, 400, 700
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
}


CFindBank() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FFFF, 1, RGB, Fast
  if ( ErrorLevel = 1) {
		msgbox, "The colour wasn't found"
    }
    if (ErrorLevel = 0) {
      Random x, x1-20, x1+20
  		Random y, y1+20, y1+120
    	mousemove(x, y)
      click()
    }
}

CFindFire(){
  PixelSearch, x1, y1, 520, 365, 0, 0, 0xC46AFF, 1, RGB, Fast
  if ( ErrorLevel = 1) {
		msgbox, "The colour wasn't found"
    }
    if (ErrorLevel = 0) {
      Random x, x1-40, x1+10
  		Random y, y1-70, y1-10
    	mousemove(x, y)
      click()
      Random, sleepMove, 695, 720
      sleep sleepMove
      PixelSearch, x, y, 0, 365, 520, 502, 0x0000FF, 10, RGB, Fast
      if (ErrorLevel = 1) {
          Send {1}
          }
      if (ErrorLevel = 0) {
          Random, sleepBank, 200, 300
          Sleep sleepBank
          Send {1}
      }
      Coffscreen()
      Random j, 67400, 68000
      Sleep j
    }

}

CWithdrawFood()
{
	Random, x, 416, 448
	Random, y, 292, 317
  mousemove(x, y)
  Random, sleepMove, 200, 300
	sleep sleepMove
  click()
  Send {Esc}
  Random, sleepMove, 200, 300
  Sleep sleepMove
}


CemptyInv()
{
	Random, x, 432, 463
	Random, y, 325, 356
	mousemove(x, y)
	click()
  Random, sleepMove, 300, 400
	sleep sleepMove
}

CUseFood()
{
  Random, sleepMove, 200, 300
  Random, x, 570, 590
  Random, y, 246, 270
  mousemove(x, y)
  click()
}


Coffscreen(){
  Random x, 700, 1000
  Random y, 550, 1000
  mousemove(x, y)
}
