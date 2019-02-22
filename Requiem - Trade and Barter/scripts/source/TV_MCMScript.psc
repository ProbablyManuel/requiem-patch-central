Scriptname TV_MCMScript extends SKI_ConfigBase

int OIDThane
int OIDFaction
int OIDFactionLead
int OIDFriend
int OIDAlly
int OIDLover
int OIDLocation
int OIDSolitudeBuy
int OIDSolitudeSell
int OIDMarkarthBuy
int OIDMarkarthSell
int OIDWindhelmBuy
int OIDWindhelmSell
int OIDRiftenBuy
int OIDRiftenSell
int OIDWhiterunBuy
int OIDWhiterunSell
int OIDPresetRates
int OIDBarterMin
int OIDBarterMax
int OIDBuyBuff
int OIDSellBuff
int OIDRaceDefault
int OIDRaceCustom
int OIDRaceAltmer
int OIDRaceArgonian
int OIDRaceBreton
int OIDRaceBosmer
int OIDRaceDunmer
int OIDRaceImperial
int OIDRaceKhajiit
int OIDRaceNord
int OIDRaceNordStormcloak
int OIDRaceOrc
int OIDRaceRedguard
int OIDWeapon
int OIDHelmet
int OIDNaked
int OIDInsider
int OIDFence
int OIDUseBarterRates = 0
int OIDVendorRespawn
int OIDUseRespawnSettings = 0
int OIDInvestorGold
int OIDInvestedGoldIncrease		;added version 1.2
int OIDMasterTrader
int OIDVariableGold01
int OIDVariableGold02
int OIDVariableGold03
int OIDRandomGold
int OIDApothecaryGold
int OIDBlacksmithGold
int OIDBlacksmithTownGold
int OIDBlacksmithOrcGold
int OIDSpellGold
int OIDMiscGold
int OIDInnGold
int OIDStreetGold
int OIDGoldDefault
int OIDInvestorInventory
int OIDCaravanGold				;added version 1.2

int OIDModStatus = 0
GlobalVariable property TV_State auto
GlobalVariable property InvestorAmount auto
Quest property InvestorQuest auto
Miscobject property Gold001 auto
Leveleditem property PerkMasterTraderGold auto
Leveleditem property PerkInvestorStoreUpgrade auto
int MTGoldtoAdd
int INVGoldtoAdd
int APGoldtoAdd
int CSGoldtoAdd
int TSGoldtoAdd
int OSGoldtoAdd
int SPGoldtoAdd
int MCGoldtoAdd
int INGoldtoAdd
int STGoldtoAdd
int CVGoldtoAdd					;added version 1.2

Leveleditem property VendorGoldApothecary auto
Leveleditem property VendorGoldBlacksmith auto
Leveleditem property VendorGoldBlacksmithTown auto
Leveleditem property VendorGoldBlacksmithOrc auto
Leveleditem property VendorGoldSpells auto
Leveleditem property VendorGoldMisc auto
Leveleditem property VendorGoldInn auto
Leveleditem property VendorGoldStreetVendor auto
Leveleditem property KRY_RandomVendorGoldLG auto
Leveleditem property KRY_RandomVendorGoldSM auto
Leveleditem property VendorGoldCaravan auto				;added version 1.2

float ThaneVal = 5.0
float FactionVal = 10.0
float FactionLeadVal = 5.0
float FriendVal = 5.0
float AllyVal = 10.0
float LoverVal = 30.0
float SolitudeBuyVal = 35.0
float SolitudeSellVal = 10.0
float MarkarthBuyVal = 30.0
float MarkarthSellVal = 5.0
float WindhelmBuyVal = 25.0
float WindhelmSellVal = 10.0
float RiftenBuyVal = 20.0
float RiftenSellVal = 5.0
float WhiterunBuyVal = 15.0
float WhiterunSellVal = 0.0
float BarterMinVal = 3.0
float BarterMaxVal = 4.0
float BuyBuffVal = 0.0
float SellBuffVal = 0.0
float AltmerVal = 0.0
float ArgonianVal = 0.0
float BretonVal = 0.0
float BosmerVal = 0.0
float DunmerVal = 0.0
float ImperialVal = 0.0
float KhajiitVal = 0.0
float NordVal = 0.0
float NordStormVal = 0.0
float OrcVal = 0.0
float RedguardVal = 0.0
float WeaponVal = -5.0
float HelmetVal = 0.0
float NakedVal = -90.0
float InsiderVal = 1.0
float FenceVal = -20.0
int RespawnVendorVal = 14
float InvestorVal = 500.0
float InvestedGoldVal = 1500.0
float MasterTraderVal = 3000.0	
float ApothecaryVal = 400.0
float CitySmithVal = 600.0
float TownSmithVal = 400.0
float OrcSmithVal = 250.0
float SpellVal = 500.0
float MiscVal = 300.0
float InnVal = 200.0
float StreetVal = 50.0
float CaravanVal = 750.0

GlobalVariable property TVModStatus auto
GlobalVariable property ThaneStatus auto
GlobalVariable property FactionMember auto
GlobalVariable property FactionLead auto
GlobalVariable property RelFriend auto
GlobalVariable property RelAlly auto
GlobalVariable property RelLover auto
GlobalVariable property LocationGV auto
GlobalVariable property LocSolitudeBuy auto
GlobalVariable property LocSolitudeSell auto
GlobalVariable property LocMarkarthBuy auto
GlobalVariable property LocMarkarthSell auto
GlobalVariable property LocWindhelmBuy auto
GlobalVariable property LocWindhelmSell auto
GlobalVariable property LocRiftenBuy auto
GlobalVariable property LocRiftenSell auto
GlobalVariable property LocWhiterunBuy auto
GlobalVariable property LocWhiterunSell auto
GlobalVariable property UseBarterSettings auto
GlobalVariable property BarterMinGlobal auto
GlobalVariable property BarterMaxGlobal auto
GlobalVariable property BuyBuffGlobal auto
GlobalVariable property SellBuffGlobal auto
GlobalVariable property RaceRelations auto
GlobalVariable property DefaultRaceGV auto
GlobalVariable property CustomRaceGV auto
GlobalVariable property RaceAltmer auto
GlobalVariable property RaceArgonian auto
GlobalVariable property RaceBreton auto
GlobalVariable property RaceBosmer auto
GlobalVariable property RaceDunmer auto
GlobalVariable property RaceImperial auto
GlobalVariable property RaceKhajiit auto
GlobalVariable property RaceNord auto
GlobalVariable property RaceNordStorm auto
GlobalVariable property RaceOrc auto
GlobalVariable property RaceRedguard auto
GlobalVariable property WeaponGV auto
GlobalVariable property HelmetGV auto
GlobalVariable property NakedGV auto
GlobalVariable property InsiderGV auto
GlobalVariable property FenceGV auto
GlobalVariable property VendorRespawnGlobal auto
GlobalVariable property UseRespawnSettings auto
GlobalVariable property VariableGold01GV auto
GlobalVariable property VariableGold02GV auto
GlobalVariable property VariableGold03GV auto
GlobalVariable property VariableGold01Val auto
GlobalVariable property VariableGold02Val auto
GlobalVariable property VariableGold03Val auto
GlobalVariable property RandomGoldGV auto
GlobalVariable property RandomGold00 auto
GlobalVariable property InventoryGV auto
GlobalVariable property InventoryChange auto
GlobalVariable property InventoryUpgradeDefault auto		;added version 1.2
GlobalVariable property MasterTraderDefault auto		;added version 1.2
GlobalVariable property VendorGoldDefault auto			;added version 1.2

;string[] Property PresetList Auto
;int PresetChoice = 0

event OnConfigInit()
	Pages = new string[3]
	Pages[0] = "Barter Rates"
	Pages[1] = "Price Variables"
	Pages[2] = "Merchants"
endEvent


event OnPageReset(string page)
	If (page == "")
		LoadCustomContent("TradeBarter/TradeBarterMCMTitle.dds", 88, 140)
		Return
	Else
		UnloadCustomContent()
	EndIf
	If (page == "Barter Rates")
		SetCursorFillMode(TOP_TO_BOTTOM)
		if TVModStatus.getValue() == 1
			AddHeaderOption("Barter Rates")
	;		if UseBarterSettings.GetValueInt() == 0
	;			OIDPresetRates = AddMenuOption("Barter Presets", PresetList[PresetChoice], OPTION_FLAG_NONE)
	;		else
	;			OIDPresetRates = AddMenuOption("Barter Presets", PresetList[PresetChoice], OPTION_FLAG_DISABLED)
	;		endif
			OIDUseBarterRates = AddToggleOption("Use Custom Barter Settings", UseBarterSettings.getValueInt())
			AddEmptyOption()
			BarterMinVal = Game.GetGameSettingFloat("fBarterMin")
			BarterMaxVal = Game.GetGameSettingFloat("fBarterMax")
			AddHeaderOption("Settings")
			if UseBarterSettings.GetValueInt() == 0 
				OIDBarterMax = AddSliderOption("fBarterMax", BarterMaxVal, "{1}", OPTION_FLAG_DISABLED)
				OIDBarterMin = AddSliderOption("fBarterMin", BarterMinVal, "{1}", OPTION_FLAG_DISABLED)
				AddEmptyOption()
				AddHeaderOption("Independent Adjustments")
				OIDBuyBuff = AddSliderOption("Buying Prices", BuyBuffVal, "{1}%", OPTION_FLAG_NONE)
				OIDSellBuff = AddSliderOption("Selling Prices", SellBuffVal, "{1}%", OPTION_FLAG_NONE)
			elseif UseBarterSettings.GetValueInt() == 1
				OIDBarterMax = AddSliderOption("fBarterMax", BarterMaxVal, "{1}", OPTION_FLAG_NONE)
				OIDBarterMin = AddSliderOption("fBarterMin", BarterMinVal, "{1}", OPTION_FLAG_NONE)
				AddEmptyOption()
				AddHeaderOption("Independent Adjustments")
				OIDBuyBuff = AddSliderOption("Buying Prices", BuyBuffVal, "{1}%", OPTION_FLAG_NONE)
				OIDSellBuff = AddSliderOption("Selling Prices", SellBuffVal, "{1}%", OPTION_FLAG_NONE)
