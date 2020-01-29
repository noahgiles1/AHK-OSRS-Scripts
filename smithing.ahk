#SingleInstance, Force

smith()
{
	inputbox, times, Time to Run, How many smithing runs do you want to do?
	Loop %times%{
	SmoveCam()
	SfindBank()
	SemptyInv()
	SwithdrawBars()
	SexitBank()
	SfindAnvil()
	SsmithBody()
	}
}

SmoveCam()
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


SfindBank()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 4000, 4250
Random, s, 400, 700
	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFFFF00, 10, RGB, Fast
	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFFFF00, 10, RGB, Fast
	if ErrorLevel = 2
		msgbox, "There was some sort of problem"
	if ErrorLevel = 1
		msgbox, "The colour wasn't found"
	if ErrorLevel = 0
		Random x, x2+5, x1-2
		Random y, y1+2, y2-5
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Click
	sleep sleepMove
}

SemptyInv()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 1000, 1500
Random, s, 400, 700

	Random, x, 432, 463
	Random, y, 325, 356
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Random, sleepClick, 130, 170
	Click
	sleep sleepClick
}


SwithdrawBars()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 500, 1500
Random, s, 400, 700

	Random, x, 416, 448
	Random, y, 292, 317
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Random, sleepClick, 130, 170
	Click
	sleep sleepClick
}

SexitBank()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 500, 1500
Random, s, 400, 700

	Random, x, 480, 500
	Random, y, 45, 61
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Random, sleepClick, 130, 170
	Click
	sleep sleepClick
}


SfindAnvil()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 500, 1500
Random, sleepRun, 3250, 4000
Random, s, 400, 700

	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF0000, 10, BGR, Fast
	PixelSearch, x2, y2, 0, 365, 520, 0, 0xFF0000, 10, BGR, Fast
	if ErrorLevel = 2
		msgbox, "There was some sort of problem"
	if ErrorLevel = 1
		msgbox, "The colour wasn't found"
	if ErrorLevel = 0
		Random x, x1, x1
		Random y, y1, y2
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Random, sleepClick, 130, 170
	Click
	sleep sleepRun
}

SsmithBody()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 500, 1500
Random, sleepSmith, 15000, 17500
Random, s, 400, 700

	PixelSearch, x1, y1, 0, 0, 520, 365, 0x00FAFF, 10, RGB, Fast
	PixelSearch, x2, y2, 520, 365, 0, 0, 0x00FAFF, 10, RGB, Fast
	Random x, x1, x2
	Random y, y1, y2
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepClick
	Random, sleepClick, 130, 170
	Click
	sleep sleepSmith
}

SwalkBank()
{
Random, sleepBank, 500, 1000
Random, sleepClick, 130, 170
Random, sleepMove, 500, 1500
Random, sleepRun, 3500, 5000
Random, s, 400, 700

	PixelSearch, x1, y1, 0, 0, 520, 365, 0xFF00E7, 10, RGB, Fast
	PixelSearch, x2, y2, 520, 365, 0, 0, 0xFF00E7, 10, RGB, Fast
	Random x, x1, x2
	Random y, y1, y2
	MouseGetPos, x0, y0
	RandomBezier(x0, y0, x, y, "T" s A_Space "P2-4")
	sleep sleepMove
	Click
	sleep sleepRun
}
