Scriptname TradeBarter_MCMScript extends SKI_ConfigBase

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
int OIDSolstheimBuy			;added version 2.0
int OIDSolstheimSell		;added version 2.0
int OIDRavenRockBuy			;added version 2.0
int OIDRavenRockSell		;added version 2.0
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
int OIDJobFence
int OIDUseBarterRates = 0
int OIDVendorRespawn
int OIDUseRespawnSettings = 0
int OIDInvestorGold
int OIDInvestedGoldIncrease		
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
int OIDCaravanGold				
int OIDFenceGold00				;added version 2.0
int OIDFenceGold01				;added version 2.0
int OIDFenceGold02				;added version 2.0
int OIDFenceGold03				;added version 2.0
int OIDFenceGold04				;added version 2.0
int OIDDremoraGold				;added version 2.0
int OIDSavePreset				;added version 2.0
int OIDVampire					;added version 2.0
int OIDOrcFriend				;added version 2.0
int OIDJobGeneral				;added version 2.0
int OIDJobProducers				;added version 2.0
int OIDJobSpecialists			;added version 2.0
int OIDJobSpells				;added version 2.0
int OIDJobInns					;added version 2.0

GlobalVariable property InvestorAmount auto
Quest property InvestorQuest auto
Miscobject property Gold001 auto
Leveleditem property PerkMasterTraderGold auto
Leveleditem property PerkInvestorStoreUpgrade auto
int GoldtoAdd				
int VendorGoldDefaultINT = 0		;added version 2.0

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
Leveleditem property VendorGoldCaravan auto				
Leveleditem property VendorGoldFenceStage00 auto		;added version 2.0
Leveleditem property VendorGoldFenceStage01 auto		;added version 2.0
Leveleditem property VendorGoldFenceStage02 auto		;added version 2.0
Leveleditem property VendorGoldFenceStage03 auto		;added version 2.0
Leveleditem property VendorGoldFenceStage04 auto		;added version 2.0
Leveleditem property VendorGoldDremora auto				;added version 2.0

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
float SolstheimBuyVal = 25.0
float SolstheimSellVal = 0.0
float RavenRockBuyVal = 5.0
float RavenRockSellVal = 5.0
float BarterMinVal = 3.0
float BarterMaxVal = 4.0
float BuyBuffVal = 0.0
float SellBuffVal = 0.0
float CustBuyBuffVal = 0.0
float CustSellBuffVal = 0.0
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
float WeaponVal = 0.0
float HelmetVal = 0.0
float NakedVal = -90.0
float VampireVal = 0.0
float OrcFriendVal = 5.0
float InsiderVal = 1.0
float JobFenceVal = -35.0
float JobGeneralVal = -20.0
float JobProducersVal = 30.0
float JobSpecialistsVal = 0.0
float JobSpellsVal = 0.0
float JobInnsVal = 0.0
int RespawnVendorVal = 5
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
float Fence00Val = 1000.0
float Fence01Val = 500.0
float Fence02Val = 750.0
float Fence03Val = 750.0
float Fence04Val = 1000.0
float DremoraVal = 10000.0

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
GlobalVariable property LocSolstheimBuy auto
GlobalVariable property LocSolstheimSell auto
GlobalVariable property LocRavenRockBuy auto
GlobalVariable property LocRavenRockSell auto
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
GlobalVariable property VampireGV auto
GlobalVariable property OrcFriendGV auto
GlobalVariable property InsiderGV auto
GlobalVariable property JobFenceGV auto
GlobalVariable property JobGeneralGV auto
GlobalVariable property JobProducersGV auto
GlobalVariable property JobSpecialistsGV auto
GlobalVariable property JobSpellsGV auto
GlobalVariable property JobInnsGV auto
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
GlobalVariable property InventoryUpgradeDefault auto	
GlobalVariable property MasterTraderDefault auto		
GlobalVariable property VendorGoldDefault auto			

int PresetChoice = 0
float InitBarterMaxVal
float InitBarterMinVal
String[] PresetList

event OnConfigInit()
	ModName = "$TB_TradeAndBarter"
	
	Pages = new string[4]
	Pages[0] = "$TB_BarterRates"
	Pages[1] = "$TB_PlayerVariables"
	Pages[2] = "$TB_MerchantVariables"
	Pages[3] = "$TB_MerchantInventory"	
	
	PresetList = New String[6]
	PresetList[0] = "$TB_Vanilla"
	PresetList[1] = "$TB_Easy"
	PresetList[2] = "$TB_Medium"
	PresetList[3] = "$TB_Difficult"	
	PresetList[4] = "$TB_Hardcore"
	PresetList[5] = "$TB_Custom"
	
	InitBarterMinVal = Game.GetGameSettingFloat("fBarterMin")
	InitBarterMaxVal = Game.GetGameSettingFloat("fBarterMax")
	If (InitBarterMinVal != 3.0) || (InitBarterMaxVal != 4.0)
		PresetChoice = 5
	Endif
endEvent