;			elseif PresetChoice >= 1		
;				OIDBarterMax = AddSliderOption("fBarterMax", BarterMaxVal, "{1}", OPTION_FLAG_DISABLED)
;				OIDBarterMin = AddSliderOption("fBarterMin", BarterMinVal, "{1}", OPTION_FLAG_DISABLED)
;				AddEmptyOption()
;				AddHeaderOption("Independent Adjustments")
;				OIDBuyBuff = AddSliderOption("Buying Prices", BuyBuffVal, "{1}%", OPTION_FLAG_DISABLED)
;				OIDSellBuff = AddSliderOption("Selling Prices", SellBuffVal, "{1}%", OPTION_FLAG_DISABLED)
			endif
		endif
	SetCursorPosition(1)		;start right-hand column
	if TVModStatus.getValue() == 0
		OIDModStatus = AddTextOption("Start Mod", "")
	else
		OIDModStatus = AddTextOption("Stop Mod", "")
	endif

	elseif (page == "Price Variables")
	if TVModStatus.getValue() == 1
		SetCursorFillMode(TOP_TO_BOTTOM)
		AddHeaderOption("Status")
		OIDThane = AddSliderOption("Thane", ThaneVal, "{0}% better prices")
		OIDFaction = AddSliderOption("Faction Member", FactionVal, "{0}% better prices")
		OIDFactionLead = AddSliderOption("Faction Leader", FactionLeadVal, "{0}% better prices")
		AddEmptyOption()
		AddHeaderOption("Relationship")
		OIDFriend = AddSliderOption("Friend", FriendVal, "{0}% better prices")
		OIDAlly = AddSliderOption("Ally", AllyVal, "{0}% better prices")
		OIDLover = AddSliderOption("Lover", LoverVal, "{0}% better prices")
		AddEmptyOption()
		AddHeaderOption("Race Relations")
		OIDRaceDefault = AddToggleOption("Use Default Race Relations", DefaultRaceGV.getValueInt())
		OIDRaceCustom = AddToggleOption("Set Custom Race Relations", CustomRaceGV.getValueInt())
		if CustomRaceGV.Getvalue() == 1
			OIDRaceAltmer = AddSliderOption("Altmers:", AltmerVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceArgonian = AddSliderOption("Argonians:", ArgonianVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceBosmer = AddSliderOption("Bosmers:", BosmerVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceBreton = AddSliderOption("Bretons:", BretonVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceDunmer = AddSliderOption("Dunmers:", DunmerVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceImperial = AddSliderOption("Imperials:", ImperialVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceKhajiit = AddSliderOption("Khajiits:", KhajiitVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceNord = AddSliderOption("Nords:", NordVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceNordStormcloak = AddSliderOption("Nord Stormcloaks:", NordStormVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceOrc = AddSliderOption("Orcs:", OrcVal, "{0}% prices", OPTION_FLAG_NONE)
			OIDRaceRedguard = AddSliderOption("Redguards:", RedguardVal, "{0}% prices", OPTION_FLAG_NONE)
		endif
		SetCursorPosition(1)		;start right-hand column
		AddHeaderOption("Misc Factors")
		OIDFence = AddSliderOption("Fence", FenceVal, "{0}% prices")
		OIDInsider = AddToggleOption("Knowlegeable Trader", InsiderGV.getValueInt())
		OIDNaked = AddSliderOption("Naked", NakedVal, "{0}% prices")
		OIDHelmet = AddSliderOption("Wearing Helmet", HelmetVal, "{0}% prices")
		OIDWeapon = AddSliderOption("Weapon Drawn", WeaponVal, "{0}% prices")
		AddEmptyOption()
		AddHeaderOption("Location")
		OIDLocation = AddToggleOption("Higher Prices in Cities", LocationGV.getValueInt())
		if LocationGV.Getvalue() == 1
			AddHeaderOption("Solitude")
			OIDSolitudeBuy = AddSliderOption("Buying prices:", SolitudeBuyVal, "{0}% higher", OPTION_FLAG_NONE)
			OIDSolitudeSell = AddSliderOption("Selling prices:", SolitudeSellVal, "{0}% higher", OPTION_FLAG_NONE)
			AddHeaderOption("Markarth")
			OIDMarkarthBuy = AddSliderOption("Buying prices:", MarkarthBuyVal, "{0}% higher", OPTION_FLAG_NONE)
			OIDMarkarthSell = AddSliderOption("Selling prices:", MarkarthSellVal, "{0}% higher", OPTION_FLAG_NONE)
			AddHeaderOption("Windhelm")
			OIDWindhelmBuy = AddSliderOption("Buying prices:", WindhelmBuyVal, "{0}% higher", OPTION_FLAG_NONE)
			OIDWindhelmSell = AddSliderOption("Selling prices:", WindhelmSellVal, "{0}% higher", OPTION_FLAG_NONE)
			AddHeaderOption("Riften")
			OIDRiftenBuy = AddSliderOption("Buying prices:", RiftenBuyVal, "{0}% higher", OPTION_FLAG_NONE)
			OIDRiftenSell = AddSliderOption("Selling prices:", RiftenSellVal, "{0}% higher", OPTION_FLAG_NONE)
			AddHeaderOption("Whiterun")
			OIDWhiterunBuy = AddSliderOption("Buying prices:", WhiterunBuyVal, "{0}% higher", OPTION_FLAG_NONE)
			OIDWhiterunSell = AddSliderOption("Selling prices:", WhiterunSellVal, "{0}% higher", OPTION_FLAG_NONE)
		endif
	endif
	elseif (page == "Merchants")
		if TVModStatus.getValue() == 1
			SetCursorFillMode(TOP_TO_BOTTOM)
			AddHeaderOption("Variable Merchant Gold")
			OIDVariableGold01 = AddToggleOption("Low Variability", VariableGold01GV.getValueInt())
			OIDVariableGold02 = AddToggleOption("Medium Variability", VariableGold02GV.getValueInt())
			OIDVariableGold03 = AddToggleOption("High Variability", VariableGold03GV.getValueInt())
			AddEmptyOption()
			AddHeaderOption("Base Merchant Gold")
			if VendorGoldDefault.getValue() == 100
				OIDRandomGold = AddToggleOption("Merchant Gold Fluctuates", RandomGoldGV.getValueInt(), OPTION_FLAG_NONE)
				OIDApothecaryGold = AddSliderOption("Apothecaries:", ApothecaryVal, "{0} gold", OPTION_FLAG_NONE)
				OIDBlacksmithGold = AddSliderOption("City Blacksmiths:", CitySmithVal, "{0} gold", OPTION_FLAG_NONE)
				OIDBlacksmithTownGold = AddSliderOption("Town Blacksmiths:", TownSmithVal, "{0} gold", OPTION_FLAG_NONE)
				OIDBlacksmithOrcGold = AddSliderOption("Orc Blacksmiths:", OrcSmithVal, "{0} gold", OPTION_FLAG_NONE)
				OIDSpellGold = AddSliderOption("Spell Merchants:", SpellVal, "{0} gold", OPTION_FLAG_NONE)
				OIDMiscGold = AddSliderOption("Misc Merchants:", MiscVal, "{0} gold", OPTION_FLAG_NONE)
				OIDInnGold = AddSliderOption("Innkeepers:", InnVal, "{0} gold", OPTION_FLAG_NONE)
				OIDStreetGold = AddSliderOption("Street Vendors:", StreetVal, "{0} gold", OPTION_FLAG_NONE)
				OIDCaravanGold = AddSliderOption("Caravans:", CaravanVal, "{0} gold", OPTION_FLAG_NONE)
				OIDGoldDefault = AddTextOption("Disable Merchant Gold Options", "")		
			elseif VendorGoldDefault.getValue() == 0
				OIDRandomGold = AddToggleOption("Merchant Gold Fluctuates", RandomGoldGV.getValueInt(), OPTION_FLAG_DISABLED)
				OIDApothecaryGold = AddSliderOption("Apothecaries:", ApothecaryVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDBlacksmithGold = AddSliderOption("City Blacksmiths:", CitySmithVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDBlacksmithTownGold = AddSliderOption("Town Blacksmiths:", TownSmithVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDBlacksmithOrcGold = AddSliderOption("Orc Blacksmiths:", OrcSmithVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDSpellGold = AddSliderOption("Spell Merchants:", SpellVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDMiscGold = AddSliderOption("Misc Merchants:", MiscVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDInnGold = AddSliderOption("Innkeepers:", InnVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDStreetGold = AddSliderOption("Street Vendors:", StreetVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDCaravanGold = AddSliderOption("Caravans:", CaravanVal, "{0} gold", OPTION_FLAG_DISABLED)
				OIDGoldDefault = AddTextOption("Merchant Gold Options Disabled", "")		
			endif
			SetCursorPosition(1)		;start right-hand column
			AddHeaderOption("Settings")
			RespawnVendorVal = Game.GetGameSettingInt("iDaysToRespawnVendor")
			OIDUseRespawnSettings = AddToggleOption("Use Custom Respawn Settings", UseRespawnSettings.getValueInt())
			if UseRespawnSettings.GetValueInt() == 0 
				OIDVendorRespawn = AddSliderOption("Merchant Inventory Respawns in", RespawnVendorVal, "{1} days", OPTION_FLAG_DISABLED)
			elseif UseRespawnSettings.GetValueInt() == 1
				OIDVendorRespawn = AddSliderOption("Merchant Inventory Respawns in", RespawnVendorVal, "{1} days", OPTION_FLAG_NONE)
			endif
			AddEmptyOption()
			AddHeaderOption("Perks")
			OIDInvestorGold = AddSliderOption("Cost to Invest", InvestorVal, "{0} gold")
			OIDInvestedGoldIncrease = AddSliderOption("Increased Gold After Investment", InvestedGoldVal, "{0} gold")
			OIDInvestorInventory = AddToggleOption("Inventory Changes when Invested", InventoryGV.getValueInt())
			OIDMasterTrader = AddSliderOption("Master Trader", MasterTraderVal, "{0} gold")	
		endif	
	endif
endEvent

Event OnOptionSelect(int option)
	If (option == OIDModStatus)
		if TVModStatus.getValue() == 0
			SetTextOptionValue(option, "Activating Mod")
			Mod_Start()
			ForcePageReset()
		else
			SetTextOptionValue(option, "Deactivating Mod")
			Mod_Stop()
			ForcePageReset()
		endif
	elseif (option == OIDInsider)	
		if InsiderGV.GetValueInt() == 0
			InsiderGV.setValue(1)
			ForcePageReset()
		else
			InsiderGV.setValue(0)
			ForcePageReset()
		endif
	elseif (option == OIDInvestorInventory)	
		if InventoryGV.GetValueInt() == 0
			InventoryGV.setValue(1)
			InventoryChange.setValue(0)
			ForcePageReset()
		else
			InventoryGV.setValue(0)
			InventoryChange.setValue(100)
			ForcePageReset()
		endif	
	elseif (option == OIDRandomGold)	
		if RandomGoldGV.GetValueInt() == 0
			RandomGoldGV.setValue(1)
			RandomGold00.setValue(0)
			VendorGoldApothecary.AddForm(KRY_RandomVendorGoldLG, 1, 4)
			VendorGoldSpells.AddForm(KRY_RandomVendorGoldLG, 1, 3)	
			VendorGoldBlacksmith.AddForm(KRY_RandomVendorGoldLG, 1, 6)
			VendorGoldBlacksmithTown.AddForm(KRY_RandomVendorGoldLG, 1, 3)
			VendorGoldBlacksmithOrc.AddForm(KRY_RandomVendorGoldLG, 1, 2)	
			VendorGoldMisc.AddForm(KRY_RandomVendorGoldLG, 1, 4)
			VendorGoldInn.AddForm(KRY_RandomVendorGoldSM, 1, 10)
			VendorGoldStreetVendor.AddForm(KRY_RandomVendorGoldSM, 1, 5)
			VendorGoldCaravan.AddForm(KRY_RandomVendorGoldLG, 1, 4)
			ForcePageReset()
		else
			RandomGoldGV.setValue(0)
			RandomGold00.setValue(100)
			ForcePageReset()
		endif
	elseif (option == OIDGoldDefault)
;		SetTextOptionValue(option, "Clearing Lists")
		RandomGoldGV.setValue(0)
		RandomGold00.setValue(100)
		SetOptionFlags(OIDRandomGold, OPTION_FLAG_DISABLED)
		VendorGoldDefault.setValue(0)
		VendorGoldApothecary.Revert()
		ApothecaryVal = 400
		SetSliderOptionValue(OIDApothecaryGold, ApothecaryVal, "{0} gold")
		SetOptionFlags(OIDApothecaryGold, OPTION_FLAG_DISABLED)
		VendorGoldBlacksmith.Revert()
		CitySmithVal = 600
		SetSliderOptionValue(OIDBlacksmithGold, CitySmithVal, "{0} gold")
		SetOptionFlags(OIDBlacksmithGold, OPTION_FLAG_DISABLED)
		VendorGoldBlacksmithTown.Revert()
		TownSmithVal = 400
		SetSliderOptionValue(OIDBlacksmithTownGold, TownSmithVal, "{0} gold")
		SetOptionFlags(OIDBlacksmithTownGold, OPTION_FLAG_DISABLED)
		VendorGoldBlacksmithOrc.Revert()
		OrcSmithVal = 250
		SetSliderOptionValue(OIDBlacksmithOrcGold, OrcSmithVal, "{0} gold")
		SetOptionFlags(OIDBlacksmithOrcGold, OPTION_FLAG_DISABLED)
		VendorGoldSpells.Revert()
		SpellVal = 500
		SetSliderOptionValue(OIDSpellGold, SpellVal, "{0} gold")
		SetOptionFlags(OIDSpellGold, OPTION_FLAG_DISABLED)
		VendorGoldMisc.Revert()
		MiscVal = 300
		SetSliderOptionValue(OIDMiscGold, MiscVal, "{0} gold")
		SetOptionFlags(OIDMiscGold, OPTION_FLAG_DISABLED)
		VendorGoldInn.Revert()
		InnVal = 200
		SetSliderOptionValue(OIDInnGold, InnVal, "{0} gold")
		SetOptionFlags(OIDInnGold, OPTION_FLAG_DISABLED)
		VendorGoldStreetVendor.Revert()
		StreetVal = 50
		SetSliderOptionValue(OIDStreetGold, StreetVal, "{0} gold")
		SetOptionFlags(OIDStreetGold, OPTION_FLAG_DISABLED)
		VendorGoldCaravan.Revert()
		CaravanVal = 750
		SetSliderOptionValue(OIDCaravanGold, CaravanVal, "{0} gold")
		SetOptionFlags(OIDCaravanGold, OPTION_FLAG_DISABLED)
		ForcePageReset()
	elseif (option == OIDVariableGold01)		
		if VariableGold01GV.GetValueInt() == 0
			VariableGold01GV.setValue(1)
			VariableGold01Val.setValue(0)
			ForcePageReset()
		else
			VariableGold01GV.setValue(0)
			VariableGold01Val.setValue(100)
			ForcePageReset()
		endif	
	elseif (option == OIDVariableGold02)		
		if VariableGold02GV.GetValueInt() == 0
			VariableGold02GV.setValue(1)
			VariableGold02Val.setValue(0)
			ForcePageReset()
		else
			VariableGold02GV.setValue(0)
			VariableGold02Val.setValue(100)
			ForcePageReset()
		endif	
	elseif (option == OIDVariableGold03)		
		if VariableGold03GV.GetValueInt() == 0
			VariableGold03GV.setValue(1)
			VariableGold02Val.setValue(0)
			ForcePageReset()
		else
			VariableGold03GV.setValue(0)
			VariableGold02Val.setValue(100)
			ForcePageReset()
		endif			
	elseif (option == OIDLocation)
		if LocationGV.GetValueInt() == 0
			LocationGV.setValue(1)
			ForcePageReset()
		else
			LocationGV.setValue(0)
			ForcePageReset()
		endif
		SetToggleOptionValue(OIDLocation, LocationGV.GetValueInt())
		if LocationGV.GetValueInt() == 0
			SetOptionFlags(OIDSolitudeBuy, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDSolitudeSell, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDMarkarthBuy, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDMarkarthSell, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDWindhelmBuy, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDWindhelmSell, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRiftenBuy, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRiftenSell, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDWhiterunBuy, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDWhiterunSell, OPTION_FLAG_DISABLED)
		else
			SetOptionFlags(OIDSolitudeBuy, OPTION_FLAG_NONE)
			SetOptionFlags(OIDSolitudeSell, OPTION_FLAG_NONE)
			SetOptionFlags(OIDMarkarthBuy, OPTION_FLAG_NONE)
			SetOptionFlags(OIDMarkarthSell, OPTION_FLAG_NONE)
			SetOptionFlags(OIDWindhelmBuy, OPTION_FLAG_NONE)
			SetOptionFlags(OIDWindhelmSell, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRiftenBuy, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRiftenSell, OPTION_FLAG_NONE)
			SetOptionFlags(OIDWhiterunBuy, OPTION_FLAG_NONE)
			SetOptionFlags(OIDWhiterunSell, OPTION_FLAG_NONE)
		endIf
	elseif (option == OIDUseBarterRates)
		if UseBarterSettings.GetValueInt() == 0
			UseBarterSettings.setValue(1)
			ForcePageReset()
		else
			UseBarterSettings.setValue(0)
			ForcePageReset()
		endif
		SetToggleOptionValue(OIDUseBarterRates, UseBarterSettings.GetValueInt())
		if UseBarterSettings.GetValueInt() == 0
			SetOptionFlags(OIDBarterMin, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDBarterMax, OPTION_FLAG_DISABLED)
		else
			SetOptionFlags(OIDBarterMin, OPTION_FLAG_NONE)
			SetOptionFlags(OIDBarterMax, OPTION_FLAG_NONE)
		endif
	elseif (option == OIDUseRespawnSettings)
		if UseRespawnSettings.getValueInt() == 0
			UseRespawnSettings.setValue(1)
			ForcePageReset()
		else
			UseRespawnSettings.setValue(0)
			ForcePageReset()
		endif
		SetToggleOptionValue(OIDUseRespawnSettings, UseRespawnSettings.GetValueInt())
		if UseRespawnSettings.GetValueInt() == 0
			SetOptionFlags(OIDVendorRespawn, OPTION_FLAG_DISABLED)
		else
			SetOptionFlags(OIDVendorRespawn, OPTION_FLAG_NONE)
		endif		
	elseif (option == OIDRaceDefault)
		if DefaultRaceGV.GetValueInt() == 0
			DefaultRaceGV.setValue(1)
			CustomRaceGV.setValue(0)
			RaceRelations.setValue(1)
			ForcePageReset()
		else
			DefaultRaceGV.setValue(0)
			RaceRelations.setValue(0)
			ForcePageReset()
		endif
		SetToggleOptionValue(OIDRaceDefault, DefaultRaceGV.GetValueInt())
		SetToggleOptionValue(OIDRaceCustom, CustomRaceGV.GetValueInt())
		if CustomRaceGV.GetValueInt() == 0
			SetOptionFlags(OIDRaceAltmer, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceArgonian, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceBosmer, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceBreton, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceDunmer, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceImperial, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceKhajiit, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceNord, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceNordStormcloak, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceOrc, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceRedguard, OPTION_FLAG_DISABLED)
		else
			SetOptionFlags(OIDRaceAltmer, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceArgonian, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceBosmer, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceBreton, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceDunmer, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceImperial, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceKhajiit, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceNord, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceNordStormcloak, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceOrc, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceRedguard, OPTION_FLAG_NONE)
		endif
		ForcePageReset()
	elseif (option == OIDRaceCustom)
		if CustomRaceGV.GetValueInt() == 0
			DefaultRaceGV.setValue(0)
			CustomRaceGV.setValue(1)
			RaceRelations.setValue(2)
			ForcePageReset()
		else
			CustomRaceGV.setValue(0)
			RaceRelations.setValue(0)
			ForcePageReset()
		endif
		SetToggleOptionValue(OIDRaceDefault, DefaultRaceGV.GetValueInt())
		SetToggleOptionValue(OIDRaceCustom, CustomRaceGV.GetValueInt())
		if CustomRaceGV.GetValueInt() == 0
			SetOptionFlags(OIDRaceAltmer, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceArgonian, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceBosmer, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceBreton, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceDunmer, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceImperial, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceKhajiit, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceNord, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceNordStormcloak, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceOrc, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRaceRedguard, OPTION_FLAG_DISABLED)
		else
			SetOptionFlags(OIDRaceAltmer, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceArgonian, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceBosmer, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceBreton, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceDunmer, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceImperial, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceKhajiit, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceNord, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceNordStormcloak, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceOrc, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRaceRedguard, OPTION_FLAG_NONE)
		endif
		ForcePageReset()
	endif
endEvent

event OnOptionSliderOpen(int option)
	if (option == OIDThane)
		SetSliderDialogStartValue(ThaneVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(5)
	elseIf (option == OIDFaction)
		SetSliderDialogStartValue(FactionVal)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 15)
		SetSliderDialogInterval(5)
	elseIf (option == OIDFactionLead)
		SetSliderDialogStartValue(FactionLeadVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(5)
	elseif (option == OIDFriend)
		SetSliderDialogStartValue(FriendVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(1)
	elseIf (option == OIDAlly)
		SetSliderDialogStartValue(AllyVal)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 20)
		SetSliderDialogInterval(2)
	elseIf (option == OIDLover)
		SetSliderDialogStartValue(LoverVal)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 40)
		SetSliderDialogInterval(5)
	elseIf (option == OIDSolitudeBuy)
		SetSliderDialogStartValue(SolitudeBuyVal)
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(10, 50)
		SetSliderDialogInterval(5)
	elseIf (option == OIDSolitudeSell)
		SetSliderDialogStartValue(SolitudeSellVal)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 15)
		SetSliderDialogInterval(5)
	elseIf (option == OIDMarkarthBuy)
		SetSliderDialogStartValue(MarkarthBuyVal)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(10, 50)
		SetSliderDialogInterval(5)
	elseIf (option == OIDMarkarthSell)
		SetSliderDialogStartValue(MarkarthSellVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 15)
		SetSliderDialogInterval(5)
	elseIf (option == OIDWindhelmBuy)
		SetSliderDialogStartValue(WindhelmBuyVal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(10, 50)
		SetSliderDialogInterval(5)
	elseIf (option == OIDWindhelmSell)
		SetSliderDialogStartValue(WindhelmSellVal)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 15)
		SetSliderDialogInterval(5)
	elseIf (option == OIDRiftenBuy)
		SetSliderDialogStartValue(RiftenBuyVal)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(10, 50)
		SetSliderDialogInterval(5)
	elseIf (option == OIDRiftenSell)
		SetSliderDialogStartValue(RiftenSellVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 15)
		SetSliderDialogInterval(5)
	elseIf (option == OIDWhiterunBuy)
		SetSliderDialogStartValue(WhiterunBuyVal)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(10, 50)
		SetSliderDialogInterval(5)
	elseIf (option == OIDWhiterunSell)
		SetSliderDialogStartValue(WhiterunSellVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 15)
		SetSliderDialogInterval(5)
	elseIf (option == OIDBarterMin)
		SetSliderDialogStartValue(BarterMinGlobal.GetValue())
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(1.0, 20.0)
		SetSliderDialogInterval(0.1)
	elseIf (option == OIDBarterMax)
		SetSliderDialogStartValue(BarterMaxGlobal.GetValue())
		SetSliderDialogDefaultValue(4.0)
		SetSliderDialogRange(1.0, 20.0)
		SetSliderDialogInterval(0.1)
	elseIf (option == OIDBuyBuff)
		SetSliderDialogStartValue(BuyBuffVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-90, 100)
		SetSliderDialogInterval(10)
	elseIf (option == OIDSellBuff)
		SetSliderDialogStartValue(SellBuffVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-90, 100)
		SetSliderDialogInterval(10)
	elseIf (option == OIDRaceAltmer)
		SetSliderDialogStartValue(AltmerVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)		
	elseIf (option == OIDRaceArgonian)
		SetSliderDialogStartValue(ArgonianVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceBosmer)
		SetSliderDialogStartValue(BosmerVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceBreton)
		SetSliderDialogStartValue(BretonVal)	
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceDunmer)
		SetSliderDialogStartValue(DunmerVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceImperial)
		SetSliderDialogStartValue(ImperialVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceKhajiit)
		SetSliderDialogStartValue(KhajiitVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceNord)
		SetSliderDialogStartValue(NordVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceNordStormcloak)
		SetSliderDialogStartValue(NordStormVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceOrc)
		SetSliderDialogStartValue(OrcVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDRaceRedguard)
		SetSliderDialogStartValue(RedguardVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-15, 15)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDNaked)
		SetSliderDialogStartValue(NakedVal)
		SetSliderDialogDefaultValue(-90)
		SetSliderDialogRange(-100, 0)
		SetSliderDialogInterval(10)
	elseIf (option == OIDHelmet)
		SetSliderDialogStartValue(HelmetVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-10, 10)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDWeapon)
		SetSliderDialogStartValue(WeaponVal)
		SetSliderDialogDefaultValue(-5)
		SetSliderDialogRange(-15, 10)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDFence)
		SetSliderDialogStartValue(FenceVal)
		SetSliderDialogDefaultValue(-20)
		SetSliderDialogRange(-25, 0)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDVendorRespawn)
		SetSliderDialogStartValue(VendorRespawnGlobal.GetValue())
		SetSliderDialogDefaultValue(14.0)
		SetSliderDialogRange(1.0, 30.0)
		SetSliderDialogInterval(1.0)
	elseIf (option == OIDInvestorGold)
		SetSliderDialogStartValue(InvestorVal)
		SetSliderDialogDefaultValue(500.0)
		SetSliderDialogRange(100.0, 5000.0)
		SetSliderDialogInterval(100.0)
	elseIf (option == OIDInvestedGoldIncrease)
		SetSliderDialogStartValue(InvestedGoldVal)
		SetSliderDialogDefaultValue(1500.0)
		SetSliderDialogRange(0.0, 5000.0)
		SetSliderDialogInterval(100.0)		
	elseIf (option == OIDMasterTrader)
		SetSliderDialogStartValue(MasterTraderVal)
		SetSliderDialogDefaultValue(3000.0)
		SetSliderDialogRange(100.0, 5000.0)
		SetSliderDialogInterval(100.0)
	elseIf (option == OIDApothecaryGold)
		SetSliderDialogStartValue(ApothecaryVal)
		SetSliderDialogDefaultValue(400.0)
		SetSliderDialogRange(50.0, 5000.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDBlacksmithGold)
		SetSliderDialogStartValue(CitySmithVal)
		SetSliderDialogDefaultValue(600.0)
		SetSliderDialogRange(50.0, 5000.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDBlacksmithTownGold)
		SetSliderDialogStartValue(TownSmithVal)
		SetSliderDialogDefaultValue(400.0)
		SetSliderDialogRange(50.0, 5000.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDBlacksmithOrcGold)
		SetSliderDialogStartValue(OrcSmithVal)
		SetSliderDialogDefaultValue(250.0)
		SetSliderDialogRange(50.0, 5000.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDSpellGold)
		SetSliderDialogStartValue(SpellVal)
		SetSliderDialogDefaultValue(500.0)
		SetSliderDialogRange(50.0, 5000.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDMiscGold)
		SetSliderDialogStartValue(MiscVal)
		SetSliderDialogDefaultValue(300.0)
		SetSliderDialogRange(50.0, 5000.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDInnGold)
		SetSliderDialogStartValue(InnVal)
		SetSliderDialogDefaultValue(200.0)
		SetSliderDialogRange(10.0, 1500.0)
		SetSliderDialogInterval(10.0)
	elseIf (option == OIDStreetGold)
		SetSliderDialogStartValue(StreetVal)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(10.0, 1500.0)
		SetSliderDialogInterval(10.0)
	elseIf (option == OIDCaravanGold)
		SetSliderDialogStartValue(CaravanVal)
		SetSliderDialogDefaultValue(750.0)
		SetSliderDialogRange(50.0, 5000.0)
		SetSliderDialogInterval(50.0)
	endif
endEvent

event OnOptionSliderAccept(int option, float value)
	if (option == OIDThane)
		ThaneVal = value
		SetSliderOptionValue(OIDThane, ThaneVal, "{0}% better prices")
		ThaneStatus.Setvalue(ThaneVal)
	elseIf (option == OIDFaction)
		FactionVal = value
		SetSliderOptionValue(OIDFaction, FactionVal, "{0}% better prices")
		FactionMember.Setvalue(FactionVal)
	elseIf (option == OIDFactionLead)
		FactionLeadVal = value
		SetSliderOptionValue(OIDFactionLead, FactionLeadVal, "{0}% better prices")
		FactionLead.Setvalue(FactionLeadVal)
	elseif (option == OIDFriend)
		FriendVal = value
		SetSliderOptionValue(OIDFriend, FriendVal, "{0}% better prices")
		RelFriend.Setvalue(FriendVal)
	elseIf (option == OIDAlly)
		AllyVal = value
		SetSliderOptionValue(OIDAlly, AllyVal, "{0}% better prices")
		RelAlly.Setvalue(AllyVal)
	elseIf (option == OIDLover)
		LoverVal = value
		SetSliderOptionValue(OIDLover, LoverVal, "{0}% better prices")
		RelLover.Setvalue(LoverVal)
	elseIf (option == OIDSolitudeBuy)
		SolitudeBuyVal = value
		SetSliderOptionValue(OIDSolitudeBuy, SolitudeBuyVal, "{0}% higher")
		LocSolitudeBuy.Setvalue(SolitudeBuyVal)
	elseIf (option == OIDSolitudeSell)
		SolitudeSellVal = value
		SetSliderOptionValue(OIDSolitudeSell, SolitudeSellVal, "{0}% higher")
		LocSolitudeSell.Setvalue(SolitudeSellVal)
	elseIf (option == OIDMarkarthBuy)
		MarkarthBuyVal = value
		SetSliderOptionValue(OIDMarkarthBuy, MarkarthBuyVal, "{0}% higher")
		LocMarkarthBuy.Setvalue(MarkarthBuyVal)
	elseIf (option == OIDMarkarthSell)
		MarkarthSellVal = value
		SetSliderOptionValue(OIDMarkarthSell, MarkarthSellVal, "{0}% higher")
		LocMarkarthSell.Setvalue(MarkarthSellVal)
	elseIf (option == OIDWindhelmBuy)
		WindhelmBuyVal = value
		SetSliderOptionValue(OIDWindhelmBuy, WindhelmBuyVal, "{0}% higher")
		LocWindhelmBuy.Setvalue(WindhelmBuyVal)
	elseIf (option == OIDWindhelmSell)
		WindhelmSellVal = value
		SetSliderOptionValue(OIDWindhelmSell, WindhelmSellVal, "{0}% higher")
		LocWindhelmSell.Setvalue(WindhelmSellVal)
	elseIf (option == OIDRiftenBuy)
		RiftenBuyVal = value
		SetSliderOptionValue(OIDRiftenBuy, RiftenBuyVal, "{0}% higher")
		LocRiftenBuy.Setvalue(RiftenBuyVal)
	elseIf (option == OIDRiftenSell)
		RiftenSellVal = value
		SetSliderOptionValue(OIDRiftenSell, RiftenSellVal, "{0}% higher")
		LocRiftenSell.Setvalue(RiftenSellVal)
	elseIf (option == OIDWhiterunBuy)
		WhiterunBuyVal = value
		SetSliderOptionValue(OIDWhiterunBuy, WhiterunBuyVal, "{0}% higher")
		LocWhiterunBuy.Setvalue(WhiterunBuyVal)
	elseIf (option == OIDWhiterunSell)
		WhiterunSellVal = value
		SetSliderOptionValue(OIDWhiterunSell, WhiterunSellVal, "{0}% higher")
		LocWhiterunSell.Setvalue(WhiterunSellVal)
	elseIf (option == OIDBarterMin)
		BarterMinVal = value
		SetSliderOptionValue(OIDBarterMin, BarterMinVal, "{1}")
		BarterMinGlobal.Setvalue(BarterMinVal)
		Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
	elseIf (option == OIDBarterMax)
		BarterMaxVal = value
		SetSliderOptionValue(OIDBarterMax, BarterMaxVal, "{1}")
		BarterMaxGlobal.Setvalue(BarterMaxVal)
		Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
	elseIf (option == OIDBuyBuff)
		BuyBuffVal = value
		SetSliderOptionValue(OIDBuyBuff, BuyBuffVal, "{0}%")
		BuyBuffGlobal.Setvalue(BuyBuffVal)
	elseIf (option == OIDSellBuff)
		SellBuffVal = value
		SetSliderOptionValue(OIDSellBuff, SellBuffVal, "{0}%")
		SellBuffGlobal.Setvalue(SellBuffVal)
	elseIf (option == OIDRaceAltmer)
		AltmerVal = value
		SetSliderOptionValue(OIDRaceAltmer, AltmerVal, "{0}% prices")
		RaceAltmer.Setvalue(AltmerVal)	
	elseIf (option == OIDRaceArgonian)
		ArgonianVal = value
		SetSliderOptionValue(OIDRaceArgonian, ArgonianVal, "{0}% prices")
		RaceArgonian.Setvalue(ArgonianVal)			
	elseIf (option == OIDRaceBosmer)
		BosmerVal = value
		SetSliderOptionValue(OIDRaceBosmer, BosmerVal, "{0}% prices")
		RaceBosmer.Setvalue(BosmerVal)		
	elseIf (option == OIDRaceBreton)
		BretonVal = value
		SetSliderOptionValue(OIDRaceBreton, BretonVal, "{0}% prices")
		RaceBreton.Setvalue(BretonVal)			
	elseIf (option == OIDRaceDunmer)
		DunmerVal = value
		SetSliderOptionValue(OIDRaceDunmer, DunmerVal, "{0}% prices")
		RaceDunmer.Setvalue(DunmerVal)			
	elseIf (option == OIDRaceImperial)
		ImperialVal = value
		SetSliderOptionValue(OIDRaceImperial, ImperialVal, "{0}% prices")
		RaceBosmer.Setvalue(ImperialVal)			
	elseIf (option == OIDRaceKhajiit)
		KhajiitVal = value
		SetSliderOptionValue(OIDRaceKhajiit, KhajiitVal, "{0}% prices")
		RaceKhajiit.Setvalue(KhajiitVal)				
	elseIf (option == OIDRaceNord)
		NordVal = value
		SetSliderOptionValue(OIDRaceNord, NordVal, "{0}% prices")
		RaceNord.Setvalue(NordVal)				
	elseIf (option == OIDRaceNordStormcloak)
		NordStormVal = value
		SetSliderOptionValue(OIDRaceNordStormcloak, NordStormVal, "{0}% prices")
		RaceNordStorm.Setvalue(NordStormVal)				
	elseIf (option == OIDRaceOrc)
		OrcVal = value
		SetSliderOptionValue(OIDRaceOrc, OrcVal, "{0}% prices")
		RaceOrc.Setvalue(OrcVal)			
	elseIf (option == OIDRaceRedguard)
		RedguardVal = value
		SetSliderOptionValue(OIDRaceRedguard, RedguardVal, "{0}% prices")
		RaceRedguard.Setvalue(RedguardVal)	
	elseIf (option == OIDHelmet)
		HelmetVal = value
		SetSliderOptionValue(OIDHelmet, HelmetVal, "{0}% prices")
		HelmetGV.Setvalue(HelmetVal)
	elseIf (option == OIDNaked)
		NakedVal = value
		SetSliderOptionValue(OIDNaked, NakedVal, "{0}% prices")
		NakedGV.Setvalue(NakedVal)		
	elseIf (option == OIDWeapon)
		WeaponVal = value
		SetSliderOptionValue(OIDWeapon, WeaponVal, "{0}% prices")
		WeaponGV.Setvalue(WeaponVal)
	elseIf (option == OIDFence)
		FenceVal = value
		SetSliderOptionValue(OIDFence, FenceVal, "{0}% prices")
		FenceGV.Setvalue(FenceVal)	
	elseIf (option == OIDVendorRespawn)
		RespawnVendorVal = value as int
		SetSliderOptionValue(OIDVendorRespawn, RespawnVendorVal, "{1} days")
		VendorRespawnGlobal.Setvalue(RespawnVendorVal)
		Game.SetGameSettingInt("iDaysToRespawnVendor", RespawnVendorVal)
	elseIf (option == OIDInvestorGold)
		InvestorVal = value
		SetSliderOptionValue(OIDInvestorGold, InvestorVal, "{0} gold")
		InvestorAmount.Setvalue(InvestorVal)
		If Game.getPlayer().HasPerk(InvestorPerk)
			InvestorQuest.Stop()
			InvestorQuest.Start()	
		Endif
	elseIf (option == OIDInvestedGoldIncrease)
		PerkInvestorStoreUpgrade.Revert()
		InvestedGoldVal = value
		SetSliderOptionValue(OIDInvestedGoldIncrease, InvestedGoldVal, "{0} gold")
		INVGoldtoAdd = (InvestedGoldVal) as int
		PerkInvestorStoreUpgrade.AddForm(Gold001, 1, INVGoldtoAdd)
	elseIf (option == OIDMasterTrader)
		PerkMasterTraderGold.Revert()
		MasterTraderVal = value as int
		SetSliderOptionValue(OIDMasterTrader, MasterTraderVal, "{0} gold")
		MTGoldtoAdd = MasterTraderVal as int
		PerkMasterTraderGold.AddForm(Gold001, 1, MTGoldtoAdd)
	elseIf (option == OIDApothecaryGold)
		VendorGoldApothecary.Revert()
		ApothecaryVal = value as int
		SetSliderOptionValue(OIDApothecaryGold, ApothecaryVal, "{0} gold")
		APGoldtoAdd = (ApothecaryVal) as int
		VendorGoldApothecary.AddForm(Gold001, 1, APGoldtoAdd)	
		VendorGoldApothecary.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDBlacksmithGold)
		VendorGoldBlacksmith.Revert()
		CitySmithVal = value as int
		SetSliderOptionValue(OIDBlacksmithGold, CitySmithVal, "{0} gold")
		CSGoldtoAdd = (CitySmithVal) as int
		VendorGoldBlacksmith.AddForm(Gold001, 1, CSGoldtoAdd)
		VendorGoldBlacksmith.AddForm(KRY_RandomVendorGoldLG, 1, 6)
	elseIf (option == OIDBlacksmithTownGold)
		VendorGoldBlacksmithTown.Revert()
		TownSmithVal = value as int
		SetSliderOptionValue(OIDBlacksmithTownGold, TownSmithVal, "{0} gold")
		TSGoldtoAdd = (TownSmithVal) as int
		VendorGoldBlacksmithTown.AddForm(Gold001, 1, TSGoldtoAdd)
		VendorGoldBlacksmithTown.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDBlacksmithOrcGold)
		VendorGoldBlacksmithOrc.Revert()
		OrcSmithVal = value as int
		SetSliderOptionValue(OIDBlacksmithOrcGold, OrcSmithVal, "{0} gold")
		OSGoldtoAdd = (OrcSmithVal) as int
		VendorGoldBlacksmithOrc.AddForm(Gold001, 1, OSGoldtoAdd)
		VendorGoldBlacksmithOrc.AddForm(KRY_RandomVendorGoldLG, 1, 2)	
	elseIf (option == OIDSpellGold)
		VendorGoldSpells.Revert()
		SpellVal = value as int
		SetSliderOptionValue(OIDSpellGold, SpellVal, "{0} gold")
		SPGoldtoAdd = (SpellVal) as int
		VendorGoldSpells.AddForm(Gold001, 1, SPGoldtoAdd)	
		VendorGoldSpells.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDMiscGold)
		VendorGoldMisc.Revert()
		MiscVal = value as int
		SetSliderOptionValue(OIDMiscGold, MiscVal, "{0} gold")
		MCGoldtoAdd = (MiscVal) as int
		VendorGoldMisc.AddForm(Gold001, 1, MCGoldtoAdd)		
		VendorGoldMisc.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDInnGold)
		VendorGoldInn.Revert()
		InnVal = value as int
		SetSliderOptionValue(OIDInnGold, InnVal, "{0} gold")
		INGoldtoAdd = (InnVal) as int
		VendorGoldInn.AddForm(Gold001, 1, INGoldtoAdd)	
		VendorGoldInn.AddForm(KRY_RandomVendorGoldSM, 1, 10)
	elseIf (option == OIDStreetGold)
		VendorGoldStreetVendor.Revert()
		StreetVal = value as int
		SetSliderOptionValue(OIDStreetGold, StreetVal, "{0} gold")
		STGoldtoAdd = (StreetVal) as int
		VendorGoldStreetVendor.AddForm(Gold001, 1, STGoldtoAdd)	
		VendorGoldStreetVendor.AddForm(KRY_RandomVendorGoldSM, 1, 5)	
	elseIf (option == OIDCaravanGold)
		VendorGoldCaravan.Revert()
		CaravanVal = value as int
		SetSliderOptionValue(OIDCaravanGold, CaravanVal, "{0} gold")
		CVGoldtoAdd = (CaravanVal) as int
		VendorGoldCaravan.AddForm(Gold001, 1, CVGoldtoAdd)		
		VendorGoldCaravan.AddForm(KRY_RandomVendorGoldLG, 1, 4)		
	endIf
endEvent

;event OnOptionMenuOpen(int option)		
;	if option == OIDPresetRates
;		SetMenuDialogOptions(PresetList)
;		SetMenuDialogStartIndex(PresetChoice)
;		SetMenuDialogDefaultIndex(0)
;	endif
;endEvent

;event OnOptionMenuAccept(int option, int index)	
;	if option == OIDPresetRates
;		PresetChoice = index
;		SetMenuOptionValue(OIDPresetRates, PresetList[PresetChoice])
;		if PresetChoice == 1		;Easy
;			BarterMaxVal = 5.0
;			BarterMaxGlobal.Setvalue(BarterMaxVal)
;			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
;			BarterMinVal = 3.5
;			BarterMinGlobal.Setvalue(BarterMinVal)
;			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
;			BuyBuffVal = -40
;			BuyBuffGlobal.Setvalue(BuyBuffVal)
;			SellBuffVal = 0
;			SellBuffGlobal.Setvalue(SellBuffVal)
;		elseif PresetChoice == 2		;Medium
;			BarterMaxVal = 6.5
;			BarterMaxGlobal.Setvalue(BarterMaxVal)
;			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
;			BarterMinVal = 4.0
;			BarterMinGlobal.Setvalue(BarterMinVal)
;			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
;			BuyBuffVal = -50
;			BuyBuffGlobal.Setvalue(BuyBuffVal)
;			SellBuffVal = 0
;			SellBuffGlobal.Setvalue(SellBuffVal)
;		elseif PresetChoice == 3		;Difficult
;			BarterMaxVal = 10.0
;			BarterMaxGlobal.Setvalue(BarterMaxVal)
;			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
;			BarterMinVal = 6.5
;			BarterMinGlobal.Setvalue(BarterMinVal)
;			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
;			BuyBuffVal = -60
;			BuyBuffGlobal.Setvalue(BuyBuffVal)
;			SellBuffVal = 0
;			SellBuffGlobal.Setvalue(SellBuffVal)
;		elseif PresetChoice == 4		;Hardcore
;			BarterMaxVal = 15.0
;			BarterMaxGlobal.Setvalue(BarterMaxVal)
;			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
;			BarterMinVal = 10.0
;			BarterMinGlobal.Setvalue(BarterMinVal)
;			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
;			BuyBuffVal = -70
;			BuyBuffGlobal.Setvalue(BuyBuffVal)
;			SellBuffVal = 0
;			SellBuffGlobal.Setvalue(SellBuffVal)
;		endif
;		ForcePageReset()
;	endif
;endEvent

Event OnOptionDefault(int option)
	if (option == OIDThane)
		ThaneVal = 5
		SetSliderOptionValue(OIDThane, ThaneVal, "{0}% better prices")	
		ThaneStatus.Setvalue(ThaneVal)
	elseIf (option == OIDFaction)
		FactionVal = 10
		SetSliderOptionValue(OIDFaction, FactionVal, "{0}% better prices")
		FactionMember.Setvalue(FactionVal)
	elseIf (option == OIDFactionLead)
		FactionLeadVal = 5
		SetSliderOptionValue(OIDFactionLead, FactionLeadVal, "{0}% better prices")
		FactionLead.Setvalue(FactionLeadVal)
	elseif (option == OIDFriend)
		FriendVal = 5
		SetSliderOptionValue(OIDFriend, FriendVal, "{0}% better prices")	
		RelFriend.Setvalue(FriendVal)
	elseIf (option == OIDAlly)
		AllyVal = 10
		SetSliderOptionValue(OIDAlly, AllyVal, "{0}% better prices")
		RelAlly.Setvalue(AllyVal)
	elseIf (option == OIDLover)
		LoverVal = 30
		SetSliderOptionValue(OIDLover, LoverVal, "{0}% better prices")
		RelLover.Setvalue(LoverVal)
	elseIf (option == OIDLocation)
		LocationGV.Setvalue(1)
		SetTextOptionValue(OIDLocation, LocationGV.GetValueInt())
		SetOptionFlags(OIDSolitudeBuy, OPTION_FLAG_NONE)
		SetOptionFlags(OIDSolitudeSell, OPTION_FLAG_NONE)
		SetOptionFlags(OIDMarkarthBuy, OPTION_FLAG_NONE)
		SetOptionFlags(OIDMarkarthSell, OPTION_FLAG_NONE)
		SetOptionFlags(OIDWindhelmBuy, OPTION_FLAG_NONE)
		SetOptionFlags(OIDWindhelmSell, OPTION_FLAG_NONE)
		SetOptionFlags(OIDRiftenBuy, OPTION_FLAG_NONE)
		SetOptionFlags(OIDRiftenSell, OPTION_FLAG_NONE)
		SetOptionFlags(OIDWhiterunBuy, OPTION_FLAG_NONE)
		SetOptionFlags(OIDWhiterunSell, OPTION_FLAG_NONE)
	elseIf (option == OIDSolitudeBuy)
		SolitudeBuyVal = 35
		SetSliderOptionValue(OIDSolitudeBuy, SolitudeBuyVal, "{0}% higher.")
		LocSolitudeBuy.Setvalue(SolitudeBuyVal)
	elseIf (option == OIDSolitudeSell)
		SolitudeSellVal = 10
		SetSliderOptionValue(OIDSolitudeSell, SolitudeSellVal, "{0}% higher.")
		LocSolitudeSell.Setvalue(SolitudeSellVal)
	elseIf (option == OIDMarkarthBuy)
		MarkarthBuyVal = 30
		SetSliderOptionValue(OIDMarkarthBuy, MarkarthBuyVal, "{0}% higher.")
		LocMarkarthBuy.Setvalue(MarkarthBuyVal)
	elseIf (option == OIDMarkarthSell)
		MarkarthSellVal = 5
		SetSliderOptionValue(OIDMarkarthSell, MarkarthSellVal, "{0}% higher.")
		LocMarkarthSell.Setvalue(MarkarthSellVal)
	elseIf (option == OIDWindhelmBuy)
		WindhelmBuyVal = 25
		SetSliderOptionValue(OIDWindhelmBuy, WindhelmBuyVal, "{0}% higher.")
		LocWindhelmBuy.Setvalue(WindhelmBuyVal)
	elseIf (option == OIDWindhelmSell)
		WindhelmSellVal = 10
		SetSliderOptionValue(OIDWindhelmSell, WindhelmSellVal, "{0}% higher.")
		LocWindhelmSell.Setvalue(WindhelmSellVal)
	elseIf (option == OIDRiftenBuy)
		RiftenBuyVal = 20
		SetSliderOptionValue(OIDRiftenBuy, RiftenBuyVal, "{0}% higher.")
		LocRiftenBuy.Setvalue(RiftenBuyVal)
	elseIf (option == OIDRiftenSell)
		RiftenSellVal = 5
		SetSliderOptionValue(OIDRiftenSell, RiftenSellVal, "{0}% higher.")
		LocRiftenSell.Setvalue(RiftenSellVal)
	elseIf (option == OIDWhiterunBuy)
		WhiterunBuyVal = 15
		SetSliderOptionValue(OIDWhiterunBuy, WhiterunBuyVal, "{0}% higher.")
		LocWhiterunBuy.Setvalue(WhiterunBuyVal)
	elseIf (option == OIDWhiterunSell)
		WhiterunSellVal = 0
		SetSliderOptionValue(OIDWhiterunSell, WhiterunSellVal, "{0}% higher.")
		LocWhiterunSell.Setvalue(WhiterunSellVal)
	elseIf (option == OIDBarterMin)
		BarterMinVal = 3.0
		SetSliderOptionValue(OIDBarterMin, BarterMinVal, "{0.0}")
		BarterMinGlobal.Setvalue(BarterMinVal)
		Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
	elseIf (option == OIDBarterMax)
		BarterMaxVal = 4.0
		SetSliderOptionValue(OIDBarterMax, BarterMaxVal, "{0.0}")
		BarterMaxGlobal.Setvalue(BarterMaxVal)
		Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
	elseIf (option == OIDBuyBuff)
		BuyBuffVal = 0
		SetSliderOptionValue(OIDBuyBuff, BuyBuffVal, "{0}%")
		BuyBuffGlobal.Setvalue(BuyBuffVal)
	elseIf (option == OIDSellBuff)
		SellBuffVal = 0
		SetSliderOptionValue(OIDSellBuff, SellBuffVal, "{0}%")
		SellBuffGlobal.Setvalue(SellBuffVal)
	elseIf (option == OIDHelmet)
		HelmetVal = 0.0
		SetSliderOptionValue(OIDHelmet, HelmetVal, "{0}% prices")
		HelmetGV.Setvalue(HelmetVal)
	elseIf (option == OIDNaked)
		NakedVal = -90.0
		SetSliderOptionValue(OIDNaked, NakedVal, "{0}% prices")
		NakedGV.Setvalue(NakedVal)
	elseIf (option == OIDWeapon)
		WeaponVal = -5.0
		SetSliderOptionValue(OIDWeapon, WeaponVal, "{0}% prices")
		WeaponGV.Setvalue(WeaponVal)
	elseIf (option == OIDFence)
		FenceVal = -20.0
		SetSliderOptionValue(OIDFence, FenceVal, "{0}% prices")
		FenceGV.Setvalue(FenceVal)
	elseIf (option == OIDVendorRespawn)
		RespawnVendorVal = 14
		SetSliderOptionValue(OIDVendorRespawn, RespawnVendorVal, "{1} days")
		VendorRespawnGlobal.Setvalue(RespawnVendorVal)
		Game.SetGameSettingInt("iDaysToRespawnVendor", 14)
	elseIf (option == OIDInvestorGold)
		InvestorVal = 500
		SetSliderOptionValue(OIDInvestorGold, InvestorVal, "{0} gold")
		InvestorAmount.Setvalue(InvestorVal)
		If Game.getplayer().hasperk(InvestorPerk)
			InvestorQuest.Stop()
			InvestorQuest.Start()
		endif	
	elseIf (option == OIDInvestedGoldIncrease)
		PerkInvestorStoreUpgrade.Revert()
		InvestedGoldVal = 1500
		SetSliderOptionValue(OIDInvestedGoldIncrease, InvestedGoldVal, "{0} gold")
		PerkInvestorStoreUpgrade.AddForm(Gold001, 1, 1500)
	elseIf (option == OIDMasterTrader)
		PerkMasterTraderGold.Revert()
		MasterTraderVal = 3000
		SetSliderOptionValue(OIDMasterTrader, MasterTraderVal, "{0} gold")
		PerkMasterTraderGold.AddForm(Gold001, 1, 3000)
	elseIf (option == OIDApothecaryGold)
		VendorGoldApothecary.Revert()
		ApothecaryVal = 400
		SetSliderOptionValue(OIDApothecaryGold, ApothecaryVal, "{0} gold")
		VendorGoldApothecary.AddForm(Gold001, 1, 400)
		VendorGoldApothecary.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDBlacksmithGold)
		VendorGoldBlacksmith.Revert()
		CitySmithVal = 600
		SetSliderOptionValue(OIDBlacksmithGold, CitySmithVal, "{0} gold")
		VendorGoldBlacksmith.AddForm(Gold001, 1, 600)
		VendorGoldBlacksmith.AddForm(KRY_RandomVendorGoldLG, 1, 6)
	elseIf (option == OIDBlacksmithTownGold)
		VendorGoldBlacksmithTown.Revert()
		TownSmithVal = 400
		SetSliderOptionValue(OIDBlacksmithTownGold, TownSmithVal, "{0} gold")
		VendorGoldBlacksmithTown.AddForm(Gold001, 1, 400)
		VendorGoldBlacksmithTown.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDBlacksmithOrcGold)
		VendorGoldBlacksmithOrc.Revert()
		OrcSmithVal = 250
		SetSliderOptionValue(OIDBlacksmithOrcGold, OrcSmithVal, "{0} gold")
		VendorGoldBlacksmithOrc.AddForm(Gold001, 1, 250)
		VendorGoldBlacksmithOrc.AddForm(KRY_RandomVendorGoldLG, 1, 2)
	elseIf (option == OIDSpellGold)
		VendorGoldSpells.Revert()
		SpellVal = 500
		SetSliderOptionValue(OIDSpellGold, SpellVal, "{0} gold")
		VendorGoldSpells.AddForm(Gold001, 1, 500)
		VendorGoldSpells.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDMiscGold)
		VendorGoldMisc.Revert()
		MiscVal = 300
		SetSliderOptionValue(OIDMiscGold, MiscVal, "{0} gold")
		VendorGoldMisc.AddForm(Gold001, 1, 300)
		VendorGoldMisc.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDInnGold)
		VendorGoldInn.Revert()
		InnVal = 200
		SetSliderOptionValue(OIDInnGold, InnVal, "{0} gold")
		VendorGoldInn.AddForm(Gold001, 1, 200)
		VendorGoldInn.AddForm(KRY_RandomVendorGoldSM, 1, 10)
	elseIf (option == OIDStreetGold)
		VendorGoldStreetVendor.Revert()
		StreetVal = 50
		SetSliderOptionValue(OIDStreetGold, StreetVal, "{0} gold")
		VendorGoldStreetVendor.AddForm(Gold001, 1, 50)
		VendorGoldStreetVendor.AddForm(KRY_RandomVendorGoldSM, 1, 5)
	elseIf (option == OIDCaravanGold)
		VendorGoldCaravan.Revert()
		CaravanVal = 750
		SetSliderOptionValue(OIDCaravanGold, CaravanVal, "{0} gold")
		VendorGoldCaravan.AddForm(Gold001, 1, 750)
		VendorGoldCaravan.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	endIf
endEvent


event OnOptionHighlight(int option)
	if (option == OIDThane)
		SetInfoText("Buying and selling prices are better in cities where you are Thane.\nDefault: 5%")
	elseIf (option == OIDModStatus)
		if TVModStatus.GetValue() == 0
			SetInfoText("Start Trade & Barter and activate mod options.")
		else
			SetInfoText("Stop Trade & Barter and deactivate mod features.  Use this prior to uninstalling the mod.")
		endif
	elseIf (option == OIDFaction)
		SetInfoText("Buying and selling prices are better when trading with a member of the same faction.\nIncluded factions: Thieves Guild, Dark Brotherhood, Companions, College of Winterhold, Imperials, Stormcloaks.\nDefault: 10%")
	elseIf (option == OIDFactionLead)
		SetInfoText("Buying and selling prices are better if you are the leader of the faction.\nDefault: 5%")
	elseif (option == OIDFriend)
		SetInfoText("Buying and selling prices are better when dealing with friends and confidants.\nDefault: 5%")
	elseIf (option == OIDAlly)
		SetInfoText("Buying and selling prices are better when dealing with allies.\nDefault: 10%")
	elseIf (option == OIDLover)
		SetInfoText("Buying and selling prices are better when dealing with your spouse.\nDefault: 30%")
	elseIf (option == OIDLocation)
		SetInfoText("Prices are higher in major cities.\nDefault: On")
	elseIf (option == OIDSolitudeBuy)
		SetInfoText("Prices for the items you purchase are higher in Solitude.\nDefault: 35%")
	elseIf (option == OIDSolitudeSell)
		SetInfoText("You can get higher prices for the items you sell in Solitude.\nDefault: 10%")
	elseIf (option == OIDMarkarthBuy)
		SetInfoText("Prices for the items you purchase are higher in Markarth.\nDefault: 30%")
	elseIf (option == OIDMarkarthSell)
		SetInfoText("You can get higher prices for the items you sell in Markarth.\nDefault: 5%")
	elseIf (option == OIDWindhelmBuy)
		SetInfoText("Prices for the items you purchase are higher in Windhelm.\nDefault: 25%")
	elseIf (option == OIDWindhelmSell)
		SetInfoText("You can get higher prices for the items you sell in Windhelm.\nDefault: 10%")
	elseIf (option == OIDRiftenBuy)
		SetInfoText("Prices for the items you purchase are higher in Riften.\nDefault: 20%")
	elseIf (option == OIDRiftenSell)
		SetInfoText("You can get higher prices for the items you sell in Riften.\nDefault: 5%")
	elseIf (option == OIDWhiterunBuy)
		SetInfoText("Prices for the items you purchase are higher in Whiterun.\nDefault: 15%")
	elseIf (option == OIDWhiterunSell)
		SetInfoText("You can get higher prices for the items you sell in Whiterun.\nDefault: 0%")
	elseIf (option == OIDBarterMin)
		SetInfoText("Increasing this number will raise the purchase price for items while decreasing the amount you get for selling them.\nDefault Requiem: 3.0")
	elseIf (option == OIDBarterMax)
		SetInfoText("Increasing this number will raise the purchase price for items while decreasing the amount you get for selling them.\nDefault Requiem: 4.0")
	elseIf (option == OIDBuyBuff)
		SetInfoText("Percentage adjustment to the purchase price for all items.")
	elseIf (option == OIDSellBuff)
		SetInfoText("Percentage adjustment to the selling price for all items.")
	elseIf (option == OIDUseBarterRates)
		SetInfoText("Choose your own custom barter settings.\nIf you change these settings, then toggle them back off, you will need to save and reload your game to reset the values.")
	elseIf (option == OIDRaceDefault)
		SetInfoText("Prices will be influenced by race.\nIndividual relationships with merchants will override their racial bias.\nOnly works with default vanilla races.")
	elseIf (option == OIDRaceCustom)
		SetInfoText("Customize the degree of racial bias that merchants feel toward your character.\nThese settings will also work for custom races.")
	elseIf (option == OIDInsider)
		SetInfoText("Get better prices when you know your product.\nBlacksmiths, fletchers, apothecaries, and spell merchants recognize your associated skill:\nsmithing, marksmanship, alchemy, enchanting.\nPrices are 1% better per every 10 skill levels, max 10% better prices at 100 skill.")
	elseIf (option == OIDHelmet)
		SetInfoText("Hiding your face behind a hood or helmet will affect prices.")
	elseIf (option == OIDNaked)
		SetInfoText("A lack of proper attire will affect prices.")
	elseIf (option == OIDWeapon)
		SetInfoText("Approaching a merchant with a drawn weapon or spell will affect prices.")
	elseIf (option == OIDFence)
		SetInfoText("Buying and selling prices are worse when dealing with a Fence.")
	elseIf (option == OIDVendorRespawn)
		SetInfoText("Choose how many days it will take for merchant inventories to respawn.\nDefault Requiem: 14 Days")
	elseIf (option == OIDInvestorGold)
		SetInfoText("The amount of gold it will cost to invest if you have the Investor perk.\nDefault Requiem: 500")
	elseIf (option == OIDInvestedGoldIncrease)
		SetInfoText("The amount that the merchant's base gold will increase after you haved invested in them.\nDefault Requiem: 1500")
	elseIf (option == OIDInvestorInventory)
		SetInfoText("Investing in a merchant will also have some influence on their inventory.\nMerchants may increase their available stock or begin stocking rarer items.\nActual effects vary from merchant to merchant.")
	elseIf (option == OIDMasterTrader)
		SetInfoText("The amount of gold that merchants receive if you take the Master Trader perk.\nDefault Requiem: 3000")
	elseIf (option == OIDVariableGold01)
		SetInfoText("Gives select merchants 50 to 2500 more in gold based on lore and location.\nIn particular, merchants in major cities and trading centers will have more gold than those in rural locations.")
	elseIf (option == OIDVariableGold02)
		SetInfoText("Gives select merchants 50 to 4250 more in gold based on lore and location.\nIn particular, merchants in major cities and trading centers will have more gold than those in rural locations.")
	elseIf (option == OIDVariableGold03)
		SetInfoText("Gives select merchants 50 to 6750 more in gold based on lore and location.\nIn particular, merchants in major cities and trading centers will have more gold than those in rural locations.")
	elseIf (option == OIDRandomGold)
		SetInfoText("Adds a variable amount of gold each time a merchant's inventory respawns.  Merchants will no longer have exactly the same amount of gold every time you visit.")
	elseIf (option == OIDApothecaryGold)
		SetInfoText("Increases the base amount of gold that Apothecary vendors have.\nDefault Requiem: 400")
	elseIf (option == OIDBlacksmithGold)
		SetInfoText("Increases the base amount of gold that City Blacksmiths have.\nDefault Requiem: 600")				
	elseIf (option == OIDBlacksmithTownGold)
		SetInfoText("Increases the base amount of gold that Town Blacksmiths have.\nDefault Requiem: 400")				
	elseIf (option == OIDBlacksmithOrcGold)
		SetInfoText("Increases the base amount of gold that Orc Blacksmiths have.\nDefault Requiem: 250")				
	elseIf (option == OIDSpellGold)
		SetInfoText("Increases the base amount of gold that Spell merchants have.\nDefault Requiem: 500")				
	elseIf (option == OIDMiscGold)
		SetInfoText("Increases the base amount of gold that Miscellaneous vendors have.\nDefault Requiem: 300")				
	elseIf (option == OIDInnGold)
		SetInfoText("Increases the base amount of gold that Innkeepers have.\nDefault Requiem: 200")				
	elseIf (option == OIDStreetGold)
		SetInfoText("Increases the base amount of gold that Street Vendors have.\nDefault Requiem: 50")
	elseIf (option == OIDGoldDefault)
		SetInfoText ("This will reset changes made to the Vendor Gold lists.\nThis option should ONLY be used to resolve conflicts with another mod altering these leveled lists.\nTo re-enable these options you will need to Stop and re-Start the mod.")	
	elseIf (option == OIDCaravanGold)
		SetInfoText("Increases the base amount of gold that Caravan merchants have.\nDefault Requiem: 750")				
	endIf
endEvent


Function Mod_Start()
	if TVModStatus.GetValue() == 0
		TVModStatus.SetValue(1)
		VariableGold01Val.setValue(0)
		VariableGold01GV.setValue(1)
		VariableGold02GV.setValue(0)
		VariableGold03GV.setValue(0)
		InventoryGV.setValue(1)
		InventoryChange.setValue(0)	
		InventoryUpgradeDefault.setValue(100)
		MasterTraderDefault.setValue(100)
		VendorGoldDefault.setValue(100)
		PerkMasterTraderGold.AddForm(Gold001, 1, 3000)
		PerkInvestorStoreUpgrade.AddForm(Gold001, 1, 1500)
		VendorGoldApothecary.AddForm(Gold001, 1, 400)
		VendorGoldBlacksmith.AddForm(Gold001, 1, 600)
		VendorGoldBlacksmithTown.AddForm(Gold001, 1, 400)
		VendorGoldBlacksmithOrc.AddForm(Gold001, 1, 250)
		VendorGoldSpells.AddForm(Gold001, 1, 500)
		VendorGoldMisc.AddForm(Gold001, 1, 300)
		VendorGoldInn.AddForm(Gold001, 1, 200)
		VendorGoldStreetVendor.AddForm(Gold001, 1, 50)
		VendorGoldCaravan.AddForm(Gold001, 1, 750)
		Actor Player = Game.GetPlayer()	
		Player.addPerk(KRY_TradingVariables_CitiesBuy10)
		Player.addPerk(KRY_TradingVariables_CitiesBuy15)
		Player.addPerk(KRY_TradingVariables_CitiesBuy20)
		Player.addPerk(KRY_TradingVariables_CitiesBuy25)
		Player.addPerk(KRY_TradingVariables_CitiesBuy30)
		Player.addPerk(KRY_TradingVariables_CitiesBuy35)
		Player.addPerk(KRY_TradingVariables_CitiesBuy40)
		Player.addPerk(KRY_TradingVariables_CitiesBuy45)
		Player.addPerk(KRY_TradingVariables_CitiesBuy50)
		Player.addPerk(KRY_TradingVariables_CitiesSell05)
		Player.addPerk(KRY_TradingVariables_CitiesSell10)
		Player.addPerk(KRY_TradingVariables_CitiesSell15)
		Player.addPerk(KRY_TradingVariables_FactionLead5)
		Player.addPerk(KRY_TradingVariables_FactionLead10)
		Player.addPerk(KRY_TradingVariables_Factions5)
		Player.addPerk(KRY_TradingVariables_Factions10)
		Player.addPerk(KRY_TradingVariables_Factions15)
		Player.addPerk(KRY_TradingVariables_RaceDefault01)
		Player.addPerk(KRY_TradingVariables_RaceDefault02)
		Player.addPerk(KRY_TradingVariables_RaceDefault03)
		Player.addPerk(KRY_TradingVariables_RaceAltmer)
		Player.addPerk(KRY_TradingVariables_RaceArgonian)
		Player.addPerk(KRY_TradingVariables_RaceBosmer)
		Player.addPerk(KRY_TradingVariables_RaceBreton)
		Player.addPerk(KRY_TradingVariables_RaceDunmer)
		Player.addPerk(KRY_TradingVariables_RaceImperial)
		Player.addPerk(KRY_TradingVariables_RaceKhajiit)
		Player.addPerk(KRY_TradingVariables_RaceNord)
		Player.addPerk(KRY_TradingVariables_RaceNordWindhelm)
		Player.addPerk(KRY_TradingVariables_RaceOrc)
		Player.addPerk(KRY_TradingVariables_RaceRedguard)
		Player.addPerk(KRY_TradingVariables_RelationshipAlly)
		Player.addPerk(KRY_TradingVariables_RelationshipFriend)
		Player.addPerk(KRY_TradingVariables_RelationshipLover)
		Player.addPerk(KRY_TradingVariables_Thane10)
		Player.addPerk(KRY_TradingVariables_Thane5)
		Player.addPerk(KRY_TradingVariables_Weapons)
		Player.addPerk(KRY_TradingVariables_SellBuff)
		Player.addPerk(KRY_TradingVariables_BuyBuff)
		Player.addPerk(KRY_TradingVariables_Helmet)
		Player.addPerk(KRY_TradingVariables_Naked)
		Player.addPerk(KRY_TradingVariables_InsiderAlchemist)
		Player.addPerk(KRY_TradingVariables_InsiderArcher)
		Player.addPerk(KRY_TradingVariables_InsiderSmith)
		Player.addPerk(KRY_TradingVariables_InsiderEnchant)
		Player.addPerk(KRY_TradingVariables_Fence)
	endif
Endfunction


Function Mod_Stop()
	if TVModStatus.GetValue() == 1
		TVModStatus.SetValue(0)
		VariableGold01Val.setValue(100)
		VariableGold02Val.setValue(100)
		VariableGold03Val.setValue(100)
		VariableGold01GV.setValue(0)
		VariableGold02GV.setValue(0)
		VariableGold03GV.setValue(0)
		Actor Player = Game.GetPlayer()	
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy10)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy15)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy20)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy25)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy30)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy35)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy40)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy45)
		Player.RemovePerk(KRY_TradingVariables_CitiesBuy50)
		Player.RemovePerk(KRY_TradingVariables_CitiesSell05)
		Player.RemovePerk(KRY_TradingVariables_CitiesSell10)
		Player.RemovePerk(KRY_TradingVariables_CitiesSell15)
		Player.RemovePerk(KRY_TradingVariables_FactionLead5)
		Player.RemovePerk(KRY_TradingVariables_FactionLead10)
		Player.RemovePerk(KRY_TradingVariables_Factions5)
		Player.RemovePerk(KRY_TradingVariables_Factions10)
		Player.RemovePerk(KRY_TradingVariables_Factions15)
		Player.RemovePerk(KRY_TradingVariables_RaceDefault01)
		Player.RemovePerk(KRY_TradingVariables_RaceDefault02)
		Player.RemovePerk(KRY_TradingVariables_RaceDefault03)
		Player.RemovePerk(KRY_TradingVariables_RaceAltmer)
		Player.RemovePerk(KRY_TradingVariables_RaceArgonian)
		Player.RemovePerk(KRY_TradingVariables_RaceBosmer)
		Player.RemovePerk(KRY_TradingVariables_RaceBreton)
		Player.RemovePerk(KRY_TradingVariables_RaceDunmer)
		Player.RemovePerk(KRY_TradingVariables_RaceImperial)
		Player.RemovePerk(KRY_TradingVariables_RaceKhajiit)
		Player.RemovePerk(KRY_TradingVariables_RaceNord)
		Player.RemovePerk(KRY_TradingVariables_RaceNordWindhelm)
		Player.RemovePerk(KRY_TradingVariables_RaceOrc)
		Player.RemovePerk(KRY_TradingVariables_RaceRedguard)
		Player.RemovePerk(KRY_TradingVariables_RelationshipAlly)
		Player.RemovePerk(KRY_TradingVariables_RelationshipFriend)
		Player.RemovePerk(KRY_TradingVariables_RelationshipLover)
		Player.RemovePerk(KRY_TradingVariables_Thane10)
		Player.RemovePerk(KRY_TradingVariables_Thane5)
		Player.RemovePerk(KRY_TradingVariables_Weapons)
		Player.RemovePerk(KRY_TradingVariables_SellBuff)
		Player.RemovePerk(KRY_TradingVariables_BuyBuff)
		Player.RemovePerk(KRY_TradingVariables_Helmet)
		Player.RemovePerk(KRY_TradingVariables_Naked)
		Player.RemovePerk(KRY_TradingVariables_InsiderAlchemist)
		Player.RemovePerk(KRY_TradingVariables_InsiderArcher)
		Player.RemovePerk(KRY_TradingVariables_InsiderSmith)
		Player.RemovePerk(KRY_TradingVariables_InsiderEnchant)
		Player.RemovePerk(KRY_TradingVariables_Fence)
		UseBarterSettings.setValue(0)
		UseRespawnSettings.setValue(0)
		InventoryGV.setValue(0)
		InventoryChange.setValue(100)
		InventoryUpgradeDefault.setValue(0)	
		PerkInvestorStoreUpgrade.Revert()
		InvestorVal = 500
		InvestedGoldVal = 1500
		SetSliderOptionValue(OIDInvestedGoldIncrease, InvestedGoldVal, "{0} gold")
		SetSliderOptionValue(OIDInvestorGold, InvestorVal, "{0} gold")
		InvestorAmount.Setvalue(InvestorVal)
		If Player.hasperk(InvestorPerk)
			InvestorQuest.Stop()
			InvestorQuest.Start()	
		endif
		MasterTraderDefault.setValue(0)
		PerkMasterTraderGold.Revert()
		MasterTraderVal = 3000
		SetSliderOptionValue(OIDMasterTrader, MasterTraderVal, "{0} gold")
		RandomGoldGV.setValue(0)
		RandomGold00.setValue(100)
		VendorGoldDefault.setValue(0)
		VendorGoldApothecary.Revert()
		ApothecaryVal = 400
		SetSliderOptionValue(OIDApothecaryGold, ApothecaryVal, "{0} gold")
		VendorGoldBlacksmith.Revert()
		CitySmithVal = 600
		SetSliderOptionValue(OIDBlacksmithGold, CitySmithVal, "{0} gold")
		VendorGoldBlacksmithTown.Revert()
		TownSmithVal = 400
		SetSliderOptionValue(OIDBlacksmithTownGold, TownSmithVal, "{0} gold")
		VendorGoldBlacksmithOrc.Revert()
		OrcSmithVal = 250
		SetSliderOptionValue(OIDBlacksmithOrcGold, OrcSmithVal, "{0} gold")
		VendorGoldSpells.Revert()
		SpellVal = 500
		SetSliderOptionValue(OIDSpellGold, SpellVal, "{0} gold")
		VendorGoldMisc.Revert()
		MiscVal = 300
		SetSliderOptionValue(OIDMiscGold, MiscVal, "{0} gold")
		VendorGoldInn.Revert()
		InnVal = 200
		SetSliderOptionValue(OIDInnGold, InnVal, "{0} gold")
		VendorGoldStreetVendor.Revert()
		StreetVal = 50
		SetSliderOptionValue(OIDStreetGold, StreetVal, "{0} gold")
		VendorGoldCaravan.Revert()
		CaravanVal = 750
		SetSliderOptionValue(OIDCaravanGold, CaravanVal, "{0} gold")
