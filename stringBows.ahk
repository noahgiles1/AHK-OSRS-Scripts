#SingleInstance, Force

fletch() {
  inputbox, bows, Fletching, How many bows do you want to string
  value := pots / 14
  j := Floor(value)
    loop %j%{
      FfindBank()
      FemptyInv()
      Fwithdraw1()
      Fwithdraw2()
      Random i, 1, 5
      if (i = 1 or i = 2 or i = 3) {
        string3()
      }
      else if (i = 4) {
        string1()
      }
      else if (i = 5) {
        string2()
      }
      bow()
    }
  }





  string1()
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

  string2()
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


  string3()
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


  bow()
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


  Fwithdraw1()
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

  Fwithdraw2()
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

  FemptyInv()
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


  FfindBank()
  {
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepWait, 16850, 17100
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
