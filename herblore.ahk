#SingleInstance, Force




herblore()
{

  ;On-screen display (OSD)
  CustomColor = BBAB8B ; Can be any RGB color.
  Gui 2:+LastFound +AlwaysOnTop -Caption +ToolWindow ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
  Gui, 2:Color, %CustomColor%
  Gui, 2:Font, s18
  Gui, 2:Add, Text, cBlue, Noah's Unf Potions

  Gui, 2:Add, Picture,x400 y30 w50 h-1 ,unf.png
  Gui, 2:Add, Picture,x280 y40 w70 h-1 ,herb.png

  Gui, 2:Font, s10
  Gui, 2:Add, Text, x22 y60 cBlue, Chosen herb:    Unknown
  Gui, 2:Font, s10
  Gui, 2:Add, Text, x22 y85 cBlue, Amount Made:    Unknown


  WinGetPos X, Y, Width, Height, RuneLite
  x1 := X + 11
  y1 := Y + 372
  Gui, 2:Show, x%x1% y%y1% w505 h128, NoActivate, RuneLite ; NoActivate avoids deactivating the currently active window.
  If WinExist("OpenOSRS")
    WinActivate, OpenOSRS
  else if WinExist("RuneLite")
    WinActivate,  RuneLite
  sleep, 5000

inputbox, pots, Potions, How many potions do you want to create?
value := pots / 14
j := Floor(value) + 1
Send {Esc}
Random, f, 500, 1000
Sleep f
HfindBank1()
  loop %j%{
    HemptyInv()
    Hwithdraw1()
    Hwithdraw2()
    Random i, 1, 5
    if (i = 1 or i = 2 or i = 3) {
      vial3()
    }
    else if (i = 4) {
      vial1()
    }
    else if (i = 5) {
      vial2()
    }
    herb()
    HfindBank()
  }
}





vial1()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random, x, 570, 590
  Random, y, 246, 270
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  sleep sleepClick

}

vial2()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 400, 700
  Random, x, 615, 635
  Random, y, 320, 342
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  sleep sleepClick

}


vial3()
{

  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepMove, 200, 300
  Random, s, 200, 400
  Random, x, 615, 635
  Random, y, 353, 378
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  sleep sleepClick

}


herb()
{

  Random, sleepBank, 200, 300
  Random, sleepClick, 130, 170
  Random, sleepMove, 695, 720
  Random, s, 400, 700
  Random, x, 655, 677
  Random, y, 353, 378
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Random, sleepClick, 130, 170
  Click
  sleep sleepMove
  PixelSearch, x, y, 0, 365, 520, 502, 0x0000FF, 10, RGB, Fast
  if (ErrorLevel = 1) {
      Send {1}
      }
  if (ErrorLevel = 0) {
      Sleep sleepBank
      Send {1}
  }
  sleep sleepClick


}


Hwithdraw1()
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

Hwithdraw2()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 200, 300
Random, s, 200, 400

	Random, x, 416, 448
	Random, y, 260, 283
  MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepMove
  Random, sleepMove, 200, 300
	Click
	sleep sleepClick
  Send {Esc}
  Sleep sleepMove
}

HemptyInv()
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


HfindBank()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepWait, 8450, 8650
Random, s, 400, 700
	PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 10, RGB, Fast
	if ( ErrorLevel = 1) {
		msgbox, "The colour wasn't found"
    }
	if (ErrorLevel = 0) {
    Random x, x1-200, x1
		Random y, y1-65, y1+5
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepWait
  	Click
  	sleep sleepBank
  }

}
HfindBank1()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepWait, 1000, 1500
Random, s, 400, 700
	PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 10, RGB, Fast
	if ( ErrorLevel = 1) {
		msgbox, "The colour wasn't found"
    }
	if (ErrorLevel = 0) {
    Random x, x1-200, x1
		Random y, y1-65, y1+5
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepWait
  	Click
  	sleep sleepBank
  }

}
