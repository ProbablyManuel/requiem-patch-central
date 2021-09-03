;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_SkyforgeSteelWeaponsQuest_02003DEF Extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
VendorEorlundSkyforgeSteelSet.AddForm(SkyforgeSteelBow, 1, 1)
VendorEorlundSkyforgeSteelSet.AddForm(SkyforgeSteelMace, 1, 1)
VendorEorlundSkyforgeSteelSet.AddForm(SkyforgeSteelWarhammer, 1, 1)
VendorEorlundSkyforgeSteelSet.AddForm(SkyforgeSteelArrow, 1, 100)
ArmorCompanionsSet.AddForm(SkyforgeSteelShield, 1, 1)
NPCAelaTheHuntress.RemoveItem(HuntingBow)
NPCAelaTheHuntress.AddItem(SkyforgeSteelBow)
NPCAelaTheHuntress.AddItem(SkyforgeSteelArrow, 100)
NPCAelaTheHuntress.EquipItem(SkyforgeSteelBow)
WornObject.SetItemHealthPercent(NPCAelaTheHuntress, 1, 0, 3.0)
SetStage(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

LeveledItem Property VendorEorlundSkyforgeSteelSet  Auto  

WEAPON Property SkyforgeSteelBow  Auto  

WEAPON Property SkyforgeSteelMace  Auto  

WEAPON Property SkyforgeSteelWarhammer  Auto  

Armor Property SkyforgeSteelShield  Auto  

Ammo Property SkyforgeSteelArrow  Auto  

LeveledItem Property ArmorCompanionsSet  Auto  

Actor Property NPCAelaTheHuntress  Auto  

WEAPON Property HuntingBow  Auto  
