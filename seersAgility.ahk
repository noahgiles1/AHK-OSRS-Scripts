#SingleInstance, Force
If WinExist("OpenOSRS")
  WinActivate


Global laps := 0
Global j := 0



agility()
{
  inputbox, laps, Agility, How many laps do you want to do?
  Asetup()
  agility1()
}

agility1()
{
  if (j = laps){
    msgbox, finished
  }
  else {
    j ++
    start()
  }
}

AsetUp()
{
	Random, sleepClick, 175, 200
	Random, sleepMove, 1000, 1500
  Random, sleepBank, 2000, 2500
	Random, s, 400, 700
	Send {F10}
	Sleep sleepClick
  Random, sleepClick, 130, 170
	Random x, 606, 611
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


eat() {
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepWait, 5000, 5500
  Random, s, 400, 700

  PixelSearch, x6, y6, 534, 332, 547, 353, 0x7A1B08, 10, RGB, Fast
  if (ErrorLevel = 1) {
    PixelSearch, x1, y1, 560, 236, 736, 489, 0x00FF00, 10, RGB, Fast
    if (ErrorLevel = 0) {
        xf := x1 + 20
        yf := y1 + 20
        Random x, xf, x1
        Random y, yf, y1
        MouseGetPos, x0, y0
        RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
        Click
        Random, sleepClick, 130, 170
      }
  }
}

start()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepWait, 5200, 5500
  Random, s, 400, 700
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0x0000FF, 10, RGB, Fast
  	if ErrorLevel = 2
  		msgbox, "There was some sort of problem"
  	if ErrorLevel = 1
  		msgbox, "The colour wasn't found"
  	if (ErrorLevel = 0) {
  		Random x, x1+2, x1+11
  		Random y, y1+4, y1+12
  	   MouseGetPos, x0, y0
  	   RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	   sleep sleepClick
  	   Click
  	   sleep sleepWait
       findObstacle1()
  }
}

findObstacle1()
{
  Random, sleepBank, 1250, 1400
  Random, sleepClick, 130, 170
  Random, sleepWait, 6200, 6400
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 0, 200, 365, 0x0000FF, 10, RGB, Fast
  if (ErrorLevel = 1) {
    start()
  }
  if (ErrorLevel = 0){
    PixelSearch, x1, y1, 0, 0, 520, 365, 0x0000FF, 10, RGB, Fast
    if (ErrorLevel = 0) {
      PixelSearch, x1, y1, 0, 0, 520, 365, 0xC46AFF, 10, RGB, Fast
      if (ErrorLevel = 0) {
        msgbox, %x1%
        msgbox, %y1%
        Random x, 237, 245
        Random y, 177, 184
        MouseGetPos, x0, y0
        RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
        sleep sleepClick
        Random, sleepClick, 130, 170
        Click
        sleep sleepBank
        Random x, 158, 178
        Random y, 190, 213
        MouseGetPos, x0, y0
        RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
        sleep sleepClick
        Random, sleepClick, 130, 170
        Click
        Sleep sleepwait
        findObstacle2()
      }
      if (ErrorLevel = 1) {
        Random x, 147, 158
        Random y, 167, 195
        MouseGetPos, x0, y0
        RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
        sleep sleepClick
        Random, sleepClick, 130, 170
        Click
        sleep sleepWait
        findObstacle2()
      }
    }
  }
}

findObstacle2()
{
  Random, sleepBank, 1800, 2000
  Random, sleepClick, 130, 170
  Random, sleepWait, 9000, 9200
  Random, s, 300, 600

  PixelSearch, x1, y1, 0, 0, 520, 365, 0x0000FF, 10, RGB, Fast
  if (ErrorLevel = 1) {
    eat()
    walkStart()
  }
  if (ErrorLevel = 0) {

    PixelSearch, x1, y1, 0, 0, 520, 365, 0xC46AFF, 10, RGB, Fast
    if (ErrorLevel = 0) {
      Random x, 206, 214
      Random y, 211, 219
      MouseGetPos, x0, y0
      RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
      sleep sleepClick
      Click
      sleep sleepBank
      Random, sleepClick, 130, 170
      PixelSearch, x9, y9, 0, 0, 520, 365, 0x0000FF, 10, RGB, Fast
      Random x, x9+3, x9+7
    	Random y, y9+3, y9+7
      Random, s, 300, 600
      MouseGetPos, x0, y0
      RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
      sleep sleepClick
      Random, sleepClick, 130, 170
      Click
      sleep sleepWait
      findObstacle3()
    }
    if (ErrorLevel = 1) {
    Random, s, 400, 700
    PixelSearch, x1, y1, 0, 0, 520, 365, 0x0000FF, 10, RGB, Fast
    if (ErrorLevel = 0) {
    	Random x, x1+2, x1+10
    	Random y, y1+2, y1+9
    	MouseGetPos, x0, y0
    	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
    	sleep sleepClick
    	Click
    	sleep sleepWait
      findObstacle3()
    }
    }
}
}

