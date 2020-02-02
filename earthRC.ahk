#SingleInstance, Force


earthRC() {
  loop, {
    loop, 16 {
      Eteleport()
      Ewalk1()
      Ewalk2()
      Ebank()
      Eemptyinv()
      Random i, 1, 3
      if (i = 1 or i = 2) {
        EwithdrawStam()
        EcloseBank()
        EdrinkStam()
        EfindBank2()
        EemptyInv()
      }
      EwithdrawTalisman()
      EwithdrawEss()
      EcloseBank()
      Ewalk4()
      Ewalk5()
      Ewalk6()
      Ewalk7()
      EfindAltar1()
      EfindAltar2()
      }
    Eteleport()
    Ewalk1()
    Ewalk2()
    Ebank()
    Eemptyinv()
    EwithdrawStam()
    EwithdrawNecklace()
    EcloseBank()
    EdrinkStam()
    EwearNeckalce()
    EfindBank2()
    EemptyInv()
    EwithdrawTalisman()
    EwithdrawEss()
    EcloseBank()
    Ewalk4()
    Ewalk5()
    Ewalk6()
    Ewalk7()
    EfindAltar1()
    EfindAltar2()
  }
}

Ewalk1() {
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6500, 6750
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  PixelSearch, x2, y2, 0, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1, x2
  Random y, y1, y2
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Click
  sleep sleepMove
}


Ewalk2() {
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 7000, 7200
  Random, s, 250, 450
  PixelSearch, x1, y1, 400, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  PixelSearch, x2, y2, 400, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1, x2
  Random y, y1, y2
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Click
  sleep sleepMove
}



Ebank() {
  Random, sleepBank, 1300, 1500
  Random, sleepClick, 130, 170
  Random, sleepMove, 6000, 6300
  Random, s, 400, 650
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1-2, x1-10
  Random y, y1+2, y1+9
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Click
  sleep sleepMove
}

EfindBank2()
{
  Random, sleepBank, 1300, 1500
  Random, sleepClick, 130, 170
  Random, sleepMove, 6000, 6300
  Random, s, 400, 650
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1-2, x1-10
  Random y, y1+2, y1+9
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Click
  sleep sleepbank
}


EemptyInv()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 300, 400
Random, s, 400, 700

	Random, x, 432, 463
	Random, y, 325, 356
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Click
	sleep sleepMove
}

EwithdrawEss(){
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 200, 400

  	Random, x, 416, 448
  	Random, y, 292, 317
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepMove
  	Click
  	sleep sleepClick
}

EwithdrawStam()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 200, 300
Random, s, 200, 400

	Random, x, 416, 448
	Random, y, 260, 283
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	Sleep sleepMove
	Click, right
	Sleep sleepClick
  Random, sleepClick, 130, 170
  MouseMove, 0, 35, 0, R
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
}

EwithdrawTalisman()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 200, 300
Random, s, 200, 400

	Random, x, 416, 448
	Random, y, 223, 242
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	Sleep sleepMove
	Click, right
	Sleep sleepClick
  Random, sleepClick, 130, 170
  MouseMove, 0, 35, 0, R
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
}

EwithdrawNecklace() {
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 200, 400

  	Random, x, 416, 448
  	Random, y, 185, 209
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	Sleep sleepMove
  	Click, right
  	Sleep sleepClick
    Random, sleepClick, 130, 170
    MouseMove, 0, 35, 0, R
    Sleep sleepClick
    Random, sleepClick, 130, 170
    Click
    Sleep sleepClick
}

EcloseBank()
{

  Random, sleepClick, 130, 170
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Esc}
  Sleep sleepClick

}

EdrinkStam()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random, x, 569, 592
	Random, y, 248, 269
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
}

EwearNeckalce()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random, x, 613, 638
	Random, y, 248, 269
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
}






Ewalk4(){
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 8500, 8750
  Random, s, 400, 700
  PixelSearch, x1, y1, 340, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  PixelSearch, x2, y2, 340, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1, x2
  Random y, y1, y2
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Click
  Sleep sleepMove

}
Ewalk5(){
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 7150, 7400
  Random, s, 400, 700
  PixelSearch, x1, y1, 340, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  PixelSearch, x2, y2, 340, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1, x2
  Random y, y1, y2
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Click
  Sleep sleepMove

}

Ewalk6() {
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6500, 6750
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 0, 520, 80, 0xFF00E7, 10, RGB, Fast
  PixelSearch, x2, y2, 0, 80, 520, 0, 0xFF00E7, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1, x2
  Random y, y1, y2
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Click
  sleep sleepMove
}


Ewalk7(){
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6250, 6500
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 0, 520, 140, 0xFF00E7, 10, RGB, Fast
  PixelSearch, x2, y2, 0, 140, 520, 0, 0xFF00E7, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1, x2
  Random y, y1, y2
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Click
  Sleep sleepMove
}


EfindAltar1(){
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6500, 6750
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 10, RGB, Fast
  PixelSearch, x2, y2, 0, 365, 520, 0, 0x00FAFF, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1, x2
  Random y, y1, y2-10
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  click
  sleep sleepMove
  PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  if (ErrorLevel = 0) {
    EfindAltar1()
  }
}

EfindAltar2(){
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6500, 6750
  Random, s, 400, 700

  Random x, 570, 595
  Random y, 280, 300
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  click
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 10, RGB, Fast
  MouseGetPos, x0, y0
  Random x, x1-5, x1-27
  Random y, y1, y1+20
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  click
  sleep sleepMove
}


Eteleport(){
  Random, sleepBank, 3600, 3800
  Random, sleepClick, 130, 170
  Random, sleepMove, 6500, 6750
  Random, s, 400, 700
  Random x, 697, 719
  Random y, 461, 482
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  click
  sleep sleepBank
}
