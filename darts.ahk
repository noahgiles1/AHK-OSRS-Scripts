#SingleInstance, Force

makeDarts(){
  inputbox, darts, Darts, How many darts do you want to make?
  n := darts 10
  j := Floor(n) + 1
  Random, s, 400, 700
  Random, x, 570, 590
  Random, y, 246, 270
  MouseGetPos, x0, y0
  RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
  Random, sleepClick, 130, 170
  sleep sleepClick

  loop %j% {
      Click
      Random, sleepClick, 130, 170
      sleep sleepClick
      Mousemove, 0, 35, 0, R
      Random, sleepClick, 130, 170
      sleep sleepClick
      Click
      Random, sleepClick, 130, 170
      sleep sleepClick
      Mousemove, 0, -35, 0, R
      Random, sleepClick, 130, 170
      sleep sleepClick
  }
}