findObstacle3()
{
  Random, sleepBank, 1200, 1400
  Random, sleepClick, 130, 170
  Random, sleepWait, 4500, 5000
  Random, s, 300, 600

  PixelSearch, x1, y1, 0, 0, 520, 365, 0x0000FF, 10, RGB, Fast
  PixelSearch, x2, y2, 0, 365, 520, 0, 0x0000FF, 10, RGB, Fast
  if (ErrorLevel = 1) {
    eat()
    walkStart()
  }
  if (ErrorLevel = 0) {

  PixelSearch, x1, y1, 0, 0, 520, 365, 0xC46AFF, 10, RGB, Fast
  PixelSearch, x2, y2, 0, 365, 520, 0, 0xC46AFF, 10, RGB, Fast
  if (ErrorLevel = 0) {
    Random x, 283, 290
    Random y, 188, 194
    MouseGetPos, x0, y0
    RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
    sleep sleepClick
    Click
    sleep sleepBank
    Random, sleepClick, 130, 170
    PixelSearch, x1, y1, 0, 180, 520, 365, 0x0000FF, 10, RGB, Fast
    Random x, x1+2, x1+70
  	Random y, y1+2, y1+15
    Random, s, 300, 600
    MouseGetPos, x0, y0
    RandomBezier(x0, y0, x1, y1, "T" s A_Space "P2-4")
    sleep sleepClick
    Random, sleepClick, 130, 170
    Click
    sleep sleepWait
    findObstacle4()
  }
  if (ErrorLevel = 1) {
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 180, 520, 365, 0x0000FF, 10, RGB, Fast
  if (ErrorLevel = 0) {
  	Random x, x1+2, x1+70
  	Random y, y1+2, y1+15
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepClick
  	Click
  	sleep sleepWait
    findObstacle4()
  }
  }
}
}

findObstacle4()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepWait, 5000, 5200
  Random, s, 400, 700
  	PixelSearch, x1, y1, 0, 0, 520, 365, 0x0000FF, 10, RGB, Fast
  	if ErrorLevel = 1
  		msgbox, "The colour wasn't found"
  	if (ErrorLevel = 0) {
  		Random x, x1+2, x1+50
  		Random y, y1+2, y1+12
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepClick
  	Click
  	sleep sleepWait
    findObstacle5()
  }
}

findObstacle5()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepWait, 3000, 3500
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 155, 520, 365, 0x0000FF, 10, RGB, Fast
  if (ErrorLevel = 0) {
  	Random x, x1+2, x1+11
  	Random y, y1+2, y1+50
  	MouseGetPos, x0, y0
  	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  	sleep sleepClick
  	Click
  	sleep sleepWait
    courseFinish()
  }
}

courseFinish()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepWait, 8700, 8900
  Random, s, 400, 700
  Random x, 702, 715
  Random y, 73, 84
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  sleep sleepClick
  Click
  sleep sleepWait
  walkStart()
}


walkStart()
{
  Random, sleepBank, 500, 1000
  Random, sleepClick, 130, 170
  Random, sleepWait, 6000, 6500
  Random, s, 400, 700
  PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFF00E7, 10, RGB, Fast
	if ErrorLevel = 2
		msgbox, "There was some sort of problem"
	if ErrorLevel = 1
		msgbox, "The colour wasn't found"
	if ErrorLevel = 0
  random x, x1, x2
  random y, y2, y1
    MouseGetPos, x0, y0
    RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
    sleep sleepClick
    Click
    sleep sleepWait
    agility1()
}


RandomBezier( X0, Y0, Xf, Yf, O="" ) {
    Time := RegExMatch(O,"i)T(\d+)",M)&&(M1>0)? M1: 200
    RO := InStr(O,"RO",0) , RD := InStr(O,"RD",0)
    N:=!RegExMatch(O,"i)P(\d+)(-(\d+))?",M)||(M1<2)? 2: (M1>19)? 19: M1
    If ((M:=(M3!="")? ((M3<2)? 2: ((M3>19)? 19: M3)): ((M1=="")? 5: ""))!="")
        Random, N, %N%, %M%
    OfT:=RegExMatch(O,"i)OT(-?\d+)",M)? M1: 100, OfB:=RegExMatch(O,"i)OB(-?\d+)",M)? M1: 100
    OfL:=RegExMatch(O,"i)OL(-?\d+)",M)? M1: 100, OfR:=RegExMatch(O,"i)OR(-?\d+)",M)? M1: 100
    MouseGetPos, XM, YM
    If ( RO )
        X0 += XM, Y0 += YM11
    If ( RD )
        Xf += XM, Yf += YM
    If ( X0 < Xf )
        sX := X0-OfL, bX := Xf+OfR
    Else
        sX := Xf-OfL, bX := X0+OfR
    If ( Y0 < Yf )
        sY := Y0-OfT, bY := Yf+OfB
    Else
        sY := Yf-OfT, bY := Y0+OfB
    Loop, % (--N)-1 {
        Random, X%A_Index%, %sX%, %bX%
        Random, Y%A_Index%, %sY%, %bY%
    }
    X%N% := Xf, Y%N% := Yf, E := ( I := A_TickCount ) + Time
    While ( A_TickCount < E ) {
        U := 1 - (T := (A_TickCount-I)/Time)
        Loop, % N + 1 + (X := Y := 0) {
            Loop, % Idx := A_Index - (F1 := F2 := F3 := 1)
                F2 *= A_Index, F1 *= A_Index
            Loop, % D := N-Idx
                F3 *= A_Index, F1 *= A_Index+Idx
             M:=(F1/(F2*F3))*((T+0.000001)**Idx)*((U-0.000001)**D), X+=M*X%Idx%, Y+=M*Y%Idx%
        }
        MouseMove, %X%, %Y%, 0
    }
    MouseMove, X%N%, Y%N%, 0
    Return N+1
}
