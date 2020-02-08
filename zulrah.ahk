;Colour Detection Zulrah Bot

;Testing
1::
mageDef()
return


;Random sleeps + mouse movements + clicks
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

prayerBook(){
  Random, sleepPrayer, 130, 170
  Sleep sleepPrayer
  Send {F1}
  Random, sleepPrayer, 130, 170
  Sleep sleepPrayer
}



;Teleports
Zteleport() {
  Random x, 697, 719
  Random y, 461, 482
  mousemove(x, y)
  sleep sleepClick
  click
  Random, sleepWait, 4000, 4200
  sleep sleepWait
}



;Attack Zulrah
attack(){
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 1, RGB, Fast
  if (ErrorLevel = 1) {
    sleep, 500
    attack1()
  }
  if (ErrorLevel = 0) {
    Random x, x1-5, x1 + 5
    Random y, y1, y1 + 40
    Click()
  }
}

attack1(){
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 1, RGB, Fast
  if (ErrorLevel = 1) {
    Zteleport()
  }
}



;Prayers
mageAttack() {
  prayerBook()
  Random x, 560, 582
  Random y, 394, 418
  mousemove(x, y)
  click()
}

rangeDef() {
  prayerBook()
  Random x, 635, 656
  Random y, 360, 380
  mousemove(x, y)
  click()
  Random x, 560, 582
  Random y, 394, 418
  mousemove(x, y)
  click()
  Sleep 130, 170
  Send {Esc}
  Sleep 130, 170
}

mageDef() {
  prayerBook()
  Random x, 597, 620
  Random y, 360, 380
  mousemove(x, y)
  click()
  Random x, 708, 731
  Random y, 360, 380
  mousemove(x, y)
  click()
  Sleep 130, 170
  Send {Esc}
  Sleep 130, 170
}



;Phase 1
Phase1() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 1, RGB, Fast
  if ( ErrorLevel = 1) {
    msgbox, "The colour wasn't found"
    }
  if (ErrorLevel = 0) {
    Random x, x1, x1+5
    Random y, y1, y1+5
    mousemove(x, y)
    click()
    Random, sleepWait, 2000, 3000
    sleep sleepWait
    attack()
  }
}








;Human Mouse Movements
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
