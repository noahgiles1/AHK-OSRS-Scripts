#SingleInstance, Force

runecraft()
{
  loop {
      teleport()
      moveCam()
      findBankRC()
      emptyInv()
      withdrawEss()
      fillPouch()
      withdrawStam()
      Random f, 1, 4
      if (f = 4) {
        withdrawFood()
      }

      if (f = 4) {
        eatFood()
      }
      drinkStam()
      emptyInv()
      withdrawEss()
      fillPouch1()
      withdrawEss()
      closeBank()
      repairPouch()
      firstMove()
      secondMove()
      thirdMove()
      fourthMove()
      fithMove()
      clickAltar()
      emptyPouch()
      clickAltar1()
      emptyPouch1()
      clickAltar2()

      teleport()
      moveCam()
      findBankRC()
      emptyInv()
      withdrawEss()
      fillPouch()
      emptyInv()
      withdrawEss()
      fillPouch1()
      withdrawEss()
      closeBank()
      repairPouch()
      firstMove()
      secondMove()
      thirdMove()
      fourthMove()
      fithMove()
      clickAltar()
      emptyPouch()
      clickAltar1()
      emptyPouch1()
      clickAltar2()
    }

}



moveCam()
{
Random, i, 1, 10
if i = 10
	Random, sleepClick, 175, 200
	Random, sleepMove, 500, 750
	sleep sleepClick
  Random, sleepClick, 175, 200
	Send {Up Down}
	Sleep sleepClick
	Send {Up up}
	Sleep sleepMove
}


repairPouch() {
  Random, sleepClick, 175, 200
  Random, sleepMove,  800, 1000
  Random, sleepWait, 7000, 8000
  Random, s, 400, 700

  PixelSearch, x, y, 0, 365, 520, 502, 0x221919, 10, RGB, Fast
  if (ErrorLevel = 1) {
    Sleep 100
      }
  if (ErrorLevel = 0) {
    Send {F6}
    Sleep sleepClick
    Random, sleepClick, 175, 200
    Random x, 560, 573
    Random y, 266, 279
    MouseGetPos, x0, y0
    RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
    Sleep sleepClick
    Random, sleepClick, 175, 200
    Click
    Sleep sleepClick
    Random, sleepClick, 175, 200
    Random x1, 235, 274
    Random y1, 121, 200
    MouseGetPos, x0, y0
    RandomBezier(x0, y0, x1, y1, "T" s A_Space "P2-4")
    Sleep sleepClick
    Random, sleepClick, 175, 200
    Click
    Sleep sleepWait
    Send {Space}
    Sleep sleepMove
    Random, sleepMove,  800, 1000
    Send {Space}
    Sleep sleepMove
    Random, sleepMove,  800, 1000
    Send {Space}
    Sleep sleepMove
    Random, sleepMove,  800, 1000
    Send {Space}
    Sleep sleepMove
    Random, sleepMove,  800, 1000
    Send {Esc}
    Sleep sleepClick
  }
}

emptyPouch()
{
  Random, sleepClick, 130, 170
  Random, s, 400, 700
  Random x, 573, 592
  Random y, 247, 268
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift down}
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  MouseMove, 0, 35, 0, R
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift up}
  Sleep sleepClick
}

emptyPouch1()
{
  Random, sleepClick, 130, 170
  Random, s, 300, 500
  Random x, 614, 634
  Random y, 247, 268
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift down}
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  MouseMove, 0, 35, 0, R
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift up}
  Sleep sleepClick
}


clickAltar()
{


  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6250, 6500
  Random, s, 400, 700
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0xF1FF00, 10, RGB, Fast
  	PixelSearch, x2, y2, 0, 365, 520, 0, 0xF1FF00, 10, RGB, Fast
  	if ErrorLevel = 1
  		Sleep sleepBank
  	if (ErrorLevel = 0) {
  		Random x, x2, x1
  		Random y, y1, y2
    	MouseGetPos, x0, y0
    	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
    	sleep sleepClick
    	Click
    	sleep sleepMove

      PixelSearch, x9, y9, 574, 464, 589, 480, 0x817878, 5, RGB, Fast
      if (ErrorLevel = 0) {
        clickAltar()
      }


    }

}


clickAltar1()
{


  Random, sleepBank, 2450, 2600
  Random, sleepClick, 130, 170
  Random, sleepOkay, 2900, 3115
  Random, sleepMove, 6250, 6500
  Random, s, 400, 700
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0xF1FF00, 10, RGB, Fast
  	PixelSearch, x2, y2, 0, 365, 520, 0, 0xF1FF00, 10, RGB, Fast
  	if (ErrorLevel = 1) {
      sleep 500
    }
  	if ErrorLevel = 0
  		Random x, x2, x1
  		Random y, y1, y2
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepClick
    Random, sleepClick, 130, 170
  	Click
    sleep sleepClick
      Random x, 600, 650
      Random y, 260, 285
      Random, s, 400, 700
      MouseGetPos, x0, y0
    	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
    	sleep sleepOkay
}

clickAltar2()
{


  Random, sleepBank, 2450, 2600
  Random, sleepClick, 130, 170
  Random, sleepOkay, 2600, 2900
  Random, sleepMove, 6250, 6500
  Random, s, 400, 700
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0xF1FF00, 10, RGB, Fast
  	PixelSearch, x2, y2, 0, 365, 520, 0, 0xF1FF00, 10, RGB, Fast
  	if (ErrorLevel = 1) {
      sleep 500
    }
  	if ErrorLevel = 0
  		Random x, x2, x1
  		Random y, y1, y2
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepClick
    Random, sleepClick, 130, 170
  	Click
    sleep sleepClick
      Random x, 700, 750
      Random y, 260, 285
      Random, s, 400, 700
      MouseGetPos, x0, y0
    	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
    	sleep sleepOkay
}