event OnPageReset(string page)
	If (page == "")
		LoadCustomContent("Trade&Barter/Trade&BarterTitle.dds", 88, 140)
		Return
	Else
		UnloadCustomContent()
	EndIf
	If (page == "$TB_BarterRates")
		SetCursorFillMode(TOP_TO_BOTTOM)
		AddHeaderOption("$TB_GlobalPriceAdjustments")
			OIDBuyBuff = AddSliderOption("$TB_BuyingPrices", BuyBuffVal, "{0}%")
			OIDSellBuff = AddSliderOption("$TB_SellingPrices", SellBuffVal, "{0}%")
		SetCursorPosition(1)		;start right-hand column		
		AddHeaderOption("$TB_Settings")
		BarterMinVal = Game.GetGameSettingFloat("fBarterMin")
		BarterMaxVal = Game.GetGameSettingFloat("fBarterMax")
		if UseBarterSettings.GetValueInt() == 0 
			OIDBarterMax = AddSliderOption("fBarterMax", BarterMaxVal, "{1}", OPTION_FLAG_DISABLED)
			OIDBarterMin = AddSliderOption("fBarterMin", BarterMinVal, "{1}", OPTION_FLAG_DISABLED)
		elseif UseBarterSettings.GetValueInt() == 1
			OIDBarterMax = AddSliderOption("fBarterMax", BarterMaxVal, "{1}", OPTION_FLAG_NONE)
			OIDBarterMin = AddSliderOption("fBarterMin", BarterMinVal, "{1}", OPTION_FLAG_NONE)
		endif
		AddEmptyOption()
			OIDUseBarterRates = AddToggleOption("$TB_ModifyBarterSettings", UseBarterSettings.getValueInt())
			AddEmptyOption()
		AddHeaderOption("$TB_Presets")
		if UseBarterSettings.GetValueInt() == 1
			OIDPresetRates = AddMenuOption("$TB_BarterPresets", PresetList[PresetChoice], OPTION_FLAG_NONE)
			AddEmptyOption()
			OIDSavePreset = AddTextOption("$TB_SaveCurrentValues", "")
		else
			OIDPresetRates = AddMenuOption("$TB_BarterPresets", PresetList[PresetChoice], OPTION_FLAG_DISABLED)
		endif
	Elseif (page == "$TB_PlayerVariables")
		SetCursorFillMode(TOP_TO_BOTTOM)
		AddHeaderOption("$TB_Knowledge")	
			OIDInsider = AddToggleOption("$TB_KnowledgeableTrader", InsiderGV.getValueInt())	
			AddEmptyOption()			
		AddHeaderOption("$TB_Status")
			OIDThane = AddSliderOption("$TB_Thane", ThaneVal, "$TB_%BetterPrices")
			OIDFaction = AddSliderOption("$TB_FactionMember", FactionVal, "$TB_%BetterPrices")
			OIDFactionLead = AddSliderOption("$TB_FactionLeader", FactionLeadVal, "$TB_%BetterPrices")
			AddEmptyOption()
		AddHeaderOption("$TB_Relationship")
			OIDFriend = AddSliderOption("$TB_Friend", FriendVal, "$TB_%BetterPrices")
			OIDAlly = AddSliderOption("$TB_Ally", AllyVal, "$TB_%BetterPrices")
			OIDLover = AddSliderOption("$TB_Lover", LoverVal, "$TB_%BetterPrices")
		SetCursorPosition(1)		;start right-hand column	
		AddHeaderOption("$TB_RaceRelations")
			OIDRaceDefault = AddToggleOption("$TB_UseDefaultRaceRelations", DefaultRaceGV.getValueInt())
			OIDRaceCustom = AddToggleOption("$TB_SetCustomRaceRelations", CustomRaceGV.getValueInt())
			if CustomRaceGV.Getvalue() == 1
				OIDRaceAltmer = AddSliderOption("$TB_Altmers", AltmerVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceArgonian = AddSliderOption("$TB_Argonians", ArgonianVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceBosmer = AddSliderOption("$TB_Bosmers", BosmerVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceBreton = AddSliderOption("$TB_Bretons", BretonVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceDunmer = AddSliderOption("$TB_Dunmers", DunmerVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceImperial = AddSliderOption("$TB_Imperials", ImperialVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceKhajiit = AddSliderOption("$TB_Khajiits", KhajiitVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceNord = AddSliderOption("$TB_Nords", NordVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceNordStormcloak = AddSliderOption("$TB_NordStormcloaks", NordStormVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceOrc = AddSliderOption("$TB_Orcs", OrcVal, "$TB_%Prices", OPTION_FLAG_NONE)
				OIDRaceRedguard = AddSliderOption("$TB_Redguards", RedguardVal, "$TB_%Prices", OPTION_FLAG_NONE)
			endif	
		AddEmptyOption()
		AddHeaderOption("$TB_MiscFactors")
			OIDOrcFriend = AddSliderOption("$TB_OrcFriend", OrcFriendVal, "$TB_%Prices")
			OIDVampire = AddSliderOption("$TB_Vampire", VampireVal, "$TB_%Prices")
			OIDNaked = AddSliderOption("$TB_Naked", NakedVal, "$TB_%Prices")
			OIDHelmet = AddSliderOption("$TB_WearingHelmet", HelmetVal, "$TB_%Prices")
			OIDWeapon = AddSliderOption("$TB_WeaponDrawn", WeaponVal, "$TB_%Prices")
	Elseif (page == "$TB_MerchantVariables")
		SetCursorFillMode(TOP_TO_BOTTOM)	
		AddHeaderOption("$TB_MerchantType")
			OIDJobProducers = AddSliderOption("$TB_JobProducers", JobProducersVal, "$TB_%Prices")
			OIDJobInns = AddSliderOption("$TB_JobInns", JobInnsVal, "$TB_%Prices")		
			OIDJobSpecialists = AddSliderOption("$TB_JobSpecialists", JobSpecialistsVal, "$TB_%Prices")
			OIDJobSpells = AddSliderOption("$TB_JobSpells", JobSpellsVal, "$TB_%Prices")	
			OIDJobGeneral = AddSliderOption("$TB_JobGeneralMerchant", JobGeneralVal, "$TB_%Prices")			
			OIDJobFence = AddSliderOption("$TB_JobFence", JobFenceVal, "$TB_%Prices")	
		SetCursorPosition(1)		;start right-hand column	
		AddHeaderOption("$TB_Location")	
			OIDLocation = AddToggleOption("$TB_EnableLocationVariables", LocationGV.getValueInt())
			AddEmptyOption()
		if LocationGV.Getvalue() == 1
			AddHeaderOption("$TB_Solitude")
			OIDSolitudeBuy = AddSliderOption("$TB_BuyingPrices:", SolitudeBuyVal, "$TB_%Higher", OPTION_FLAG_NONE)
			OIDSolitudeSell = AddSliderOption("$TB_SellingPrices:", SolitudeSellVal, "$TB_%Higher", OPTION_FLAG_NONE)
			AddHeaderOption("$TB_Markarth")
			OIDMarkarthBuy = AddSliderOption("$TB_BuyingPrices:", MarkarthBuyVal, "$TB_%Higher", OPTION_FLAG_NONE)
			OIDMarkarthSell = AddSliderOption("$TB_SellingPrices:", MarkarthSellVal, "$TB_%Higher", OPTION_FLAG_NONE)
			AddHeaderOption("$TB_Windhelm")
			OIDWindhelmBuy = AddSliderOption("$TB_BuyingPrices:", WindhelmBuyVal, "$TB_%Higher", OPTION_FLAG_NONE)
			OIDWindhelmSell = AddSliderOption("$TB_SellingPrices:", WindhelmSellVal, "$TB_%Higher", OPTION_FLAG_NONE)
			AddHeaderOption("$TB_Riften")
			OIDRiftenBuy = AddSliderOption("$TB_BuyingPrices:", RiftenBuyVal, "$TB_%Higher", OPTION_FLAG_NONE)
			OIDRiftenSell = AddSliderOption("$TB_SellingPrices:", RiftenSellVal, "$TB_%Higher", OPTION_FLAG_NONE)
			AddHeaderOption("$TB_Whiterun")
			OIDWhiterunBuy = AddSliderOption("$TB_BuyingPrices:", WhiterunBuyVal, "$TB_%Higher", OPTION_FLAG_NONE)
			OIDWhiterunSell = AddSliderOption("$TB_SellingPrices:", WhiterunSellVal, "$TB_%Higher", OPTION_FLAG_NONE)
			AddHeaderOption("$TB_Solstheim")
			OIDSolstheimBuy = AddSliderOption("$TB_BuyingPrices:", SolstheimBuyVal, "$TB_%Higher", OPTION_FLAG_NONE)
			OIDSolstheimSell = AddSliderOption("$TB_SellingPrices:", SolstheimSellVal, "$TB_%Higher", OPTION_FLAG_NONE)
			AddHeaderOption("$TB_RavenRock")
			OIDRavenRockBuy = AddSliderOption("$TB_BuyingPrices:", RavenRockBuyVal, "$TB_%Higher", OPTION_FLAG_NONE)
			OIDRavenRockSell = AddSliderOption("$TB_SellingPrices:", RavenRockSellVal, "$TB_%Higher", OPTION_FLAG_NONE)
		endif
	elseif (page == "$TB_MerchantInventory")
		SetCursorFillMode(TOP_TO_BOTTOM)
		AddHeaderOption("$TB_MerchantGold")
			if VendorGoldDefault.getValue() == 100
				OIDRandomGold = AddToggleOption("$TB_AddRandomGold", RandomGoldGV.getValueInt(), OPTION_FLAG_NONE)
				OIDStreetGold = AddSliderOption("$TB_StreetVendors", StreetVal, "$TB_Gold", OPTION_FLAG_NONE)
				OIDInnGold = AddSliderOption("$TB_Innkeepers", InnVal, "$TB_Gold", OPTION_FLAG_NONE)		
				OIDApothecaryGold = AddSliderOption("$TB_Apothecaries", ApothecaryVal, "$TB_Gold", OPTION_FLAG_NONE)
				OIDSpellGold = AddSliderOption("$TB_SpellMerchants", SpellVal, "$TB_Gold", OPTION_FLAG_NONE)				
				OIDBlacksmithOrcGold = AddSliderOption("$TB_OrcBlacksmiths", OrcSmithVal, "$TB_Gold", OPTION_FLAG_NONE)	
				OIDBlacksmithTownGold = AddSliderOption("$TB_TownBlacksmiths", TownSmithVal, "$TB_Gold", OPTION_FLAG_NONE)	
				OIDBlacksmithGold = AddSliderOption("$TB_CityBlacksmiths", CitySmithVal, "$TB_Gold", OPTION_FLAG_NONE)				
				OIDMiscGold = AddSliderOption("$TB_MiscMerchants", MiscVal, "$TB_Gold", OPTION_FLAG_NONE)
				OIDCaravanGold = AddSliderOption("$TB_Caravans", CaravanVal, "$TB_Gold", OPTION_FLAG_NONE)
				OIDFenceGold00 = AddSliderOption("$TB_FenceBase", Fence00Val, "$TB_Gold", OPTION_FLAG_NONE)	
				OIDFenceGold01 = AddSliderOption("$TB_FenceStage1", Fence01Val, "$TB_Gold", OPTION_FLAG_NONE)	
				OIDFenceGold02 = AddSliderOption("$TB_FenceStage2", Fence02Val, "$TB_Gold", OPTION_FLAG_NONE)	
				OIDFenceGold03 = AddSliderOption("$TB_FenceStage3", Fence03Val, "$TB_Gold", OPTION_FLAG_NONE)	
				OIDFenceGold04 = AddSliderOption("$TB_FenceStage4", Fence04Val, "$TB_Gold", OPTION_FLAG_NONE)
				OIDDremoraGold = AddSliderOption("$TB_DremoraGold", DremoraVal, "$TB_Gold", OPTION_FLAG_NONE)								
			elseif VendorGoldDefault.getValue() == 0
				OIDRandomGold = AddToggleOption("$TB_AddRandomGold", RandomGoldGV.getValueInt(), OPTION_FLAG_DISABLED)
				OIDStreetGold = AddSliderOption("$TB_StreetVendors", StreetVal, "$TB_Gold", OPTION_FLAG_DISABLED)	
				OIDInnGold = AddSliderOption("$TB_Innkeepers", InnVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDApothecaryGold = AddSliderOption("$TB_Apothecaries", ApothecaryVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDSpellGold = AddSliderOption("$TB_SpellMerchants", SpellVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDBlacksmithOrcGold = AddSliderOption("$TB_OrcBlacksmiths", OrcSmithVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDBlacksmithTownGold = AddSliderOption("$TB_TownBlacksmiths", TownSmithVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDBlacksmithGold = AddSliderOption("$TB_CityBlacksmiths", CitySmithVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDMiscGold = AddSliderOption("$TB_MiscMerchants", MiscVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDCaravanGold = AddSliderOption("$TB_Caravans", CaravanVal, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDFenceGold00 = AddSliderOption("$TB_FenceBase", Fence00Val, "$TB_Gold", OPTION_FLAG_DISABLED)	
				OIDFenceGold01 = AddSliderOption("$TB_FenceStage1", Fence01Val, "$TB_Gold", OPTION_FLAG_DISABLED)	
				OIDFenceGold02 = AddSliderOption("$TB_FenceStage2", Fence02Val, "$TB_Gold", OPTION_FLAG_DISABLED)	
				OIDFenceGold03 = AddSliderOption("$TB_FenceStage3", Fence03Val, "$TB_Gold", OPTION_FLAG_DISABLED)	
				OIDFenceGold04 = AddSliderOption("$TB_FenceStage4", Fence04Val, "$TB_Gold", OPTION_FLAG_DISABLED)
				OIDDremoraGold = AddSliderOption("$TB_DremoraGold", DremoraVal, "$TB_Gold", OPTION_FLAG_DISABLED)		
			endif
			OIDGoldDefault = AddToggleOption("$TB_DisableMerchantGoldOptions", VendorGoldDefaultINT)
		SetCursorPosition(1)		;start right-hand column
		AddHeaderOption("$TB_VariableMerchantGold")
			OIDVariableGold01 = AddToggleOption("$TB_LowVariability", VariableGold01GV.getValueInt())
			OIDVariableGold02 = AddToggleOption("$TB_MediumVariability", VariableGold02GV.getValueInt())
			OIDVariableGold03 = AddToggleOption("$TB_HighVariability", VariableGold03GV.getValueInt())
			AddEmptyOption()
		AddHeaderOption("$TB_RespawnSettings")
			RespawnVendorVal = Game.GetGameSettingInt("iDaysToRespawnVendor")
			OIDUseRespawnSettings = AddToggleOption("$TB_UseCustomRespawnSettings", UseRespawnSettings.getValueInt())
			if UseRespawnSettings.GetValueInt() == 0 
				OIDVendorRespawn = AddSliderOption("$TB_MerchantInventoryRespawnsin", RespawnVendorVal, "$TB_Days", OPTION_FLAG_DISABLED)
			elseif UseRespawnSettings.GetValueInt() == 1
				OIDVendorRespawn = AddSliderOption("$TB_MerchantInventoryRespawnsin", RespawnVendorVal, "$TB_Days", OPTION_FLAG_NONE)
			endif
			AddEmptyOption()
		AddHeaderOption("$TB_Perks")
			OIDInvestorGold = AddSliderOption("$TB_CosttoInvest", InvestorVal, "$TB_Gold")
			OIDInvestedGoldIncrease = AddSliderOption("$TB_IncreasedGoldAfterInvestment", InvestedGoldVal, "$TB_Gold")
			OIDInvestorInventory = AddToggleOption("$TB_InventoryChangeswhenInvested", InventoryGV.getValueInt())
			OIDMasterTrader = AddSliderOption("$TB_MasterTrader", MasterTraderVal, "$TB_Gold")		
	endif
endEvent

Event OnOptionSelect(int option)
	If (option == OIDInsider)	
		if InsiderGV.GetValueInt() == 0
			InsiderGV.setValue(1)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_InsiderAlchemist)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_InsiderArcher)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_InsiderSmith)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_InsiderEnchant)
			ForcePageReset()
		else
			InsiderGV.setValue(0)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_InsiderAlchemist)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_InsiderArcher)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_InsiderSmith)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_InsiderEnchant)	
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
			ForcePageReset()
		else
			RandomGoldGV.setValue(0)
			RandomGold00.setValue(100)
			ForcePageReset()
		endif
	elseif (option == OIDSavePreset)
		SetTextOptionValue(option, "$TB_SavingValues")	
		InitBarterMaxVal = BarterMaxVal
		InitBarterMinVal = BarterMinVal
		CustBuyBuffVal = BuyBuffVal
		CustSellBuffVal = SellBuffVal
		PresetChoice = 5
		ForcePageReset()
	elseif (option == OIDGoldDefault)
		if VendorGoldDefaultINT == 0
			VendorGoldDefaultINT = 1
			RandomGoldGV.setValue(0)
			RandomGold00.setValue(100)
			SetOptionFlags(OIDRandomGold, OPTION_FLAG_DISABLED)
			VendorGoldDefault.setValue(0)
			VendorGoldApothecary.Revert()
			ApothecaryVal = 400
			SetSliderOptionValue(OIDApothecaryGold, ApothecaryVal, "$TB_Gold")
			SetOptionFlags(OIDApothecaryGold, OPTION_FLAG_DISABLED)
			VendorGoldBlacksmith.Revert()
			CitySmithVal = 600
			SetSliderOptionValue(OIDBlacksmithGold, CitySmithVal, "$TB_Gold")
			SetOptionFlags(OIDBlacksmithGold, OPTION_FLAG_DISABLED)
			VendorGoldBlacksmithTown.Revert()
			TownSmithVal = 400
			SetSliderOptionValue(OIDBlacksmithTownGold, TownSmithVal, "$TB_Gold")
			SetOptionFlags(OIDBlacksmithTownGold, OPTION_FLAG_DISABLED)
			VendorGoldBlacksmithOrc.Revert()
			OrcSmithVal = 250
			SetSliderOptionValue(OIDBlacksmithOrcGold, OrcSmithVal, "$TB_Gold")
			SetOptionFlags(OIDBlacksmithOrcGold, OPTION_FLAG_DISABLED)
			VendorGoldSpells.Revert()
			SpellVal = 500
			SetSliderOptionValue(OIDSpellGold, SpellVal, "$TB_Gold")
			SetOptionFlags(OIDSpellGold, OPTION_FLAG_DISABLED)
			VendorGoldMisc.Revert()
			MiscVal = 300
			SetSliderOptionValue(OIDMiscGold, MiscVal, "$TB_Gold")
			SetOptionFlags(OIDMiscGold, OPTION_FLAG_DISABLED)
			VendorGoldInn.Revert()
			InnVal = 200
			SetSliderOptionValue(OIDInnGold, InnVal, "$TB_Gold")
			SetOptionFlags(OIDInnGold, OPTION_FLAG_DISABLED)
			VendorGoldStreetVendor.Revert()
			StreetVal = 50
			SetSliderOptionValue(OIDStreetGold, StreetVal, "$TB_Gold")
			SetOptionFlags(OIDStreetGold, OPTION_FLAG_DISABLED)
			VendorGoldCaravan.Revert()
			CaravanVal = 750
			SetSliderOptionValue(OIDCaravanGold, CaravanVal, "$TB_Gold")
			SetOptionFlags(OIDCaravanGold, OPTION_FLAG_DISABLED)
			VendorGoldFenceStage00.Revert()
			Fence00Val = 1000
			SetSliderOptionValue(OIDFenceGold00, Fence00Val, "$TB_Gold")
			SetOptionFlags(OIDFenceGold00, OPTION_FLAG_DISABLED)			
			VendorGoldFenceStage01.Revert()
			Fence01Val = 500
			SetSliderOptionValue(OIDFenceGold01, Fence01Val, "$TB_Gold")
			SetOptionFlags(OIDFenceGold01, OPTION_FLAG_DISABLED)
			VendorGoldFenceStage02.Revert()
			Fence02Val = 750
			SetSliderOptionValue(OIDFenceGold02, Fence02Val, "$TB_Gold")
			SetOptionFlags(OIDFenceGold02, OPTION_FLAG_DISABLED)
			VendorGoldFenceStage03.Revert()
			Fence03Val = 750
			SetSliderOptionValue(OIDFenceGold03, Fence03Val, "$TB_Gold")
			SetOptionFlags(OIDFenceGold03, OPTION_FLAG_DISABLED)
			VendorGoldFenceStage04.Revert()
			Fence04Val = 1000
			SetSliderOptionValue(OIDFenceGold04, Fence04Val, "$TB_Gold")
			SetOptionFlags(OIDFenceGold04, OPTION_FLAG_DISABLED)
			VendorGoldDremora.Revert()
			DremoraVal = 10000
			SetSliderOptionValue(OIDDremoraGold, DremoraVal, "$TB_Gold")
			SetOptionFlags(OIDDremoraGold, OPTION_FLAG_DISABLED)		
			ForcePageReset()
		else
			VendorGoldDefaultINT = 0
			VendorGoldDefault.setValue(100)
			VendorGoldApothecary.AddForm(Gold001, 1, 400)
			VendorGoldBlacksmith.AddForm(Gold001, 1, 600)
			VendorGoldBlacksmithTown.AddForm(Gold001, 1, 400)
			VendorGoldBlacksmithOrc.AddForm(Gold001, 1, 250)
			VendorGoldSpells.AddForm(Gold001, 1, 500)
			VendorGoldMisc.AddForm(Gold001, 1, 300)
			VendorGoldInn.AddForm(Gold001, 1, 200)
			VendorGoldStreetVendor.AddForm(Gold001, 1, 50)
			VendorGoldCaravan.AddForm(Gold001, 1, 750)
			VendorGoldFenceStage00.AddForm(Gold001, 1, 1000)
			VendorGoldFenceStage01.AddForm(Gold001, 1, 500)
			VendorGoldFenceStage02.AddForm(Gold001, 1, 750)
			VendorGoldFenceStage03.AddForm(Gold001, 1, 750)
			VendorGoldFenceStage04.AddForm(Gold001, 1, 1000)
			VendorGoldDremora.AddForm(Gold001, 1, 10000)			
			VendorGoldApothecary.AddForm(KRY_RandomVendorGoldLG, 1, 4)
			VendorGoldSpells.AddForm(KRY_RandomVendorGoldLG, 1, 3)	
			VendorGoldBlacksmith.AddForm(KRY_RandomVendorGoldLG, 1, 6)
			VendorGoldBlacksmithTown.AddForm(KRY_RandomVendorGoldLG, 1, 3)
			VendorGoldBlacksmithOrc.AddForm(KRY_RandomVendorGoldLG, 1, 2)	
			VendorGoldMisc.AddForm(KRY_RandomVendorGoldLG, 1, 4)
			VendorGoldInn.AddForm(KRY_RandomVendorGoldSM, 1, 10)
			VendorGoldStreetVendor.AddForm(KRY_RandomVendorGoldSM, 1, 5)
			VendorGoldCaravan.AddForm(KRY_RandomVendorGoldLG, 1, 4)
			VendorGoldFenceStage00.AddForm(KRY_RandomVendorGoldSM, 1, 10)
			VendorGoldFenceStage01.AddForm(KRY_RandomVendorGoldLG, 1, 2)
			VendorGoldFenceStage02.AddForm(KRY_RandomVendorGoldLG, 1, 3)
			VendorGoldFenceStage03.AddForm(KRY_RandomVendorGoldLG, 1, 4)
			VendorGoldFenceStage04.AddForm(KRY_RandomVendorGoldLG, 1, 5)
			SetOptionFlags(OIDRandomGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDApothecaryGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDBlacksmithGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDBlacksmithTownGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDBlacksmithOrcGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDSpellGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDMiscGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDInnGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDStreetGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDCaravanGold, OPTION_FLAG_NONE)
			SetOptionFlags(OIDFenceGold00, OPTION_FLAG_NONE)
			SetOptionFlags(OIDFenceGold01, OPTION_FLAG_NONE)
			SetOptionFlags(OIDFenceGold02, OPTION_FLAG_NONE)
			SetOptionFlags(OIDFenceGold03, OPTION_FLAG_NONE)
			SetOptionFlags(OIDFenceGold04, OPTION_FLAG_NONE)
			SetOptionFlags(OIDDremoraGold, OPTION_FLAG_NONE)			
			ForcePageReset()
		endif	
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
			VariableGold03Val.setValue(0)
			ForcePageReset()
		else
			VariableGold03GV.setValue(0)
			VariableGold03Val.setValue(100)
			ForcePageReset()
		endif			
	elseif (option == OIDLocation)
		if LocationGV.GetValueInt() == 0
			LocationGV.setValue(1)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy10)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy15)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy20)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy25)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy30)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy35)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy40)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy45)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy50)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesSell05)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesSell10)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesSell15)
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
			SetOptionFlags(OIDSolstheimSell, OPTION_FLAG_NONE)
			SetOptionFlags(OIDSolstheimBuy, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRavenRockBuy, OPTION_FLAG_NONE)
			SetOptionFlags(OIDRavenRockSell, OPTION_FLAG_NONE)			
		else
			LocationGV.setValue(0)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy10)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy15)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy20)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy25)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy30)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy35)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy40)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy45)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesBuy50)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesSell05)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesSell10)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_CitiesSell15)
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
			SetOptionFlags(OIDSolstheimSell, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDSolstheimBuy, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRavenRockBuy, OPTION_FLAG_DISABLED)
			SetOptionFlags(OIDRavenRockSell, OPTION_FLAG_DISABLED)			
		endif
		SetToggleOptionValue(OIDLocation, LocationGV.GetValueInt())
		ForcePageReset()	
	elseif (option == OIDUseBarterRates)
		if UseBarterSettings.GetValueInt() == 0
			UseBarterSettings.setValue(1)
			ForcePageReset()
		else
			UseBarterSettings.setValue(0)
			PresetChoice = 0
			ForcePageReset()
		endif
		SetToggleOptionValue(OIDUseBarterRates, UseBarterSettings.GetValueInt())
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
		else
			DefaultRaceGV.setValue(0)
			RaceRelations.setValue(0)
		endif
		SetToggleOptionValue(OIDRaceDefault, DefaultRaceGV.GetValueInt())
		SetToggleOptionValue(OIDRaceCustom, CustomRaceGV.GetValueInt())
		ConfigureRaceRelations()
		ForcePageReset()			
	elseif (option == OIDRaceCustom)
		if CustomRaceGV.GetValueInt() == 0
			DefaultRaceGV.setValue(0)
			CustomRaceGV.setValue(1)
			RaceRelations.setValue(2)
		else
			CustomRaceGV.setValue(0)
			RaceRelations.setValue(0)
		endif
		SetToggleOptionValue(OIDRaceDefault, DefaultRaceGV.GetValueInt())
		SetToggleOptionValue(OIDRaceCustom, CustomRaceGV.GetValueInt())
		ConfigureRaceRelations()
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
	elseIf (option == OIDSolstheimBuy)
		SetSliderDialogStartValue(SolstheimBuyVal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(10, 50)
		SetSliderDialogInterval(5)
	elseIf (option == OIDSolstheimSell)
		SetSliderDialogStartValue(SolstheimSellVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 15)
		SetSliderDialogInterval(5)		
	elseIf (option == OIDRavenRockBuy)
		SetSliderDialogStartValue(RavenRockBuyVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(10, 50)
		SetSliderDialogInterval(5)
	elseIf (option == OIDRavenRockSell)
		SetSliderDialogStartValue(RavenRockSellVal)
		SetSliderDialogDefaultValue(5)
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
	elseIf (option == OIDVampire)
		SetSliderDialogStartValue(VampireVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-10, 10)
		SetSliderDialogInterval(5)
	elseIf (option == OIDOrcFriend)
		SetSliderDialogStartValue(OrcFriendVal)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(5)		
	elseIf (option == OIDHelmet)
		SetSliderDialogStartValue(HelmetVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-10, 10)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDWeapon)
		SetSliderDialogStartValue(WeaponVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-10, 10)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDJobFence)
		SetSliderDialogStartValue(JobFenceVal)
		SetSliderDialogDefaultValue(-35)
		SetSliderDialogRange(-50, 0)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDJobGeneral)
		SetSliderDialogStartValue(JobGeneralVal)
		SetSliderDialogDefaultValue(-20)
		SetSliderDialogRange(-50, 0)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDJobProducers)
		SetSliderDialogStartValue(JobProducersVal)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 50)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDJobSpecialists)
		SetSliderDialogStartValue(JobSpecialistsVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-25, 25)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDJobSpells)
		SetSliderDialogStartValue(JobSpellsVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-25, 25)
		SetSliderDialogInterval(5)	
	elseIf (option == OIDJobInns)
		SetSliderDialogStartValue(JobInnsVal)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-25, 25)
		SetSliderDialogInterval(5)			
	elseIf (option == OIDVendorRespawn)
		SetSliderDialogStartValue(VendorRespawnGlobal.GetValue())
		SetSliderDialogDefaultValue(5.0)
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
		SetSliderDialogRange(10.0, 2000.0)
		SetSliderDialogInterval(10.0)
	elseIf (option == OIDStreetGold)
		SetSliderDialogStartValue(StreetVal)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(10.0, 1500.0)
		SetSliderDialogInterval(10.0)
	elseIf (option == OIDCaravanGold)
		SetSliderDialogStartValue(CaravanVal)
		SetSliderDialogDefaultValue(750.0)
		SetSliderDialogRange(50.0, 2500.0)
		SetSliderDialogInterval(25.0)
	elseIf (option == OIDFenceGold00)
		SetSliderDialogStartValue(Fence00Val)
		SetSliderDialogDefaultValue(1000.0)
		SetSliderDialogRange(50.0, 2500.0)
		SetSliderDialogInterval(50.0)	
	elseIf (option == OIDFenceGold01)
		SetSliderDialogStartValue(Fence01Val)
		SetSliderDialogDefaultValue(500.0)
		SetSliderDialogRange(50.0, 2500.0)
		SetSliderDialogInterval(50.0)			
	elseIf (option == OIDFenceGold02)
		SetSliderDialogStartValue(Fence02Val)
		SetSliderDialogDefaultValue(750.0)
		SetSliderDialogRange(50.0, 2500.0)
		SetSliderDialogInterval(50.0)	
	elseIf (option == OIDFenceGold03)
		SetSliderDialogStartValue(Fence03Val)
		SetSliderDialogDefaultValue(750.0)
		SetSliderDialogRange(50.0, 2500.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDFenceGold04)
		SetSliderDialogStartValue(Fence04Val)
		SetSliderDialogDefaultValue(1000.0)
		SetSliderDialogRange(50.0, 2500.0)
		SetSliderDialogInterval(50.0)
	elseIf (option == OIDDremoraGold)
		SetSliderDialogStartValue(DremoraVal)
		SetSliderDialogDefaultValue(10000.0)
		SetSliderDialogRange(50.0, 10000.0)
		SetSliderDialogInterval(50.0)		
	endif