;		SetOptionFlags(OIDRandomGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDApothecaryGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDBlacksmithGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDBlacksmithTownGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDBlacksmithOrcGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDSpellGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDMiscGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDInnGold, OPTION_FLAG_NONE)
;		SetOptionFlags(OIDStreetGold, OPTION_FLAG_NONE)
		ForcePageReset()
	endif
EndFunction

Perk Property KRY_TradingVariables_CitiesBuy10 Auto
Perk Property KRY_TradingVariables_CitiesBuy15 Auto
Perk Property KRY_TradingVariables_CitiesBuy20 Auto
Perk Property KRY_TradingVariables_CitiesBuy25 Auto
Perk Property KRY_TradingVariables_CitiesBuy30 Auto
Perk Property KRY_TradingVariables_CitiesBuy35 Auto
Perk Property KRY_TradingVariables_CitiesBuy40 Auto
Perk Property KRY_TradingVariables_CitiesBuy45 Auto
Perk Property KRY_TradingVariables_CitiesBuy50 Auto
Perk Property KRY_TradingVariables_CitiesSell05 Auto
Perk Property KRY_TradingVariables_CitiesSell10 Auto
Perk Property KRY_TradingVariables_CitiesSell15 Auto
Perk Property KRY_TradingVariables_FactionLead5 Auto
Perk Property KRY_TradingVariables_FactionLead10 Auto
Perk Property KRY_TradingVariables_Factions5 Auto
Perk Property KRY_TradingVariables_Factions10 Auto
Perk Property KRY_TradingVariables_Factions15 Auto
Perk Property KRY_TradingVariables_RaceDefault01 Auto
Perk Property KRY_TradingVariables_RaceDefault02 Auto
Perk Property KRY_TradingVariables_RaceDefault03 Auto
Perk Property KRY_TradingVariables_RelationshipAlly Auto
Perk Property KRY_TradingVariables_RelationshipFriend Auto
Perk Property KRY_TradingVariables_RelationshipLover Auto
Perk Property KRY_TradingVariables_Thane10 Auto
Perk Property KRY_TradingVariables_Thane5 Auto
Perk Property KRY_TradingVariables_SellBuff Auto
Perk Property KRY_TradingVariables_BuyBuff Auto
Perk Property KRY_TradingVariables_Weapons Auto
Perk Property KRY_TradingVariables_RaceAltmer Auto
Perk Property KRY_TradingVariables_RaceArgonian Auto
Perk Property KRY_TradingVariables_RaceBreton Auto
Perk Property KRY_TradingVariables_RaceBosmer Auto
Perk Property KRY_TradingVariables_RaceDunmer Auto
Perk Property KRY_TradingVariables_RaceImperial Auto
Perk Property KRY_TradingVariables_RaceKhajiit Auto
Perk Property KRY_TradingVariables_RaceNord Auto
Perk Property KRY_TradingVariables_RaceNordWindhelm Auto
Perk Property KRY_TradingVariables_RaceOrc Auto
Perk Property KRY_TradingVariables_RaceRedguard Auto
Perk Property KRY_TradingVariables_Helmet Auto
Perk Property KRY_TradingVariables_Naked Auto
Perk Property KRY_TradingVariables_InsiderSmith Auto
Perk Property KRY_TradingVariables_InsiderArcher Auto
Perk Property KRY_TradingVariables_InsiderEnchant Auto
Perk Property KRY_TradingVariables_InsiderAlchemist Auto
Perk Property KRY_TradingVariables_Fence Auto
Perk Property InvestorPerk Auto