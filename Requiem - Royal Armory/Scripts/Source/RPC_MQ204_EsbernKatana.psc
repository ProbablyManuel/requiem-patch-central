ScriptName RPC_MQ204_EsbernKatana Extends Actor
{Prevent Esbern from receiving a katana during The Throat of the World}

Quest Property MQ204 Auto

Weapon Property EsbernKatana Auto


Event OnInit()
	AddInventoryEventFilter(EsbernKatana)
EndEvent


Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If MQ204.IsRunning()
		RemoveItem(akBaseItem)
		RemoveAllInventoryEventFilters()
	EndIf
EndEvent