endEvent

event OnOptionSliderAccept(int option, float value)
	if (option == OIDThane)
		ThaneVal = value
		SetSliderOptionValue(OIDThane, ThaneVal, "$TB_%BetterPrices")
		ThaneStatus.Setvalue(ThaneVal)
		if ThaneVal == 5
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Thane5)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Thane10)
		elseif ThaneVal == 10	
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Thane5)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Thane10)
		else	
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Thane5)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Thane10)
		endif
	elseIf (option == OIDFaction)
		FactionVal = value
		SetSliderOptionValue(OIDFaction, FactionVal, "$TB_%BetterPrices")
		FactionMember.Setvalue(FactionVal)	
		if FactionVal == 5
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Factions5)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions10)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions15)
		elseif FactionVal == 10
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions5)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Factions10)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions15)
		elseif FactionVal == 15
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions5)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions10)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Factions15)
		else
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions5)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions10)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions15)
		endif
	elseIf (option == OIDFactionLead)
		FactionLeadVal = value
		SetSliderOptionValue(OIDFactionLead, FactionLeadVal, "$TB_%BetterPrices")
		FactionLead.Setvalue(FactionLeadVal)
		if FactionLeadVal == 5
			Game.GetPlayer().AddPerk(KRY_TradingVariables_FactionLead5)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_FactionLead10)
		elseif FactionLeadVal == 10
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_FactionLead5)
			Game.GetPlayer().AddPerk(KRY_TradingVariables_FactionLead10)
		else
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_FactionLead5)
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_FactionLead10)
		endif		
	elseif (option == OIDFriend)
		FriendVal = value
		SetSliderOptionValue(OIDFriend, FriendVal, "$TB_%BetterPrices")
		RelFriend.Setvalue(FriendVal)
		if FriendVal > 0
			Game.GetPlayer().AddPerk(KRY_TradingVariables_RelationshipFriend)
		else	
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_RelationshipFriend)
		endif		
	elseIf (option == OIDAlly)
		AllyVal = value
		SetSliderOptionValue(OIDAlly, AllyVal, "$TB_%BetterPrices")
		RelAlly.Setvalue(AllyVal)
		if AllyVal > 0
			Game.GetPlayer().AddPerk(KRY_TradingVariables_RelationshipAlly)	
		else
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_RelationshipAlly)
		endif		
	elseIf (option == OIDLover)
		LoverVal = value
		SetSliderOptionValue(OIDLover, LoverVal, "$TB_%BetterPrices")
		RelLover.Setvalue(LoverVal)
		if LoverVal > 0
			Game.GetPlayer().AddPerk(KRY_TradingVariables_RelationshipLover)
		else	
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_RelationshipLover)
		endif		
	elseIf (option == OIDSolitudeBuy)
		SolitudeBuyVal = value
		SetSliderOptionValue(OIDSolitudeBuy, SolitudeBuyVal, "$TB_%Higher")
		LocSolitudeBuy.Setvalue(SolitudeBuyVal)
	elseIf (option == OIDSolitudeSell)
		SolitudeSellVal = value
		SetSliderOptionValue(OIDSolitudeSell, SolitudeSellVal, "$TB_%Higher")
		LocSolitudeSell.Setvalue(SolitudeSellVal)
	elseIf (option == OIDMarkarthBuy)
		MarkarthBuyVal = value
		SetSliderOptionValue(OIDMarkarthBuy, MarkarthBuyVal, "$TB_%Higher")
		LocMarkarthBuy.Setvalue(MarkarthBuyVal)
	elseIf (option == OIDMarkarthSell)
		MarkarthSellVal = value
		SetSliderOptionValue(OIDMarkarthSell, MarkarthSellVal, "$TB_%Higher")
		LocMarkarthSell.Setvalue(MarkarthSellVal)
	elseIf (option == OIDWindhelmBuy)
		WindhelmBuyVal = value
		SetSliderOptionValue(OIDWindhelmBuy, WindhelmBuyVal, "$TB_%Higher")
		LocWindhelmBuy.Setvalue(WindhelmBuyVal)
	elseIf (option == OIDWindhelmSell)
		WindhelmSellVal = value
		SetSliderOptionValue(OIDWindhelmSell, WindhelmSellVal, "$TB_%Higher")
		LocWindhelmSell.Setvalue(WindhelmSellVal)
	elseIf (option == OIDRiftenBuy)
		RiftenBuyVal = value
		SetSliderOptionValue(OIDRiftenBuy, RiftenBuyVal, "$TB_%Higher")
		LocRiftenBuy.Setvalue(RiftenBuyVal)
	elseIf (option == OIDRiftenSell)
		RiftenSellVal = value
		SetSliderOptionValue(OIDRiftenSell, RiftenSellVal, "$TB_%Higher")
		LocRiftenSell.Setvalue(RiftenSellVal)
	elseIf (option == OIDWhiterunBuy)
		WhiterunBuyVal = value
		SetSliderOptionValue(OIDWhiterunBuy, WhiterunBuyVal, "$TB_%Higher")
		LocWhiterunBuy.Setvalue(WhiterunBuyVal)
	elseIf (option == OIDWhiterunSell)
		WhiterunSellVal = value
		SetSliderOptionValue(OIDWhiterunSell, WhiterunSellVal, "$TB_%Higher")
		LocWhiterunSell.Setvalue(WhiterunSellVal)
	elseIf (option == OIDSolstheimBuy)
		SolstheimBuyVal = value
		SetSliderOptionValue(OIDSolstheimBuy, SolstheimBuyVal, "$TB_%Higher")
		LocSolstheimBuy.Setvalue(SolstheimBuyVal)
	elseIf (option == OIDSolstheimSell)
		SolstheimSellVal = value
		SetSliderOptionValue(OIDSolstheimSell, SolstheimSellVal, "$TB_%Higher")
		LocSolstheimSell.Setvalue(SolstheimSellVal)	
	elseIf (option == OIDRavenRockBuy)
		RavenRockBuyVal = value
		SetSliderOptionValue(OIDRavenRockBuy, RavenRockBuyVal, "$TB_%Higher")
		LocRavenRockBuy.Setvalue(RavenRockBuyVal)
	elseIf (option == OIDRavenRockSell)
		RavenRockSellVal = value
		SetSliderOptionValue(OIDRavenRockSell, RavenRockSellVal, "$TB_%Higher")
		LocRavenRockSell.Setvalue(RavenRockSellVal)			
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
		if BuyBuffVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_BuyBuff)
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_BuyBuff)
		endif		
	elseIf (option == OIDSellBuff)
		SellBuffVal = value
		SetSliderOptionValue(OIDSellBuff, SellBuffVal, "{0}%")
		SellBuffGlobal.Setvalue(SellBuffVal)
		if SellBuffVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_SellBuff)
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_SellBuff)
		endif
	elseIf (option == OIDRaceAltmer)
		AltmerVal = value
		SetSliderOptionValue(OIDRaceAltmer, AltmerVal, "$TB_%Prices")
		RaceAltmer.Setvalue(AltmerVal)	
	elseIf (option == OIDRaceArgonian)
		ArgonianVal = value
		SetSliderOptionValue(OIDRaceArgonian, ArgonianVal, "$TB_%Prices")
		RaceArgonian.Setvalue(ArgonianVal)			
	elseIf (option == OIDRaceBosmer)
		BosmerVal = value
		SetSliderOptionValue(OIDRaceBosmer, BosmerVal, "$TB_%Prices")
		RaceBosmer.Setvalue(BosmerVal)		
	elseIf (option == OIDRaceBreton)
		BretonVal = value
		SetSliderOptionValue(OIDRaceBreton, BretonVal, "$TB_%Prices")
		RaceBreton.Setvalue(BretonVal)			
	elseIf (option == OIDRaceDunmer)
		DunmerVal = value
		SetSliderOptionValue(OIDRaceDunmer, DunmerVal, "$TB_%Prices")
		RaceDunmer.Setvalue(DunmerVal)			
	elseIf (option == OIDRaceImperial)
		ImperialVal = value
		SetSliderOptionValue(OIDRaceImperial, ImperialVal, "$TB_%Prices")
		RaceBosmer.Setvalue(ImperialVal)			
	elseIf (option == OIDRaceKhajiit)
		KhajiitVal = value
		SetSliderOptionValue(OIDRaceKhajiit, KhajiitVal, "$TB_%Prices")
		RaceKhajiit.Setvalue(KhajiitVal)				
	elseIf (option == OIDRaceNord)
		NordVal = value
		SetSliderOptionValue(OIDRaceNord, NordVal, "$TB_%Prices")
		RaceNord.Setvalue(NordVal)				
	elseIf (option == OIDRaceNordStormcloak)
		NordStormVal = value
		SetSliderOptionValue(OIDRaceNordStormcloak, NordStormVal, "$TB_%Prices")
		RaceNordStorm.Setvalue(NordStormVal)				
	elseIf (option == OIDRaceOrc)
		OrcVal = value
		SetSliderOptionValue(OIDRaceOrc, OrcVal, "$TB_%Prices")
		RaceOrc.Setvalue(OrcVal)			
	elseIf (option == OIDRaceRedguard)
		RedguardVal = value
		SetSliderOptionValue(OIDRaceRedguard, RedguardVal, "$TB_%Prices")
		RaceRedguard.Setvalue(RedguardVal)	
	elseIf (option == OIDHelmet)
		HelmetVal = value
		SetSliderOptionValue(OIDHelmet, HelmetVal, "$TB_%Prices")
		HelmetGV.Setvalue(HelmetVal)
		if HelmetVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Helmet)	
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Helmet)
		endif
	elseIf (option == OIDNaked)
		NakedVal = value
		SetSliderOptionValue(OIDNaked, NakedVal, "$TB_%Prices")
		NakedGV.Setvalue(NakedVal)
		if NakedVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Naked)	
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Naked)
		endif		
	elseIf (option == OIDVampire)
		VampireVal = value
		SetSliderOptionValue(OIDVampire, VampireVal, "$TB_%Prices")
		VampireGV.Setvalue(VampireVal)
		if VampireVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Vampire)	
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Vampire)
		endif	
	elseIf (option == OIDOrcFriend)
		OrcFriendVal = value
		SetSliderOptionValue(OIDOrcFriend, OrcFriendVal, "$TB_%Prices")
		OrcFriendGV.Setvalue(OrcFriendVal)
		if OrcFriendVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_OrcFriend)	
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_OrcFriend)
		endif		
	elseIf (option == OIDWeapon)
		WeaponVal = value
		SetSliderOptionValue(OIDWeapon, WeaponVal, "$TB_%Prices")
		WeaponGV.Setvalue(WeaponVal)
		if WeaponVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_Weapons)	
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_Weapons)
		endif
	elseIf (option == OIDJobFence)
		JobFenceVal = value
		SetSliderOptionValue(OIDJobFence, JobFenceVal, "$TB_%Prices")
		JobFenceGV.Setvalue(JobFenceVal)	
		if JobFenceVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobFence)	
		else
			Game.GetPlayer().AddPerk(KRY_TradingVariables_JobFence)	
		endif
	elseIf (option == OIDJobGeneral)
		JobGeneralVal = value
		SetSliderOptionValue(OIDJobGeneral, JobGeneralVal, "$TB_%Prices")
		JobGeneralGV.Setvalue(JobGeneralVal)	
		if JobGeneralVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobGeneral)	
		else
			Game.GetPlayer().AddPerk(KRY_TradingVariables_JobGeneral)	
		endif	
	elseIf (option == OIDJobProducers)
		JobProducersVal = value
		SetSliderOptionValue(OIDJobProducers, JobProducersVal, "$TB_%Prices")
		JobProducersGV.Setvalue(JobProducersVal)	
		if JobProducersVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobProducers)	
		else
			Game.GetPlayer().AddPerk(KRY_TradingVariables_JobProducers)	
		endif	
	elseIf (option == OIDJobSpecialists)
		JobSpecialistsVal = value
		SetSliderOptionValue(OIDJobSpecialists, JobSpecialistsVal, "$TB_%Prices")
		JobSpecialistsGV.Setvalue(JobSpecialistsVal)	
		if JobSpecialistsVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobSpecialists)	
		else
			Game.GetPlayer().AddPerk(KRY_TradingVariables_JobSpecialists)	
		endif
	elseIf (option == OIDJobSpells)
		JobSpellsVal = value
		SetSliderOptionValue(OIDJobSpells, JobSpellsVal, "$TB_%Prices")
		JobSpellsGV.Setvalue(JobSpellsVal)	
		if JobSpellsVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobSpells)	
		else
			Game.GetPlayer().AddPerk(KRY_TradingVariables_JobSpells)	
		endif
	elseIf (option == OIDJobInns)
		JobInnsVal = value
		SetSliderOptionValue(OIDJobInns, JobInnsVal, "$TB_%Prices")
		JobInnsGV.Setvalue(JobInnsVal)	
		if JobInnsVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobInns)	
		else
			Game.GetPlayer().AddPerk(KRY_TradingVariables_JobInns)	
		endif		
	elseIf (option == OIDVendorRespawn)
		RespawnVendorVal = value as int
		SetSliderOptionValue(OIDVendorRespawn, RespawnVendorVal, "$TB_Days")
		VendorRespawnGlobal.Setvalue(RespawnVendorVal)
		Game.SetGameSettingInt("iDaysToRespawnVendor", RespawnVendorVal)
	elseIf (option == OIDInvestorGold)
		InvestorVal = value
		SetSliderOptionValue(OIDInvestorGold, InvestorVal, "$TB_Gold")
		InvestorAmount.Setvalue(InvestorVal)
		If Game.getPlayer().HasPerk(InvestorPerk)
			InvestorQuest.Stop()
			InvestorQuest.Start()	
		Endif
	elseIf (option == OIDInvestedGoldIncrease)
		PerkInvestorStoreUpgrade.Revert()
		InvestedGoldVal = value
		SetSliderOptionValue(OIDInvestedGoldIncrease, InvestedGoldVal, "$TB_Gold")
		GoldtoAdd = (InvestedGoldVal) as int
		PerkInvestorStoreUpgrade.AddForm(Gold001, 1, GoldtoAdd)
	elseIf (option == OIDMasterTrader)
		PerkMasterTraderGold.Revert()
		MasterTraderVal = value as int
		SetSliderOptionValue(OIDMasterTrader, MasterTraderVal, "$TB_Gold")
		GoldtoAdd = MasterTraderVal as int
		PerkMasterTraderGold.AddForm(Gold001, 1, GoldtoAdd)
	elseIf (option == OIDApothecaryGold)
		VendorGoldApothecary.Revert()
		ApothecaryVal = value as int
		SetSliderOptionValue(OIDApothecaryGold, ApothecaryVal, "$TB_Gold")
		GoldtoAdd = (ApothecaryVal) as int
		VendorGoldApothecary.AddForm(Gold001, 1, GoldtoAdd)	
		VendorGoldApothecary.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDBlacksmithGold)
		VendorGoldBlacksmith.Revert()
		CitySmithVal = value as int
		SetSliderOptionValue(OIDBlacksmithGold, CitySmithVal, "$TB_Gold")
		GoldtoAdd = (CitySmithVal) as int
		VendorGoldBlacksmith.AddForm(Gold001, 1, GoldtoAdd)
		VendorGoldBlacksmith.AddForm(KRY_RandomVendorGoldLG, 1, 6)
	elseIf (option == OIDBlacksmithTownGold)
		VendorGoldBlacksmithTown.Revert()
		TownSmithVal = value as int
		SetSliderOptionValue(OIDBlacksmithTownGold, TownSmithVal, "$TB_Gold")
		GoldtoAdd = (TownSmithVal) as int
		VendorGoldBlacksmithTown.AddForm(Gold001, 1, GoldtoAdd)
		VendorGoldBlacksmithTown.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDBlacksmithOrcGold)
		VendorGoldBlacksmithOrc.Revert()
		OrcSmithVal = value as int
		SetSliderOptionValue(OIDBlacksmithOrcGold, OrcSmithVal, "$TB_Gold")
		GoldtoAdd = (OrcSmithVal) as int
		VendorGoldBlacksmithOrc.AddForm(Gold001, 1, GoldtoAdd)
		VendorGoldBlacksmithOrc.AddForm(KRY_RandomVendorGoldLG, 1, 2)	
	elseIf (option == OIDSpellGold)
		VendorGoldSpells.Revert()
		SpellVal = value as int
		SetSliderOptionValue(OIDSpellGold, SpellVal, "$TB_Gold")
		GoldtoAdd = (SpellVal) as int
		VendorGoldSpells.AddForm(Gold001, 1, GoldtoAdd)	
		VendorGoldSpells.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDMiscGold)
		VendorGoldMisc.Revert()
		MiscVal = value as int
		SetSliderOptionValue(OIDMiscGold, MiscVal, "$TB_Gold")
		GoldtoAdd = (MiscVal) as int
		VendorGoldMisc.AddForm(Gold001, 1, GoldtoAdd)		
		VendorGoldMisc.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDInnGold)
		VendorGoldInn.Revert()
		InnVal = value as int
		SetSliderOptionValue(OIDInnGold, InnVal, "$TB_Gold")
		GoldtoAdd = (InnVal) as int
		VendorGoldInn.AddForm(Gold001, 1, GoldtoAdd)	
		VendorGoldInn.AddForm(KRY_RandomVendorGoldSM, 1, 10)
	elseIf (option == OIDStreetGold)
		VendorGoldStreetVendor.Revert()
		StreetVal = value as int
		SetSliderOptionValue(OIDStreetGold, StreetVal, "$TB_Gold")
		GoldtoAdd = (StreetVal) as int
		VendorGoldStreetVendor.AddForm(Gold001, 1, GoldtoAdd)	
		VendorGoldStreetVendor.AddForm(KRY_RandomVendorGoldSM, 1, 5)	
	elseIf (option == OIDCaravanGold)
		VendorGoldCaravan.Revert()
		CaravanVal = value as int
		SetSliderOptionValue(OIDCaravanGold, CaravanVal, "$TB_Gold")
		GoldtoAdd = (CaravanVal) as int
		VendorGoldCaravan.AddForm(Gold001, 1, GoldtoAdd)		
		VendorGoldCaravan.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDFenceGold00)
		VendorGoldFenceStage00.Revert()
		Fence00Val = value as int
		SetSliderOptionValue(OIDFenceGold00, Fence00Val, "$TB_Gold")
		GoldtoAdd = (Fence00Val) as int
		VendorGoldFenceStage00.AddForm(Gold001, 1, GoldtoAdd)		
		VendorGoldFenceStage00.AddForm(KRY_RandomVendorGoldSM, 1, 10)
	elseIf (option == OIDFenceGold01)
		VendorGoldFenceStage01.Revert()
		Fence01Val = value as int
		SetSliderOptionValue(OIDFenceGold01, Fence01Val, "$TB_Gold")
		GoldtoAdd = (Fence01Val) as int
		VendorGoldFenceStage01.AddForm(Gold001, 1, GoldtoAdd)		
		VendorGoldFenceStage01.AddForm(KRY_RandomVendorGoldLG, 1, 2)	
	elseIf (option == OIDFenceGold02)
		VendorGoldFenceStage02.Revert()
		Fence02Val = value as int
		SetSliderOptionValue(OIDFenceGold02, Fence02Val, "$TB_Gold")
		GoldtoAdd = (Fence02Val) as int
		VendorGoldFenceStage02.AddForm(Gold001, 1, GoldtoAdd)		
		VendorGoldFenceStage02.AddForm(KRY_RandomVendorGoldLG, 1, 3)		
	elseIf (option == OIDFenceGold03)
		VendorGoldFenceStage03.Revert()
		Fence03Val = value as int
		SetSliderOptionValue(OIDFenceGold03, Fence03Val, "$TB_Gold")
		GoldtoAdd = (Fence03Val) as int
		VendorGoldFenceStage03.AddForm(Gold001, 1, GoldtoAdd)		
		VendorGoldFenceStage03.AddForm(KRY_RandomVendorGoldLG, 1, 4)		
	elseIf (option == OIDFenceGold04)
		VendorGoldFenceStage04.Revert()
		Fence04Val = value as int
		SetSliderOptionValue(OIDFenceGold04, Fence04Val, "$TB_Gold")
		GoldtoAdd = (Fence04Val) as int
		VendorGoldFenceStage04.AddForm(Gold001, 1, GoldtoAdd)		
		VendorGoldFenceStage04.AddForm(KRY_RandomVendorGoldLG, 1, 5)	
	elseIf (option == OIDDremoraGold)
		VendorGoldDremora.Revert()
		DremoraVal = value as int
		SetSliderOptionValue(OIDDremoraGold, DremoraVal, "$TB_Gold")
		GoldtoAdd = (DremoraVal) as int
		VendorGoldDremora.AddForm(Gold001, 1, GoldtoAdd)				
	endIf
