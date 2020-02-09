;Colour Detection Zulrah Bot

;Testing
#::
SetTimer, eat, 20
return

]::
reload
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


eat:
{
  PixelSearch, x6, y6, 534, 304, 547, 330, 0x83240F, 10, RGB, Fast
  if (ErrorLevel = 1) {
    PixelSearch, x1, y1, 557, 231, 735, 490, 0xFF0000, 1, RGB, Fast
    Random x, x1, x1 + 15
    Random y, y1, y1 + 15
    mousemove(x, y)
    click()
  }
  return
}



;Teleports/Setup
enterFight(){
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 1, RGB, Fast
  Random x, x1, x1-10
  Random y, y1-2 , y1+5
  mousemove(x, y)
  click()
  Random, wait, 2500, 3000
  Sleep wait
  Send {1}
}



Zteleport() {
  Random x, 697, 719
  Random y, 461, 482
  mousemove(x, y)
  sleep sleepClick
  click
  Random, sleepWait, 4000, 4200
  sleep sleepWait
}



;Fighting
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



;Spots
spot1() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 1, RGB, Fast
  if ( ErrorLevel = 1) {
    msgbox, "The colour wasn't found"
    }
  if (ErrorLevel = 0) {
    Random x, x1, x1-15
    Random y, y1, y1+5
    mousemove(x, y)
    click()
  }
}

spot2() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x0000FF, 1, RGB, Fast
  if ( ErrorLevel = 1) {
    msgbox, "The colour wasn't found"
    }
  if (ErrorLevel = 0) {
    Random x, x1-10, x1
    Random y, y1, y1+10
    mousemove(x, y)
    click()
  }
}

spot3() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0x0AFF00, 1, RGB, Fast
  if ( ErrorLevel = 1) {
    msgbox, "The colour wasn't found"
    }
  if (ErrorLevel = 0) {
    Random x, x1-10, x1
    Random y, y1, y1+10
    mousemove(x, y)
    click()
  }
}

spot4() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF0000, 1, RGB, Fast
  if ( ErrorLevel = 1) {
    msgbox, "The colour wasn't found"
    }
  if (ErrorLevel = 0) {
    Random x, x1-10, x1
    Random y, y1, y1+10
    mousemove(x, y)
    click()
  }
}

spot5() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0xC46AFF, 1, RGB, Fast
  if ( ErrorLevel = 1) {
    msgbox, "The colour wasn't found"
    }
  if (ErrorLevel = 0) {
    Random x, x1-10, x1
    Random y, y1, y1+10
    mousemove(x, y)
    click()
  }
}

spot6() {
  PixelSearch, x1, y1, 0, 0, 520, 365, 0xF1FF00, 1, RGB, Fast
  if ( ErrorLevel = 1) {
    msgbox, "The colour wasn't found"
    }
  if (ErrorLevel = 0) {
    Random x, x1-10, x1
    Random y, y1, y1+10
    mousemove(x, y)
    click()
  }

}




;Phase 1
;Phase1() {
    ;spot1()
    ;mageAttack()
    ;Random, sleepRun, 2700, 3000
    ;Sleep sleepRun
    ;attack()
    ;Random, sleepKill, 7000, 8000
    ;Sleep sleepKill
    ;Write a check for next pattern
  ;}

;Pattern 3
;pattern3_1() {
  ;rangeDef()
  ;attack()
  ;Random, sleepKill, 7000, 8000
  ;Sleep sleepKill
  ;spot6()
;  Random, sleepRun, 2700, 3000
;  Sleep sleepRun
;}

;pattern3_2() {


  ;spot4()
;}

;pattern3_3() {


  ;spot3()
;}

;pattern3_4() {



;}

;pattern3_5() {


  ;spot4()
;}

;pattern3_6() {



;}

;pattern3_7() {

;}

;pattern3_8() {


  ;spot3()
;}

;pattern3_9() {


  ;spot1()
;}

;pattern3_10() {

;}









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
