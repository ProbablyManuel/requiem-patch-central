ScriptName REQ_CastSpellOnCombatBegin Extends ActiveMagicEffect
{Cast a spell when this actor enters combat}

Spell Property SpellToCast Auto

Event OnCombatStateChanged(Actor akTarget, Int aiCombatState)
	If aiCombatState == 1
		SpellToCast.Cast(GetTargetActor())
	EndIf
EndEvent
