ScriptName REQ_FollowerRegistration_Patch Extends Quest
{Register a follower that operates outside of the vanilla follower framework}

REQ_FollowerRegistration Property REQ_Quest_FollowerControl Auto
ReferenceAlias Property Follower Auto


Event OnInit()
	Int Timeout = 10
	While (!REQ_Quest_FollowerControl.RegisterFollowerAlias(Follower))
		Timeout -= 1
		If (Timeout == 0)
			Return
		EndIf
		Utility.Wait(0.5)
	EndWhile
	If (Timeout != 10)
		Debug.Trace(Follower + " has been succesfully registered. Ignore previous warnings.")
	EndIf
EndEvent