endEvent

event OnOptionMenuOpen(int option)		
	if option == OIDPresetRates
		SetMenuDialogOptions(PresetList)
		SetMenuDialogStartIndex(PresetChoice)
		SetMenuDialogDefaultIndex(0)
	endif
endEvent

event OnOptionMenuAccept(int option, int index)	
	if option == OIDPresetRates
		PresetChoice = index
		SetMenuOptionValue(OIDPresetRates, PresetList[PresetChoice])
		if PresetChoice == 0			;Vanilla
			BarterMaxVal = 4.0
			BarterMaxGlobal.Setvalue(BarterMaxVal)
			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
			BarterMinVal = 3.0
			BarterMinGlobal.Setvalue(BarterMinVal)
			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
			BuyBuffVal = 0
			BuyBuffGlobal.Setvalue(BuyBuffVal)
			SellBuffVal = 0
			SellBuffGlobal.Setvalue(SellBuffVal)
		elseif PresetChoice == 1		;Easy
			BarterMaxVal = 5.0
			BarterMaxGlobal.Setvalue(BarterMaxVal)
			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
			BarterMinVal = 3.5
			BarterMinGlobal.Setvalue(BarterMinVal)
			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
			BuyBuffVal = -40
			BuyBuffGlobal.Setvalue(BuyBuffVal)
			SellBuffVal = 0
			SellBuffGlobal.Setvalue(SellBuffVal)
		elseif PresetChoice == 2		;Medium
			BarterMaxVal = 6.5
			BarterMaxGlobal.Setvalue(BarterMaxVal)
			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
			BarterMinVal = 4.0
			BarterMinGlobal.Setvalue(BarterMinVal)
			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
			BuyBuffVal = -50
			BuyBuffGlobal.Setvalue(BuyBuffVal)
			SellBuffVal = 0
			SellBuffGlobal.Setvalue(SellBuffVal)
		elseif PresetChoice == 3		;Difficult
			BarterMaxVal = 10.0
			BarterMaxGlobal.Setvalue(BarterMaxVal)
			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
			BarterMinVal = 6.5
			BarterMinGlobal.Setvalue(BarterMinVal)
			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
			BuyBuffVal = -60
			BuyBuffGlobal.Setvalue(BuyBuffVal)
			SellBuffVal = 0
			SellBuffGlobal.Setvalue(SellBuffVal)
		elseif PresetChoice == 4		;Hardcore
			BarterMaxVal = 15.0
			BarterMaxGlobal.Setvalue(BarterMaxVal)
			Game.SetGameSettingFloat("fBarterMax", BarterMaxVal)
			BarterMinVal = 10.0
			BarterMinGlobal.Setvalue(BarterMinVal)
			Game.SetGameSettingFloat("fBarterMin", BarterMinVal)
			BuyBuffVal = -70
			BuyBuffGlobal.Setvalue(BuyBuffVal)
			SellBuffVal = 0
			SellBuffGlobal.Setvalue(SellBuffVal)
		elseif PresetChoice == 5		;Custom
			BarterMaxGlobal.Setvalue(InitBarterMaxVal)
			Game.SetGameSettingFloat("fBarterMax", InitBarterMaxVal)
			BarterMinGlobal.Setvalue(InitBarterMinVal)
			Game.SetGameSettingFloat("fBarterMin", InitBarterMinVal)
			BuyBuffVal = CustBuyBuffVal
			BuyBuffGlobal.Setvalue(CustBuyBuffVal)
			SellBuffVal = CustSellBuffVal
			SellBuffGlobal.Setvalue(CustSellBuffVal)	
		endif
		if BuyBuffVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_BuyBuff)
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_BuyBuff)
		endif	
		if SellBuffVal == 0
			Game.GetPlayer().RemovePerk(KRY_TradingVariables_SellBuff)
		else	
			Game.GetPlayer().AddPerk(KRY_TradingVariables_SellBuff)
		endif		
		ForcePageReset()
	endif