fithMove()
{


  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6600, 6800
  Random, s, 400, 700
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
  	if (ErrorLevel = 1) {
  		fourthMove()
      fithMove1()
      clickAltar()
      emptyPouch()
      clickAltar1()
      runecraft()

    }
  	if ErrorLevel = 0
  		Random x, x2, x1
  		Random y, y1, y2
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepClick
  	Click
  	sleep sleepMove

}

fithMove1()
{


  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6600, 6800
  Random, s, 200, 400
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
  	if (ErrorLevel = 1) {
      teleport()
      exitapp
    }
  	if (ErrorLevel = 0) {
  		Random x, x2, x1
  		Random y, y1, y2
  	  MouseGetPos, x0, y0
  	  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	  sleep sleepClick
  	  Click
      sleep sleepMove
    }
}

fourthMove()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6350, 6500
  Random, s, 400, 700
  Random, x, 675, 688
	Random, y, 164, 175
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Click
  Sleep sleepMove

}

thirdMove()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6250, 6500
  Random, s, 200, 400
  Random, x, 665, 680
	Random, y, 174, 185
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Click
  Sleep sleepMove

}

secondMove()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6250, 6500
  Random, s, 200, 400
  Random, x, 650, 662
	Random, y, 178, 186
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Click
  Sleep sleepMove

}


firstMove()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 6250, 6500
  Random, s, 400, 700
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
  	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
  	if ErrorLevel = 2
  		msgbox, "There was some sort of problem"
  	if ErrorLevel = 1
  		msgbox, "The colour wasn't found"
  	if ErrorLevel = 0
  		Random x, x2, x1
  		Random y, y1, y2
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepClick
  	Click
  	sleep sleepMove

}

drinkStam()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random, x, 658, 674
	Random, y, 248, 269
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift down}
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift up}
  Sleep sleepClick
}

eatFood()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random, x, 695, 719
	Random, y, 248, 269
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift down}
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift up}
  Sleep sleepClick
}

fillPouch()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random x, 573, 592
  Random y, 245, 270
  MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift down}
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  MouseMove, 0, 35, 0, R
  Sleep sleepClick
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift up}
  Sleep sleepMove
}

fillPouch1()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random x, 613, 634
  Random y, 245, 270
  MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift down}
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  MouseMove, 0, 35, 0, R
  Sleep sleepClick
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Shift up}
  Sleep sleepMove
}

closeBank()
{

  Random, sleepClick, 130, 170
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Send {Esc}
  Sleep sleepClick

}

withdrawEss()
{
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

withdrawStam()
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

withdrawFood()
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


teleport()
{
  Random, sleepClick, 175, 200
  Random, sleepMove, 1800, 2200
  Random, s, 300, 500
  Send {F6}
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Random x, 719, 734
  Random y, 266, 279
  MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  Sleep sleepClick
  Random, sleepClick, 130, 170
  Random x1, 75, 218
  Random y1, 35, 231
  Random, s, 400, 700
  MouseGetPos, x0, y0
	RandomBezier(x0, y0, x1, y1, "T" s A_Space "P2-4")
  Sleep sleepMove
  Send {Esc}
  Sleep sleepClick
}

emptyInv()
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

findBankRC()
{
Random, sleepBank, 4450, 4750
Random, sleepClick, 130, 170
Random, sleepMove, 1000, 1500
Random, s, 300, 600
	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFFFF00, 10, RGB, Fast
	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFFFF00, 10, RGB, Fast
	if ErrorLevel = 2
		msgbox, "There was some sort of problem"
	if ErrorLevel = 1
		msgbox, "The colour wasn't found"
	if ErrorLevel = 0
		Random x, x2+2, x1
		Random y, y1, y2-2
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Click
	sleep sleepBank
}

findBank()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 1000, 1500
Random, s, 250, 500
	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFFFF00, 10, RGB, Fast
	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFFFF00, 10, RGB, Fast
	if ErrorLevel = 2
		msgbox, "There was some sort of problem"
	if ErrorLevel = 1
		msgbox, "The colour wasn't found"
	if ErrorLevel = 0
		Random x, x2+2, x1
		Random y, y1, y2-2
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Click
	sleep sleepBank
}






setUp()
{
	Random, sleepClick, 175, 200
	Random, sleepMove, 1000, 1500
  Random, sleepBank, 2000, 2500
	Random, s, 400, 700
	Send {F10}
	Sleep sleepClick
  Random, sleepClick, 130, 170
	Random x, 606, 614
	Random y, 297, 306
	Sleep sleepMove
  Random, sleepMove, 1000, 1500
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	Sleep sleepMove
  Random, sleepMove, 1000, 1500
	Click
	Sleep sleepClick
  Random, sleepClick, 130, 170
	Send {Esc}
	Sleep sleepClick
	Send {Esc}
	Sleep sleepClick
  Random, sleepClick, 130, 170
	Random x, 550, 576
	Random y, 38, 58
  Random, s, 400, 700
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepMove
  Random, sleepMove, 1000, 1500
	Click
	sleep sleepClick
  Random, sleepClick, 130, 170
	Send {Up Down}
	Sleep sleepBank
	Send {Up up}
}
