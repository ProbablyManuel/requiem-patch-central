Scriptname cwitrainingspellscript extends activemagiceffect

FormList Property CWIDestructionTrain Auto
FormList Property CWIRestorationTrain Auto
FormList Property CWIAlterationTrain Auto
FormList Property CWIConjurationTrain Auto
FormList Property CWIIllusionTrain Auto
Globalvariable Property CWITutorXP Auto
Globalvariable Property CWIExceedLevelTrain Auto
Int XPValue

Event OnMagicEffectApply(ObjectReference akCaster, MagicEffect akEffect)

XPValue = CWITutorXP.GetValue() as Int

If (akCaster as actor).GetDistance(Game.GetPlayer()) < 250
	If CWIDestructionTrain.HasForm(akEffect) && XPValue > 0
		If Game.GetPlayer().GetAV("Destruction") < 25
			Debug.Notification("Destruction XP + " + XPValue)
			Game.AdvanceSkill("Destruction", XPValue)
		ElseIf CWIExceedLevelTrain.GetValue() == 1
			Debug.Notification("Destruction XP + " + XPValue)
			Game.AdvanceSkill("Destruction", XPValue)
		EndIf
	ElseIf CWIRestorationTrain.HasForm(akEffect) && XPValue > 0
		If Game.GetPlayer().GetAV("Restoration") < 25
			Debug.Notification("Restoration XP + " + XPValue)
			Game.AdvanceSkill("Restoration", XPValue)
		ElseIf CWIExceedLevelTrain.GetValue() == 1
			Debug.Notification("Restoration XP + " + XPValue)
			Game.AdvanceSkill("Restoration", XPValue)
		EndIf
	ElseIf CWIAlterationTrain.HasForm(akEffect) && XPValue > 0
		If Game.GetPlayer().GetAV("Alteration") < 25
			Debug.Notification("Alteration XP + " + XPValue)
			Game.AdvanceSkill("Alteration", XPValue)
		ElseIf CWIExceedLevelTrain.GetValue() == 1
			Debug.Notification("Alteration XP + " + XPValue)
			Game.AdvanceSkill("Alteration", XPValue)
		EndIf
	ElseIf CWIConjurationTrain.HasForm(akEffect) && XPValue > 0
		If Game.GetPlayer().GetAV("Conjuration") < 25
			Debug.Notification("Conjuration XP + " + XPValue)
			Game.AdvanceSkill("Conjuration", XPValue)
		ElseIf CWIExceedLevelTrain.GetValue() == 1
			Debug.Notification("Conjuration XP + " + XPValue)
			Game.AdvanceSkill("Conjuration", XPValue)
		EndIf
	ElseIf CWIIllusionTrain.HasForm(akEffect) && XPValue > 0
		If Game.GetPlayer().GetAV("Illusion") < 25
			Debug.Notification("Illusion XP + " + XPValue)
			Game.AdvanceSkill("Illusion", XPValue)
		ElseIf CWIExceedLevelTrain.GetValue() == 1
			Debug.Notification("Illusion XP + " + XPValue)
			Game.AdvanceSkill("Illusion", XPValue)
		EndIf
	EndIf
EndIf

EndEvent