endEvent

Event OnOptionDefault(int option)
	if (option == OIDThane)
		ThaneVal = 5
		SetSliderOptionValue(OIDThane, ThaneVal, "$TB_%BetterPrices")	
		ThaneStatus.Setvalue(ThaneVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_Thane5)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_Thane10)
	elseIf (option == OIDFaction)
		FactionVal = 10
		SetSliderOptionValue(OIDFaction, FactionVal, "$TB_%BetterPrices")
		FactionMember.Setvalue(FactionVal)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions5)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_Factions10)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_Factions15)
	elseIf (option == OIDFactionLead)
		FactionLeadVal = 5
		SetSliderOptionValue(OIDFactionLead, FactionLeadVal, "$TB_%BetterPrices")
		FactionLead.Setvalue(FactionLeadVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_FactionLead5)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_FactionLead10)
	elseif (option == OIDFriend)
		FriendVal = 5
		SetSliderOptionValue(OIDFriend, FriendVal, "$TB_%BetterPrices")	
		RelFriend.Setvalue(FriendVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_RelationshipFriend)
	elseIf (option == OIDAlly)
		AllyVal = 10
		SetSliderOptionValue(OIDAlly, AllyVal, "$TB_%BetterPrices")
		RelAlly.Setvalue(AllyVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_RelationshipAlly)
	elseIf (option == OIDLover)
		LoverVal = 30
		SetSliderOptionValue(OIDLover, LoverVal, "$TB_%BetterPrices")
		RelLover.Setvalue(LoverVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_RelationshipLover)
	elseIf (option == OIDLocation)
		LocationGV.Setvalue(1)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy10)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy15)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy20)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy25)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy30)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy35)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy40)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy45)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesBuy50)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesSell05)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesSell10)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_CitiesSell15)
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
		SetOptionFlags(OIDSolstheimBuy, OPTION_FLAG_NONE)
		SetOptionFlags(OIDSolstheimSell, OPTION_FLAG_NONE)		
		SetOptionFlags(OIDRavenRockBuy, OPTION_FLAG_NONE)
		SetOptionFlags(OIDRavenRockSell, OPTION_FLAG_NONE)	
	elseIf (option == OIDSolitudeBuy)
		SolitudeBuyVal = 35
		SetSliderOptionValue(OIDSolitudeBuy, SolitudeBuyVal, "$TB_%Higher")
		LocSolitudeBuy.Setvalue(SolitudeBuyVal)
	elseIf (option == OIDSolitudeSell)
		SolitudeSellVal = 10
		SetSliderOptionValue(OIDSolitudeSell, SolitudeSellVal, "$TB_%Higher")
		LocSolitudeSell.Setvalue(SolitudeSellVal)
	elseIf (option == OIDMarkarthBuy)
		MarkarthBuyVal = 30
		SetSliderOptionValue(OIDMarkarthBuy, MarkarthBuyVal, "$TB_%Higher")
		LocMarkarthBuy.Setvalue(MarkarthBuyVal)
	elseIf (option == OIDMarkarthSell)
		MarkarthSellVal = 5
		SetSliderOptionValue(OIDMarkarthSell, MarkarthSellVal, "$TB_%Higher")
		LocMarkarthSell.Setvalue(MarkarthSellVal)
	elseIf (option == OIDWindhelmBuy)
		WindhelmBuyVal = 25
		SetSliderOptionValue(OIDWindhelmBuy, WindhelmBuyVal, "$TB_%Higher")
		LocWindhelmBuy.Setvalue(WindhelmBuyVal)
	elseIf (option == OIDWindhelmSell)
		WindhelmSellVal = 10
		SetSliderOptionValue(OIDWindhelmSell, WindhelmSellVal, "$TB_%Higher")
		LocWindhelmSell.Setvalue(WindhelmSellVal)
	elseIf (option == OIDRiftenBuy)
		RiftenBuyVal = 20
		SetSliderOptionValue(OIDRiftenBuy, RiftenBuyVal, "$TB_%Higher")
		LocRiftenBuy.Setvalue(RiftenBuyVal)
	elseIf (option == OIDRiftenSell)
		RiftenSellVal = 5
		SetSliderOptionValue(OIDRiftenSell, RiftenSellVal, "$TB_%Higher")
		LocRiftenSell.Setvalue(RiftenSellVal)
	elseIf (option == OIDWhiterunBuy)
		WhiterunBuyVal = 15
		SetSliderOptionValue(OIDWhiterunBuy, WhiterunBuyVal, "$TB_%Higher")
		LocWhiterunBuy.Setvalue(WhiterunBuyVal)
	elseIf (option == OIDWhiterunSell)
		WhiterunSellVal = 0
		SetSliderOptionValue(OIDWhiterunSell, WhiterunSellVal, "$TB_%Higher")
		LocWhiterunSell.Setvalue(WhiterunSellVal)
	elseIf (option == OIDSolstheimBuy)
		SolstheimBuyVal = 25
		SetSliderOptionValue(OIDSolstheimBuy, SolstheimBuyVal, "$TB_%Higher")
		LocSolstheimBuy.Setvalue(SolstheimBuyVal)
	elseIf (option == OIDSolstheimSell)
		SolstheimSellVal = 0
		SetSliderOptionValue(OIDSolstheimSell, SolstheimSellVal, "$TB_%Higher")
		LocSolstheimSell.Setvalue(SolstheimSellVal)	
	elseIf (option == OIDRavenRockBuy)
		RavenRockBuyVal = 5
		SetSliderOptionValue(OIDRavenRockBuy, RavenRockBuyVal, "$TB_%Higher")
		LocRavenRockBuy.Setvalue(RavenRockBuyVal)
	elseIf (option == OIDRavenRockSell)
		RavenRockSellVal = 5
		SetSliderOptionValue(OIDRavenRockSell, RavenRockSellVal, "$TB_%Higher")
		LocRavenRockSell.Setvalue(RavenRockSellVal)		
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
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_BuyBuff)
	elseIf (option == OIDSellBuff)
		SellBuffVal = 0
		SetSliderOptionValue(OIDSellBuff, SellBuffVal, "{0}%")
		SellBuffGlobal.Setvalue(SellBuffVal)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_SellBuff)	
	elseIf (option == OIDHelmet)
		HelmetVal = 0.0
		SetSliderOptionValue(OIDHelmet, HelmetVal, "$TB_%Prices")
		HelmetGV.Setvalue(HelmetVal)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_Helmet)
	elseIf (option == OIDNaked)
		NakedVal = -90.0
		SetSliderOptionValue(OIDNaked, NakedVal, "$TB_%Prices")
		NakedGV.Setvalue(NakedVal)	
		Game.GetPlayer().AddPerk(KRY_TradingVariables_Naked)
	elseIf (option == OIDVampire)
		VampireVal = 0.0
		SetSliderOptionValue(OIDVampire, VampireVal, "$TB_%Prices")
		VampireGV.Setvalue(VampireVal)	
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_Vampire)	
	elseIf (option == OIDOrcFriend)
		OrcFriendVal = 5.0
		SetSliderOptionValue(OIDOrcFriend, OrcFriendVal, "$TB_%Prices")
		OrcFriendGV.Setvalue(OrcFriendVal)	
		Game.GetPlayer().AddPerk(KRY_TradingVariables_OrcFriend)		
	elseIf (option == OIDWeapon)
		WeaponVal = 0.0
		SetSliderOptionValue(OIDWeapon, WeaponVal, "$TB_%Prices")
		WeaponGV.Setvalue(WeaponVal)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_Weapons)
	elseIf (option == OIDJobFence)
		JobFenceVal = -35.0
		SetSliderOptionValue(OIDJobFence, JobFenceVal, "$TB_%Prices")
		JobFenceGV.Setvalue(JobFenceVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_JobFence)
	elseIf (option == OIDJobGeneral)
		JobGeneralVal = -20.0
		SetSliderOptionValue(OIDJobGeneral, JobGeneralVal, "$TB_%Prices")
		JobGeneralGV.Setvalue(JobGeneralVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_JobGeneral)	
	elseIf (option == OIDJobProducers)
		JobProducersVal = 30.0
		SetSliderOptionValue(OIDJobProducers, JobProducersVal, "$TB_%Prices")
		JobProducersGV.Setvalue(JobProducersVal)
		Game.GetPlayer().AddPerk(KRY_TradingVariables_JobProducers)	
	elseIf (option == OIDJobSpecialists)
		JobSpecialistsVal = 0.0
		SetSliderOptionValue(OIDJobSpecialists, JobSpecialistsVal, "$TB_%Prices")
		JobSpecialistsGV.Setvalue(JobSpecialistsVal)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobSpecialists)
	elseIf (option == OIDJobSpells)
		JobSpellsVal = 0.0
		SetSliderOptionValue(OIDJobSpells, JobSpellsVal, "$TB_%Prices")
		JobSpellsGV.Setvalue(JobSpellsVal)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobSpells)	
	elseIf (option == OIDJobInns)
		JobInnsVal = 0.0
		SetSliderOptionValue(OIDJobInns, JobInnsVal, "$TB_%Prices")
		JobInnsGV.Setvalue(JobInnsVal)
		Game.GetPlayer().RemovePerk(KRY_TradingVariables_JobInns)			
	elseIf (option == OIDVendorRespawn)
		RespawnVendorVal = 5
		SetSliderOptionValue(OIDVendorRespawn, RespawnVendorVal, "$TB_Days")
		VendorRespawnGlobal.Setvalue(RespawnVendorVal)
		Game.SetGameSettingInt("iDaysToRespawnVendor", 5)
	elseIf (option == OIDInvestorGold)
		InvestorVal = 500
		SetSliderOptionValue(OIDInvestorGold, InvestorVal, "$TB_Gold")
		InvestorAmount.Setvalue(InvestorVal)
		If Game.getplayer().hasperk(InvestorPerk)
			InvestorQuest.Stop()
			InvestorQuest.Start()
		endif	
	elseIf (option == OIDInvestedGoldIncrease)
		PerkInvestorStoreUpgrade.Revert()
		InvestedGoldVal = 1500
		SetSliderOptionValue(OIDInvestedGoldIncrease, InvestedGoldVal, "$TB_Gold")
		PerkInvestorStoreUpgrade.AddForm(Gold001, 1, 1500)
	elseIf (option == OIDMasterTrader)
		PerkMasterTraderGold.Revert()
		MasterTraderVal = 3000
		SetSliderOptionValue(OIDMasterTrader, MasterTraderVal, "$TB_Gold")
		PerkMasterTraderGold.AddForm(Gold001, 1, 3000)
	elseIf (option == OIDApothecaryGold)
		VendorGoldApothecary.Revert()
		ApothecaryVal = 400
		SetSliderOptionValue(OIDApothecaryGold, ApothecaryVal, "$TB_Gold")
		VendorGoldApothecary.AddForm(Gold001, 1, 400)
		VendorGoldApothecary.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDBlacksmithGold)
		VendorGoldBlacksmith.Revert()
		CitySmithVal = 600
		SetSliderOptionValue(OIDBlacksmithGold, CitySmithVal, "$TB_Gold")
		VendorGoldBlacksmith.AddForm(Gold001, 1, 600)
		VendorGoldBlacksmith.AddForm(KRY_RandomVendorGoldLG, 1, 6)
	elseIf (option == OIDBlacksmithTownGold)
		VendorGoldBlacksmithTown.Revert()
		TownSmithVal = 400
		SetSliderOptionValue(OIDBlacksmithTownGold, TownSmithVal, "$TB_Gold")
		VendorGoldBlacksmithTown.AddForm(Gold001, 1, 400)
		VendorGoldBlacksmithTown.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDBlacksmithOrcGold)
		VendorGoldBlacksmithOrc.Revert()
		OrcSmithVal = 250
		SetSliderOptionValue(OIDBlacksmithOrcGold, OrcSmithVal, "$TB_Gold")
		VendorGoldBlacksmithOrc.AddForm(Gold001, 1, 250)
		VendorGoldBlacksmithOrc.AddForm(KRY_RandomVendorGoldLG, 1, 2)
	elseIf (option == OIDSpellGold)
		VendorGoldSpells.Revert()
		SpellVal = 500
		SetSliderOptionValue(OIDSpellGold, SpellVal, "$TB_Gold")
		VendorGoldSpells.AddForm(Gold001, 1, 500)
		VendorGoldSpells.AddForm(KRY_RandomVendorGoldLG, 1, 3)
	elseIf (option == OIDMiscGold)
		VendorGoldMisc.Revert()
		MiscVal = 300
		SetSliderOptionValue(OIDMiscGold, MiscVal, "$TB_Gold")
		VendorGoldMisc.AddForm(Gold001, 1, 300)
		VendorGoldMisc.AddForm(KRY_RandomVendorGoldLG, 1, 4)
	elseIf (option == OIDInnGold)
		VendorGoldInn.Revert()
		InnVal = 200
		SetSliderOptionValue(OIDInnGold, InnVal, "$TB_Gold")
		VendorGoldInn.AddForm(Gold001, 1, 200)
		VendorGoldInn.AddForm(KRY_RandomVendorGoldSM, 1, 10)
	elseIf (option == OIDStreetGold)
		VendorGoldStreetVendor.Revert()
		StreetVal = 50
		SetSliderOptionValue(OIDStreetGold, StreetVal, "$TB_Gold")
		VendorGoldStreetVendor.AddForm(Gold001, 1, 50)
		VendorGoldStreetVendor.AddForm(KRY_RandomVendorGoldSM, 1, 5)
	elseIf (option == OIDCaravanGold)
		VendorGoldCaravan.Revert()
		CaravanVal = 750
		SetSliderOptionValue(OIDCaravanGold, CaravanVal, "$TB_Gold")
		VendorGoldCaravan.AddForm(Gold001, 1, 750)
		VendorGoldCaravan.AddForm(KRY_RandomVendorGoldLG, 1, 4)		
	elseIf (option == OIDFenceGold00)
		VendorGoldFenceStage00.Revert()
		Fence00Val = 1000
		SetSliderOptionValue(OIDFenceGold00, Fence00Val, "$TB_Gold")
		VendorGoldFenceStage00.AddForm(Gold001, 1, 1000)		
		VendorGoldFenceStage00.AddForm(KRY_RandomVendorGoldSM, 1, 10)
	elseIf (option == OIDFenceGold01)
		VendorGoldFenceStage01.Revert()
		Fence01Val = 500
		SetSliderOptionValue(OIDFenceGold01, Fence01Val, "$TB_Gold")
		VendorGoldFenceStage01.AddForm(Gold001, 1, 500)		
		VendorGoldFenceStage01.AddForm(KRY_RandomVendorGoldLG, 1, 2)	
	elseIf (option == OIDFenceGold02)
		VendorGoldFenceStage02.Revert()
		Fence02Val = 750
		SetSliderOptionValue(OIDFenceGold02, Fence02Val, "$TB_Gold")
		VendorGoldFenceStage02.AddForm(Gold001, 1, 750)		
		VendorGoldFenceStage02.AddForm(KRY_RandomVendorGoldLG, 1, 3)		
	elseIf (option == OIDFenceGold03)
		VendorGoldFenceStage03.Revert()
		Fence03Val = 750
		SetSliderOptionValue(OIDFenceGold03, Fence03Val, "$TB_Gold")
		VendorGoldFenceStage03.AddForm(Gold001, 1, 750)		
		VendorGoldFenceStage03.AddForm(KRY_RandomVendorGoldLG, 1, 4)		
	elseIf (option == OIDFenceGold04)
		VendorGoldFenceStage04.Revert()
		Fence04Val = 1000
		SetSliderOptionValue(OIDFenceGold04, Fence04Val, "$TB_Gold")
		VendorGoldFenceStage04.AddForm(Gold001, 1, 1000)		
		VendorGoldFenceStage04.AddForm(KRY_RandomVendorGoldLG, 1, 5)	
	elseIf (option == OIDDremoraGold)
		VendorGoldDremora.Revert()
		DremoraVal = 10000
		SetSliderOptionValue(OIDDremoraGold, DremoraVal, "$TB_Gold")
		VendorGoldDremora.AddForm(Gold001, 1, 10000)					
	endIf
