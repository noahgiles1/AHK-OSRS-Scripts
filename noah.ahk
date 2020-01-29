#SingleInstance, Force

Gui, Font, s20
Gui, Add, Text, x150 y15, Noah's Scripts

Gui, Font, s9
Gui, Add, Button, x20 y70 w150 h75 gSmithing, Varrock Smithing
Gui, Add, Button, x185 y85 w20 h20 gSmithInfo, ?
Gui, Add, Button, x185 y110 w20 h20 gSmithImg, i

Gui, Add, Button, x20 y170 w150 h75 gRunecraft, Astral RuneCrafting
Gui, Add, Button, x185 y185 w20 h20 gRunecraftInfo, ?
Gui, Add, Button, x185 y210 w20 h20 gRunecraftImg, i

Gui, Add, Button, x20 y270 w150 h75 gHerblore, Unf Potions
Gui, Add, Button, x185 y285 w20 h20 gHerbInfo, ?
Gui, Add, Button, x185 y310 w20 h20 gHerbImg, i

Gui, Font, s9
Gui, Add, Button, x20 y370 w150 h75 gAgility, Seers Agility
Gui, Add, Button, x185 y385 w20 h20 gAgilityInfo, ?
Gui, Add, Button, x185 y410 w20 h20 gAgilityImg, i

Gui, Add, Button, x175 y470 w150 h35 gClose, Exit

Gui, Show, w500 h530, mark is gay
return

#Include runecrafting.ahk
#Include smithing.ahk
#Include herblore.ahk
#Include mousemove.ahk
#Include seersAgility.ahk


;Labels
Sumbit_All:
	Gui, Submit, NoHide
	Tooltip, %DDL%
return


Smithing:
If WinExist("OpenOSRS")
	WinActivate, OpenOSRS
else if WinExist("RuneLite")
	WinActivate,  RuneLite
else {
	msgbox, RuneLite or OpenOSRS are not open.
	sleep, 500
	exitapp
}
	smith()
	return

SmithInfo:
	msgbox, "Set up as images show, start stood at bank booth."
	return

SmithImg:
	Run, https://imgur.com/a/RHhRyfO
return

Runecraft:
If WinExist("OpenOSRS")
	WinActivate, OpenOSRS
else if WinExist("RuneLite")
	WinActivate,  RuneLite
else {
	msgbox, RuneLite or OpenOSRS are not open.
	sleep, 500
	exitapp
}
	runecraft()
	return


Runecraftinfo:
	msgbox, "Set up as the images show, has function to sort out camera and repair pouches at start. Only supports 3 pouches atm."
	Return

Runecraftimg:
	run, https://imgur.com/a/YbZQrtL
	return

Herblore:
If WinExist("OpenOSRS")
	WinActivate, OpenOSRS
else if WinExist("RuneLite")
	WinActivate,  RuneLite
else {
	msgbox, RuneLite or OpenOSRS are not open.
	sleep, 500
	exitapp
}
	herblore()
return

HerbInfo:
	msgbox, "Set up bank as image states, withdraw quantity to 14, mark tile as image states, ensure correct colour."
return

HerbImg:
	Run, https://imgur.com/a/WCaGuih
return


Agility:
		If WinExist("OpenOSRS")
			WinActivate, OpenOSRS
		else if WinExist("RuneLite")
			WinActivate,  RuneLite
		else {
			msgbox, RuneLite or OpenOSRS are not open.
			sleep, 500
			exitapp
		}
	agility()
return

AgilityInfo:
	msgbox, Set up exactly as images are, start script next to first obstacle. No support for teleporting. Untested fall down recovery.
Return

AgilityImg:
 run, https://imgur.com/a/O76JpEU
return

Close:
	exitapp
return



GuiClose:
exitapp
return
F1::reload
F12::exitapp
