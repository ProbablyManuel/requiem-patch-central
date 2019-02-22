Scriptname IAStartupQuestScript extends Quest Hidden 
	{Immersive Armors Startup Quest Script.}

Actor Property PlayerRef  Auto
Actor Property HadvarRef  Auto
Actor Property GeneralTulliusREF  Auto
Actor Property RalofRef  Auto
Actor Property UlfricREF  Auto

Armor Property ArmorGag  Auto
Armor Property JewelryRingSilver  Auto
Armor Property PrisonerCuffsPlayer Auto

LeveledItem Property IAOLHadvar  Auto
LeveledItem Property IAOLRalof  Auto
LeveledItem Property IAOLRalofPrisoner  Auto
LeveledItem Property IAOLUlfric  Auto
LeveledItem Property IAOLUlfricPrisoner  Auto
LeveledItem Property IASetHeroicImperialNoHelm  Auto
LeveledItem Property IASetHeroicStormcloakNoHelm  Auto
LeveledItem Property IASetHeroicStormcloakPrisoner  Auto
LeveledItem Property IASetImperialKnightNoHelm  Auto
LeveledItem Property IASetStormlordNoHelm  Auto
LeveledItem Property IASetStormlordPrisoner  Auto
LeveledItem Property OutfitListSoldierImperialOfficerTulliusNoHelmet  Auto

Outfit Property CWSoldierImperialTulliusOutfitNoHelmet  Auto
Outfit Property IAOutfitHadvar  Auto
Outfit Property IAOutfitRalofPrisoner  Auto
Outfit Property RalofOutfit  Auto
Outfit Property UlfricOutfit  Auto
Outfit Property UlfricPrisonerOutfit  Auto

Quest Property DA02  Auto
Quest Property MQ101  Auto
ReferenceAlias Property IAPlayerAlias  Auto

Ecks_IADistributionScript Property IAAdminQuest  Auto

GlobalVariable Property IACNHeroicImperial  Auto
GlobalVariable Property IACNHeroicStormcloak  Auto
GlobalVariable Property IACNImperialKnight  Auto
GlobalVariable Property IACNStormlord  Auto
GlobalVariable Property IAGRemoveSpell  Auto
GlobalVariable Property IAGKickstart  Auto
GlobalVariable Property IAGCraftingRitualBoethiah  Auto
GlobalVariable Property IAGAlternateStart  Auto

Perk Property IAPerkAdvancedArmors  Auto
Perk Property IAPerkDaedricSmithing  Auto
Perk Property IAPerkDragonArmor  Auto
Perk Property IAPerkDwarvenSmithing  Auto
Perk Property IAPerkEbonySmithing  Auto
Perk Property IAPerkElvenSmithing  Auto
Perk Property IAPerkGlassSmithing  Auto
Perk Property IAPerkOrcishSmithing  Auto
Perk Property IAPerkSteelSmithing  Auto
Perk Property IAPerkMatchingSet  Auto
Perk Property IAPerkMatchingSetHeavy  Auto

Spell Property IASpellConfig  Auto

Event OnInit()

	If DA02.IsStageDone(17)
		IAGCraftingRitualBoethiah.SetValue (1)
	EndIf

	RegisterForSingleUpdate(1)

EndEvent

Event OnUpdate()

	If IAGKickstart.GetValue ()

		IAGKickstart.SetValue (0)
		
		If MQ101.IsStageDone(240)
			IAPlayerAlias.Clear()
			IAAdminQuest.DistributeArmors()
		ElseIf !PlayerRef.IsEquipped(PrisonerCuffsPlayer)
			IAGAlternateStart.SetValue(1)
			IAPlayerAlias.Clear()
			IAAdminQuest.DistributeArmors()
		EndIf
		
	EndIf

EndEvent