endEvent


event OnOptionHighlight(int option)
	if (option == OIDThane)
		SetInfoText("$TB_DescThane")
	elseIf (option == OIDFaction)
		SetInfoText("$TB_DescFaction")
	elseIf (option == OIDFactionLead)
		SetInfoText("$TB_DescFactionLead")
	elseif (option == OIDFriend)
		SetInfoText("$TB_DescFriend")
	elseIf (option == OIDAlly)
		SetInfoText("$TB_DescAlly")
	elseIf (option == OIDLover)
		SetInfoText("$TB_DescLover")
	elseIf (option == OIDLocation)
		SetInfoText("$TB_DescLocation")
	elseIf (option == OIDSolitudeBuy)
		SetInfoText("$TB_DescSolitudeBuy")
	elseIf (option == OIDSolitudeSell)
		SetInfoText("$TB_DescSolitudeSell")
	elseIf (option == OIDMarkarthBuy)
		SetInfoText("$TB_DescMarkarthBuy")
	elseIf (option == OIDMarkarthSell)
		SetInfoText("$TB_DescMarkarthSell")
	elseIf (option == OIDWindhelmBuy)
		SetInfoText("$TB_DescWindhelmBuy")
	elseIf (option == OIDWindhelmSell)
		SetInfoText("$TB_DescWindhelmSell")
	elseIf (option == OIDRiftenBuy)
		SetInfoText("$TB_DescRiftenBuy")
	elseIf (option == OIDRiftenSell)
		SetInfoText("$TB_DescRiftenSell")
	elseIf (option == OIDWhiterunBuy)
		SetInfoText("$TB_DescWhiterunBuy")
	elseIf (option == OIDWhiterunSell)
		SetInfoText("$TB_DescWhiterunSell")
	elseIf (option == OIDSolstheimBuy)
		SetInfoText("$TB_DescSolstheimBuy")
	elseIf (option == OIDSolstheimSell)
		SetInfoText("$TB_DescSolstheimSell")		
	elseIf (option == OIDRavenRockBuy)
		SetInfoText("$TB_DescRavenRockBuy")
	elseIf (option == OIDRavenRockSell)
		SetInfoText("$TB_DescRavenRockSell")		
	elseIf (option == OIDBarterMin)
		SetInfoText("$TB_DescBarterMin")
	elseIf (option == OIDBarterMax)
		SetInfoText("$TB_DescBarterMax")
	elseIf (option == OIDBuyBuff)
		SetInfoText("$TB_DescBuyBuff")
	elseIf (option == OIDSellBuff)
		SetInfoText("$TB_DescSellBuff")
	elseIf (option == OIDUseBarterRates)
		SetInfoText("$TB_DescUseBarterRates")
	elseIf (option == OIDPresetRates)
		SetInfoText("$TB_DescPresetRates")	
	elseIf (option == OIDSavePreset)
		SetInfoText("$TB_DescSavePreset")
	elseIf (option == OIDRaceDefault)
		SetInfoText("$TB_DescRaceDefault")
	elseIf (option == OIDRaceCustom)
		SetInfoText("$TB_DescRaceCustom")
	elseIf (option == OIDInsider)
		SetInfoText("$TB_DescInsider")
	elseIf (option == OIDHelmet)
		SetInfoText("$TB_DescHelmet")
	elseIf (option == OIDNaked)
		SetInfoText("$TB_DescNaked")
	elseIf (option == OIDVampire)
		SetInfoText("$TB_DescVampire")
	elseIf (option == OIDOrcFriend)
		SetInfoText("$TB_DescOrcFriend")		
	elseIf (option == OIDWeapon)
		SetInfoText("$TB_DescWeapon")
	elseIf (option == OIDJobFence)
		SetInfoText("$TB_DescJobFence")
	elseIf (option == OIDJobGeneral)
		SetInfoText("$TB_DescJobGeneral")	
	elseIf (option == OIDJobProducers)
		SetInfoText("$TB_DescJobProducers")		
	elseIf (option == OIDJobSpecialists)
		SetInfoText("$TB_DescJobSpecialists")	
	elseIf (option == OIDJobSpells)
		SetInfoText("$TB_DescJobSpells")	
	elseIf (option == OIDJobInns)
		SetInfoText("$TB_DescJobInns")	
	elseIf (option == OIDUseRespawnSettings)
		SetInfoText("$TB_DescVendorRespawn")		
	elseIf (option == OIDVendorRespawn)
		SetInfoText("$TB_DescVendorRespawnDays")
	elseIf (option == OIDInvestorGold)
		SetInfoText("$TB_DescInvestorGold")
	elseIf (option == OIDInvestedGoldIncrease)
		SetInfoText("$TB_DescInvestedGoldIncrease")
	elseIf (option == OIDInvestorInventory)
		SetInfoText("$TB_DescInvestorInventory")
	elseIf (option == OIDMasterTrader)
		SetInfoText("$TB_DescMasterTrader")
	elseIf (option == OIDVariableGold01)
		SetInfoText("$TB_DescVariableGold01")
	elseIf (option == OIDVariableGold02)
		SetInfoText("$TB_DescVariableGold02")
	elseIf (option == OIDVariableGold03)
		SetInfoText("$TB_DescVariableGold03")
	elseIf (option == OIDRandomGold)
		SetInfoText("$TB_DescRandomGold")
	elseIf (option == OIDApothecaryGold)
		SetInfoText("$TB_DescApothecaryGold")
	elseIf (option == OIDBlacksmithGold)
		SetInfoText("$TB_DescBlacksmithGold")				
	elseIf (option == OIDBlacksmithTownGold)
		SetInfoText("$TB_DescBlacksmithTownGold")				
	elseIf (option == OIDBlacksmithOrcGold)
		SetInfoText("$TB_DescBlacksmithOrcGold")				
	elseIf (option == OIDSpellGold)
		SetInfoText("$TB_DescSpellGold")				
	elseIf (option == OIDMiscGold)
		SetInfoText("$TB_DescMiscGold")				
	elseIf (option == OIDInnGold)
		SetInfoText("$TB_DescInnGold")				
	elseIf (option == OIDStreetGold)
		SetInfoText("$TB_DescStreetGold")
	elseIf (option == OIDGoldDefault)
		SetInfoText ("$TB_DescGoldDefault")	
	elseIf (option == OIDCaravanGold)
		SetInfoText("$TB_DescCaravanGold")		
	elseIf (option == OIDFenceGold00)
		SetInfoText("$TB_DescFence00Gold")		
	elseIf (option == OIDFenceGold01)
		SetInfoText("$TB_DescFence01Gold")	
	elseIf (option == OIDFenceGold02)
		SetInfoText("$TB_DescFence02Gold")	
	elseIf (option == OIDFenceGold03)
		SetInfoText("$TB_DescFence03Gold")	
	elseIf (option == OIDFenceGold04)
		SetInfoText("$TB_DescFence04Gold")		
	elseIf (option == OIDDremoraGold)
		SetInfoText("$TB_DescDremoraGold")			
	endIf
