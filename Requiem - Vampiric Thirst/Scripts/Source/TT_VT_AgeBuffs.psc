ScriptName TT_VT_AgeBuffs Extends ActiveMagicEffect
{Increase Health and Stamina based on Age.}

GlobalVariable Property mslVTAge Auto
Float[] Property MagnitudeArray Auto

Float Magnitude = 0.0


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Magnitude = MagnitudeArray[mslVTAge.GetValueInt()]
	akTarget.ModAV("Health", Magnitude)
	akTarget.ModAV("Stamina", Magnitude)
endEvent


Event OnEffectFinish(Actor akTarget, Actor akCaster)
	akTarget.RestoreAV("Health", Magnitude)
	akTarget.RestoreAV("Stamina", Magnitude)
	akTarget.ModAV("Health", -Magnitude)
	akTarget.ModAV("Stamina", -Magnitude)
EndEvent
