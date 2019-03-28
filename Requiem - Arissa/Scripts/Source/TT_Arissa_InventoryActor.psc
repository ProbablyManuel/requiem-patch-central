ScriptName TT_Arissa_InventoryActor Extends ReferenceAlias
{Move lockpicks from the inventory dummy to Arissa's actual inventory to work with Requiem's lockpicking system.}

MiscObject Property Lockpick Auto

ReferenceAlias Property Arissa Auto


Event OnInit()
	AddInventoryEventFilter(Lockpick)
EndEvent


Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	GetReference().RemoveItem(akBaseItem, aiItemCount, True, Arissa.GetReference())
EndEvent