endEvent


Function ConfigureRaceRelations()
	Actor Player = Game.GetPlayer()	
	If RaceRelations.GetValue() == 1
		Player.AddPerk(KRY_TradingVariables_RaceDefault01)
		Player.AddPerk(KRY_TradingVariables_RaceDefault02)
		Player.AddPerk(KRY_TradingVariables_RaceDefault03)
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
	elseif RaceRelations.GetValue() == 2	
		Player.RemovePerk(KRY_TradingVariables_RaceDefault01)
		Player.RemovePerk(KRY_TradingVariables_RaceDefault02)
		Player.RemovePerk(KRY_TradingVariables_RaceDefault03)
		Player.AddPerk(KRY_TradingVariables_RaceAltmer)
		Player.AddPerk(KRY_TradingVariables_RaceArgonian)
		Player.AddPerk(KRY_TradingVariables_RaceBosmer)
		Player.AddPerk(KRY_TradingVariables_RaceBreton)
		Player.AddPerk(KRY_TradingVariables_RaceDunmer)
		Player.AddPerk(KRY_TradingVariables_RaceImperial)
		Player.AddPerk(KRY_TradingVariables_RaceKhajiit)
		Player.AddPerk(KRY_TradingVariables_RaceNord)
		Player.AddPerk(KRY_TradingVariables_RaceNordWindhelm)
		Player.AddPerk(KRY_TradingVariables_RaceOrc)
		Player.AddPerk(KRY_TradingVariables_RaceRedguard)
	else	
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
	Endif
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
Perk Property KRY_TradingVariables_Vampire Auto
Perk Property KRY_TradingVariables_OrcFriend Auto
Perk Property KRY_TradingVariables_Naked Auto
Perk Property KRY_TradingVariables_InsiderSmith Auto
Perk Property KRY_TradingVariables_InsiderArcher Auto
Perk Property KRY_TradingVariables_InsiderEnchant Auto
Perk Property KRY_TradingVariables_InsiderAlchemist Auto
Perk Property KRY_TradingVariables_JobFence Auto
Perk Property KRY_TradingVariables_JobGeneral Auto
Perk Property KRY_TradingVariables_JobProducers Auto
Perk Property KRY_TradingVariables_JobSpecialists Auto
Perk Property KRY_TradingVariables_JobSpells Auto
Perk Property KRY_TradingVariables_JobInns Auto
Perk Property InvestorPerk Auto