; Immersive Horses by sevencardz
ScriptName IHOUtil hidden
{Utility script for Immersive Horses.}

; Returns the relative path to the Immersive Horses.json file.
String Function GetJSONPath() global
	return "../Immersive Horses/Immersive Horses.json"
EndFunction

; Returns the relative path to the Horse Breeds.json file.
String Function GetJSONBreedsPath() global
	return "../Immersive Horses/Horse Breeds.json"
EndFunction

; Converts a GlobalVariable to a bool type.
bool Function IsTrue(GlobalVariable glob) global
	return glob.GetValueInt() as bool
EndFunction

; Returns true if the actor is in a state where adding the protected flag is worthwhile.
bool Function CanBeProtected(Actor actorRef) global
	ActorBase actorBaseRef = actorRef.GetLeveledActorBase()
	return !actorRef.IsDead() && !actorRef.IsGhost() && !actorBaseRef.IsInvulnerable() &&\
		   !actorBaseRef.IsEssential() && !actorBaseRef.IsProtected()
EndFunction

; Deprecates SetFactionRank which seems to fail in certain situations.
Function ResetFactionRank(Actor actorRef, Faction factionRef, int factionRank) global
	actorRef.RemoveFromFaction(factionRef)
	actorRef.SetFactionRank(factionRef, factionRank)
EndFunction

; Returns true if the player is currently arrested. NOTE: Game.GetPlayer().IsArrested() does not work.
bool Function IsPlayerArrested() global
	Quest JailQuest = Quest.GetQuest("JailQuest")
	return JailQuest.IsRunning() && JailQuest.GetStage() != 100
EndFunction
	
; The player blows his horn.
Function BlowMyHorn() global
	Actor playerRef = Game.GetPlayer()
	Game.ForceThirdPerson()
	if playerRef.IsWeaponDrawn()
		playerRef.SheatheWeapon()
		Utility.Wait(2)
	endIf
	Debug.SendAnimationEvent(playerRef, "IdleBlowHornStormcloak")
EndFunction

; Fades the screen to black and holds it there. Call FadeFromBlack() to reverse it.
Function FadeToBlackAndHold() global
	ImageSpaceModifier FadeToBlackImod = Game.GetFormFromFile(0x0f756d, "Skyrim.esm")\
		as ImageSpaceModifier
	ImageSpaceModifier FadeToBlackHoldImod = Game.GetFormFromFile(0x0f756e, "Skyrim.esm")\
		as ImageSpaceModifier
	FadeToBlackImod.Apply()
	Utility.Wait(2)
	FadeToBlackImod.PopTo(FadeToBlackHoldImod)
EndFunction

; Fades the screen from black back to normal. Reverses the effects of FadeToBlackAndHold().
Function FadeFromBlack() global
	ImageSpaceModifier FadeToBlackHoldImod = Game.GetFormFromFile(0x0f756e, "Skyrim.esm")\
		as ImageSpaceModifier
	ImageSpaceModifier FadeToBlackBackImod = Game.GetFormFromFile(0x0f756f, "Skyrim.esm")\
		as ImageSpaceModifier
	Utility.Wait(2)
	FadeToBlackHoldImod.PopTo(FadeToBlackBackImod)
	FadeToBlackHoldImod.Remove()
EndFunction

; Returns true if the item is a saddle armor item.
bool Function IsSaddle(Form akBaseObject) global
	Armor item = akBaseObject as Armor
	return item != None && Math.LogicalAnd(item.GetSlotMask(), 0x00008000) == 0x00008000 ; Slot 45
EndFunction

; Returns the armor item being worn by the horse in slot 45 (saddle).
; Returns None if the horse is not wearing a saddle.
Armor Function GetWornSaddle(Actor horseRef) global
	return horseRef.GetWornForm(0x00008000) as Armor ; Slot 45
EndFunction

; Returns true if the item is an armor item that can be worn by a horse.  
; Checks each additional race and each keyword listed on the armor item for the string "horse" 
; and if found, then the item is considered a horse armor item.
bool Function IsHorseArmorItem(Form akBaseObject) global
	Armor armorItemRef = akBaseObject as Armor
	if armorItemRef == None
		return false
	endIf
	int i = 0
	while i < armorItemRef.GetNumArmorAddons()
		ArmorAddon armorAddonRef = armorItemRef.GetNthArmorAddon(i)
		int z = 0
		while z < armorAddonRef.GetNumAdditionalRaces()
			Race raceRef = armorAddonRef.GetNthAdditionalRace(z)
			if StringUtil.Find(raceRef.GetName(), "horse", 0) != -1
				return true
			endIf
			z += 1
		endWhile
		i += 1
	endWhile
	i = 0
	while akBaseObject != None && i < akBaseObject.GetNumKeywords()
		Keyword keywordRef = akBaseObject.GetNthKeyword(i)
		if StringUtil.Find(keywordRef.GetString(), "horse", 0) != -1
			return true
		endIf
		i += 1
	endWhile
	return false
EndFunction

; Helper function to set the value of a global variable and write the value to the JSON file.
Function SaveJSONGlobalInt(GlobalVariable glob, String variableName, int value) global
	glob.SetValueInt(value)
	JsonUtil.SetIntValue(GetJSONPath(), variableName, value)
EndFunction

; Loads the value for an integer variable from the given name of the variable from the JSON file. 
; Writes a warning to the log and returns defaultValue if the variable name is not found in the JSON.
int Function LoadJSONGlobalInt(String variableName, int defaultValue = -1) global
	int errorValue = -999
	int value = JsonUtil.GetIntValue(GetJSONPath(), variableName, errorValue)
	if value == errorValue
		Debug.Trace("[IHO ERROR] variable: " + variableName + " not found at " + GetJSONPath())
		return defaultValue
	else
		return value
	endIf
EndFunction

; Returns the horse's breed name.
String Function GetHorseBreedName(Actor horseRef) global
	ActorBase horseBaseRef = horseRef.GetLeveledActorBase()
	ActorBase horseTemplateRef = horseBaseRef.GetTemplate()
	if horseTemplateRef == None
		return horseBaseRef.GetName()
	else
		return horseTemplateRef.GetName()
	endIf
EndFunction

; Returns the horse's breed prefix for the JSON file based on the horse's name or template name.
; Returns an empty String if the horse's breed is not found in the JSON file.
String Function GetJSONHorseBreedPrefix(Actor horseRef) global
	String breedName = GetHorseBreedName(horseRef)
	if JsonUtil.StringListHas(GetJSONBreedsPath(), "Breeds", breedName)
		return RemoveSpaces(breedName)
	else
		return ""
	endIf
EndFunction

; Returns the perma clone for this horse breed.
ActorBase Function GetHorsePermaClone(Actor horseRef) global
	ActorBase horseBaseRef = horseRef.GetLeveledActorBase()
	String breedPrefix = GetJSONHorseBreedPrefix(horseRef)
	int formId = 0
	if horseBaseRef.GetSex() ; Female
		if breedPrefix == "BlackFellPony"
			formId = 0x055215
		elseIf breedPrefix == "ExmoorPony"
			formId = 0x055778
		elseIf breedPrefix == "FjordHorse"
			formId = 0x05577A
		elseIf breedPrefix == "GreyFellPony"
			formId = 0x05577B
		elseIf breedPrefix == "HaflingerHorse"
			formId = 0x05577C
		endIf
	else ; Male
		if breedPrefix == "BlackFellPony"
			formId = 0x05F3B3
		elseIf breedPrefix == "ExmoorPony"
			formId = 0x05F915
		elseIf breedPrefix == "FjordHorse"
			formId = 0x05F916
		elseIf breedPrefix == "GreyFellPony"
			formId = 0x05F917
		elseIf breedPrefix == "HaflingerHorse"
			formId = 0x05F918
		endIf
	endIf
	if formId == 0
		return None
	endIf
	return Game.GetFormFromFile(formID, "Immersive Horses.esp") as ActorBase
EndFunction

; Sets the horse's actor values based on the breed values defined in the JSON file.
Function InitHorseBreedFromJSON(Actor horseRef) global
	String breedPrefix = GetJSONHorseBreedPrefix(horseRef)
	if breedPrefix == ""
		String breedName = GetHorseBreedName(horseRef)
		Debug.Trace("[IHO WARNING] breed: " + breedName + " not found at " + GetJSONBreedsPath())
	else
		String actorValueName = "Scale"
		String variableName = breedPrefix + actorValueName
		int value = JsonUtil.GetIntValue(GetJSONBreedsPath(), variableName, 0)
		if !horseRef.IsBeingRidden() ; Avoid Havok issues.
			if value == 0 ; Medium (default)
				horseRef.SetScale(1)
			elseIf value == 1 ; Large
				horseRef.SetScale(1.08)
			elseIf value == -1 ; Small
				horseRef.SetScale(0.92)
			endif
		endIf
		String[] list = new String[8]
		list[0] = "Health"
		list[1] = "Stamina"
		list[2] = "SpeedMult"
		list[3] = "UnarmedDamage"
		list[4] = "LightArmor"
		list[5] = "HeavyArmor"
		list[6] = "Confidence"
		list[7] = "Aggression"
		int i = 0
		while i < list.Length
			actorValueName = list[i]
			variableName = breedPrefix + actorValueName
			value = JsonUtil.GetIntValue(GetJSONBreedsPath(), variableName)
			if value > -1
				horseRef.SetActorValue(actorValueName, value) 
			endIf
			i += 1
		endWhile
	endIf
EndFunction

; Restores the normal speed multiplier for the horse if the horse is trotting.
Function RestoreSpeedMult(Actor horseRef) global
	String breedPrefix = GetJSONHorseBreedPrefix(horseRef)
	if breedPrefix != ""
		int value = JsonUtil.GetIntValue(GetJSONBreedsPath(), breedPrefix + "SpeedMult")
		if value > -1
			horseRef.SetActorValue("SpeedMult", value)
		endIf
	else
		horseRef.SetActorValue("SpeedMult", 100)
	endIf
	horseRef.ModActorValue("CarryWeight", 0.001) ; Apply the speed change.
EndFunction

; Restores the unarmed damage actor value for the horse.
Function RestoreUnarmedDamage(Actor horseRef) global
	String breedPrefix = GetJSONHorseBreedPrefix(horseRef)
	if breedPrefix != ""
		int value = JsonUtil.GetIntValue(GetJSONBreedsPath(), breedPrefix + "UnarmedDamage")
		if value > -1
			horseRef.SetActorValue("UnarmedDamage", value)
		endIf
	else
		horseRef.SetActorValue("UnarmedDamage", 10)
	endIf
EndFunction

; Unequips all of the armor items on the horse that should not be worn by a horse.
Function UnequipNonHorseArmors(Actor horseRef) global
    int slotsChecked = 0
    int thisSlot = 0x00000002
    while thisSlot < 0x80000000
		; Only check slots we haven't found anything equipped on already.
        if Math.LogicalAnd(slotsChecked, thisSlot) != thisSlot
			Armor item = horseRef.GetWornForm(thisSlot) as Armor
			; Add all slots this item covers to the slots we've checked if the item is unequipped.
			if item != None && horseRef.IsEquipped(item) && !IsHorseArmorItem(item)
				horseRef.UnequipItem(item)
				slotsChecked += item.GetSlotMask()
			else
                slotsChecked += thisSlot
			endIf
        endif
        thisSlot *= 2 ; Double the number to move on to the next slot.
    endWhile
EndFunction

; Teleports the horse to a random location behind the player.
Function TeleHorse(Actor horseRef, float minDistance = 750.0, float maxDistance = 1500.0) global
	Actor playerRef = Game.GetPlayer()
	float playerAngle = playerRef.GetAngleZ()
	float arcStart = playerAngle + 180 - (90 / 2) ; Start of the arc where the horse can move.
	float angleStart = Utility.RandomFloat(arcStart, arcStart + 90) ; Randomize the angle.
	float moveDistance = Utility.RandomFloat(minDistance, maxDistance) ; Randomize the distance.
	float horseX = moveDistance * Math.Sin(angleStart) ; Calc the horse's relative X position.
	float horseY = moveDistance * Math.Cos(angleStart) ; Calc the horse's relative Y position.
	horseRef.Disable(abFadeOut = false)
	horseRef.MoveTo(playerRef, horseX, horseY, 0)
	horseRef.Enable(abFadeIn = false)
EndFunction

; Knocks down and damages the target actor and then sends an assault alarm if appropriate.
Function HorseKick(Actor horseRef, Actor targetRef) global
	horseRef.PushActorAway(targetRef, 2) ; Push the target actor.
	if !targetRef.IsDead() ; Dead actors can't be damaged by a kick.
		horseRef.DamageActorValue("Stamina", 20) ; A kick costs horse stamina.
		float horseKickDamage = horseRef.GetActorValue("UnarmedDamage") ; Damage Output
		; Damage Reduction = Armor Rating * 0.12% per armor point / 100.
		float targetDamageReduction = (targetRef.GetActorValue("DamageResist") * 0.12) / 100
		; Effective Damage = Damage Output - Damage Output * Damage Reduction
		float horseKickDamageEffective = horseKickDamage - (horseKickDamage * targetDamageReduction)
		targetRef.DamageActorValue("Health", horseKickDamageEffective)
		; Send an assault alarm if the player is not a friend to the target actor.
		if targetRef.GetRelationshipRank(Game.GetPlayer()) < 1
			targetRef.SendAssaultAlarm()
		endIf
	endIf
EndFunction

; Executes a fast dismount operation for the player and the specified horse.
; The player is forced into a jump animation to bypass the vanilla dismount animations and then 
; moved to one of three positions around the horse: left = 1, rear = 0, right = -1.
; The player's weapons in both hands are drawn (if not already drawn) if drawWeapons is true.
Function FastDismount(Actor horseRef, int dismountPosition = 0, bool drawWeapons = true) global
	Actor playerRef = Game.GetPlayer()
	; Abort if the player is not riding the horse or if the horse is jumping.
	if !playerRef.IsOnMount() || horseRef.GetAnimationVariableBool("bInJumpState")
		return
	endIf
	; Revert to regular dismount if the horse is swimming.
	if horseRef.IsSwimming()
		playerRef.Dismount()
		return
	endIf
	float jumpDistance ; Estimate jump distance.
	if dismountPosition == 0
		jumpDistance = horseRef.GetLength() * horseRef.GetScale()
	else
		jumpDistance = horseRef.GetWidth() * horseRef.GetScale()
	endIf
	bool weaponDrawn = playerRef.IsWeaponDrawn()
	if weaponDrawn ; Prevent the sheathe animation if the player has a weapon drawn.
		Debug.SendAnimationEvent(playerRef, "MountedSwimStart")
	endIf
	playerRef.Dismount() ; Trigger vanilla dismount.
	Utility.Wait(0.1) ; Wait just long enough for the dismount to register.
	if weaponDrawn ; End sheathe animation prevention.
		Debug.SendAnimationEvent(playerRef, "MountedSwimStop")
	endIf
	Debug.SendAnimationEvent(playerRef, "JumpStandingStart") ; Override the dismount animation.
	; Equip both weapons if drawWeapons is true. Calling DrawWeapon() is not reliable here.
	if weaponDrawn || drawWeapons
		Debug.SendAnimationEvent(playerRef, "WeapOutLeftReplaceForceEquip") ; Left hand weapon.
		Debug.SendAnimationEvent(playerRef, "WeapOutRightReplaceForceEquip") ; Right hand weapon.
	endIf
	; Calculate dismount Z angle, X, and Y position.
	float dismountAngle = playerRef.GetAngleZ() + dismountPosition * 90
	float xPos = playerRef.GetPositionX() - jumpDistance * Math.Sin(dismountAngle)
	float yPos = playerRef.GetPositionY() - jumpDistance * Math.Cos(dismountAngle)
	; Move the player to the final dismount position.
	playerRef.TranslateTo(xPos, yPos, horseRef.GetPositionZ(), 0, 0, 0, 400)
	Utility.Wait(0.5) ; Wait long enough for the translation to complete.
	; Reseat the player on the horse in case the dismount failed.
	Debug.SendAnimationEvent(horseRef, "FallStart") ; Horse starts falling.
	Debug.SendAnimationEvent(horseRef, "LandStart") ; Horse stops falling.
	Utility.Wait(0.5) ; Wait long enough for the player's animation state to update.
	; Prevent the player from getting stuck in the jump animation.
	if playerRef.GetAnimationVariableBool("bInJumpState")
		Debug.SendAnimationEvent(playerRef, "JumpLandEnd")
	endIf
	; Prevent the player from getting stuck in the sprint animation.
	if playerRef.IsSprinting()
		Debug.SendAnimationEvent(playerRef, "SprintStop")
	endIf
EndFunction

; Returns the options list for horse activation.
String[] Function GetOptionsList(bool mounted = false) global
	String[] list = new String[7]
	list[0] = "$IHO_MenuTextNoAction"
	list[1] = "$IHO_MenuTextShowMenu"
	if mounted
		list[2] = "$IHO_MenuTextDismount"
	else
		list[2] = "$IHO_MenuTextRide"
	endif
	if mounted
		list[3] = "$IHO_MenuTextTalkOrSearch"
	else
		list[3] = "$IHO_MenuTextFollowMe"
	endIf
	list[4] = "$IHO_MenuTextOpenInventory"
	list[5] = "$IHO_MenuTextShowStats"
	list[6] = "$IHO_MenuTextDismiss"
	return list
EndFunction

; Returns the list of aggression options.
String[] Function GetAggressionList() global
	String[] options = new String[5]
	options[0] = "$IHO_MenuTextCancel"
	options[1] = "$IHO_MenuTextUnaggressive"
	options[2] = "$IHO_MenuTextAggressive"
	options[3] = "$IHO_MenuTextVeryAggressive"
	options[4] = "$IHO_MenuTextFrenzied"
	return options
EndFunction

; Returns the list of confidence options.
String[] Function GetConfidenceList() global
	String[] options = new String[6]
	options[0] = "$IHO_MenuTextCancel"
	options[1] = "$IHO_MenuTextCowardly"
	options[2] = "$IHO_MenuTextCautious"
	options[3] = "$IHO_MenuTextAverage"
	options[4] = "$IHO_MenuTextBrave"
	options[5] = "$IHO_MenuTextFoolhardy"
	return options
EndFunction

; Ensures that the stabled horses persist and respawn correctly after death on existing save games.
Function PersistStabledHorses() global
	Quest StablesQuest = Quest.GetQuest("stables")
	ReferenceAlias whiterunHorseAlias = StablesQuest.GetAlias(25) as ReferenceAlias
	ReferenceAlias markarthHorseAlias = StablesQuest.GetAlias(28) as ReferenceAlias
	ReferenceAlias windhelmHorseAlias = StablesQuest.GetAlias(31) as ReferenceAlias
	ReferenceAlias riftenHorseAlias = StablesQuest.GetAlias(34) as ReferenceAlias
	ReferenceAlias solitudeHorseAlias = StablesQuest.GetAlias(37) as ReferenceAlias
	ActorBase whiterunPlayerHorse = Game.GetFormFromFile(0x109e3d, "Skyrim.esm") as ActorBase
	ActorBase markarthPlayerHorse = Game.GetFormFromFile(0x109e41, "Skyrim.esm") as ActorBase
	ActorBase windhelmPlayerHorse = Game.GetFormFromFile(0x109ab1, "Skyrim.esm") as ActorBase
	ActorBase riftenPlayerHorse = Game.GetFormFromFile(0x109e40, "Skyrim.esm") as ActorBase
	ActorBase solitudePlayerHorse = Game.GetFormFromFile(0x109e3e, "Skyrim.esm") as ActorBase
	Outfit HorseSaddleOutfit = Game.GetFormFromFile(0x060798, "Skyrim.esm") as Outfit
	Outfit HorseSaddleImperialOutfit = Game.GetFormFromFile(0x0409bc, "Skyrim.esm") as Outfit
	Outfit HorseSaddleShadowmereOutfit = Game.GetFormFromFile(0x109c3e, "Skyrim.esm") as Outfit
	PlayerHorseScript whiterunHorseScript = whiterunHorseAlias as PlayerHorseScript
	PlayerHorseScript markarthHorseScript = markarthHorseAlias as PlayerHorseScript
	PlayerHorseScript windhelmHorseScript = windhelmHorseAlias as PlayerHorseScript
	PlayerHorseScript riftenHorseScript = riftenHorseAlias as PlayerHorseScript
	PlayerHorseScript solitudeHorseScript = solitudeHorseAlias as PlayerHorseScript
	whiterunHorseScript.LvlHorseSaddled = whiterunPlayerHorse
	markarthHorseScript.LvlHorseSaddled = markarthPlayerHorse
	windhelmHorseScript.LvlHorseSaddled = windhelmPlayerHorse
	riftenHorseScript.LvlHorseSaddled = riftenPlayerHorse
	solitudeHorseScript.LvlHorseSaddled = solitudePlayerHorse
	whiterunHorseScript.HorseOriginalOutfit = HorseSaddleImperialOutfit
	markarthHorseScript.HorseOriginalOutfit = HorseSaddleImperialOutfit
	windhelmHorseScript.HorseOriginalOutfit = HorseSaddleOutfit
	riftenHorseScript.HorseOriginalOutfit = HorseSaddleOutfit
	solitudeHorseScript.HorseOriginalOutfit = HorseSaddleImperialOutfit
EndFunction

; Attempts to cast the spell for the player if casting cost and hold time conditions are met.
bool Function AttemptPlayerSpellCast(Spell spellRef, float holdTime) global
	Actor playerRef = Game.GetPlayer()
	int spellCost = spellRef.GetEffectiveMagickaCost(playerRef)
	if spellCost < playerRef.GetActorValue("Magicka")
		if spellRef.GetCastTime() <= holdTime
			spellRef.Cast(playerRef)
			playerRef.DamageActorValue("Magicka", spellCost)
			return true
		endIf
	else ; Player doesn't have enough magicka.
		Debug.Notification(Game.GetGameSettingString("sMagicCastInsufficientMagicka"))
		Sound MAGFail = Game.GetFormFromFile(0x022472, "Skyrim.esm") as Sound
		MAGFail.Play(playerRef)
	endIf
	return false
EndFunction

; Returns true if the spell is a concentration spell.
bool Function IsConcentrationSpell(Spell spellRef) global
	int i = 0
	while i < spellRef.GetNumEffects()
		if spellRef.GetNthEffectMagicEffect(i).GetCastingType() == 2 ; Concentration
			return true
		else
			i += 1
		endIf
	endWhile
	return false
EndFunction

; Quickly attempts to find an actor near the player who is not the player.
Actor Function GetActorNearPlayer(float afRadius = 1000.0) global
	Actor playerRef = Game.GetPlayer()
	Actor actorRef = Game.GetCurrentCrosshairRef() as Actor
	if actorRef == None
		actorRef = Game.FindRandomActorFromRef(playerRef, afRadius)
	endIf
	if actorRef == None || actorRef == playerRef
		return None
	else
		return actorRef
	endIf
EndFunction

; Swaps the positions of the two actors in the actor array.
Function SwapActorArrayPositions(Actor[] actorArrayRef, int thisIndex, int thatIndex) global
	Actor tempActor = actorArrayRef[thisIndex]
	actorArrayRef[thisIndex] = actorArrayRef[thatIndex]
	actorArrayRef[thatIndex] = tempActor
EndFunction

; Removes all spaces from the given String.
String Function RemoveSpaces(String oldString) global
	String newString = ""
	int i = 0
	while i < StringUtil.GetLength(oldString)
		String char = StringUtil.GetNthChar(oldString, i)
		if char != " "
			newString += char
		endIf
		i += 1
	endWhile
	return newString
EndFunction

; Activates cheat mode (for testing).
Function CheatModeCheck() global
	if JsonUtil.GetIntValue(GetJSONPath(), "IHOCheatMode") == 1
		Actor playerRef = Game.GetPlayer()
		Form gold = Game.GetFormFromFile(0x000000f, "Skyrim.esm") as Form
		Spell summonArvak = Game.GetFormFromFile(0x00c600, "Dawnguard.esm") as Spell
		Spell summonBlaze = Game.GetFormFromFile(0x003881, "Blaze Of Eventide.esp") as Spell
		Armor HorseSaddleImperial = Game.GetFormFromFile(0x040975, "Skyrim.esm") as Armor
		Armor HorseSaddleShadowmere = Game.GetFormFromFile(0x109C3D, "Skyrim.esm") as Armor
		playerRef.AddItem(gold, 100000)
		playerRef.SetActorValue("CarryWeight", 10000)
		playerRef.SetActorValue("SpeedMult", 400)
		playerRef.AddSpell(summonArvak, false)
		playerRef.AddSpell(summonBlaze, false)
		playerRef.AddItem(HorseSaddleImperial, abSilent = true)
		playerRef.AddItem(HorseSaddleShadowmere, abSilent = true)
		String ESP = "Craftable Horse Barding.esp"
		Armor HorseSaddleBard = Game.GetFormFromFile(0x700d67, ESP) as Armor
		Armor HorseSaddleBardAlt = Game.GetFormFromFile(0x70694b, ESP) as Armor
		Armor HorseSaddleBigGame = Game.GetFormFromFile(0x700d68, ESP) as Armor
		Armor HorseSaddleBigGameAlt = Game.GetFormFromFile(0x70694c, ESP) as Armor
		Armor HorseSaddleBlackHand = Game.GetFormFromFile(0x7063db, ESP) as Armor
		Armor HorseSaddleBlackHandAlt = Game.GetFormFromFile(0x706eb2, ESP) as Armor
		Armor HorseSaddleClericArmor = Game.GetFormFromFile(0x700d6f, ESP) as Armor
		Armor HorseSaddleDaedricArmor = Game.GetFormFromFile(0x7150a1, ESP) as Armor
		Armor HorseSaddleDawnguard = Game.GetFormFromFile(0x700d69, ESP) as Armor
		Armor HorseSaddleDawnguardAlt = Game.GetFormFromFile(0x707434, ESP) as Armor
		Armor HorseSaddleDivineAegisArmor = Game.GetFormFromFile(0x715615, ESP) as Armor
		Armor HorseSaddleDragonboneArmor = Game.GetFormFromFile(0x7150a2, ESP) as Armor
		Armor HorseSaddleDwarvenArmor = Game.GetFormFromFile(0x7150a0, ESP) as Armor
		Armor HorseSaddleEbonyArmor = Game.GetFormFromFile(0x71560c, ESP) as Armor
		Armor HorseSaddleEbonyMailArmor = Game.GetFormFromFile(0x7063d9, ESP) as Armor
		Armor HorseSaddleElthraiArmor = Game.GetFormFromFile(0x715611, ESP) as Armor
		Armor HorseSaddleFrostAegisArmor = Game.GetFormFromFile(0x715b7e, ESP) as Armor
		Armor HorseSaddleHunter = Game.GetFormFromFile(0x700d6d, ESP) as Armor
		Armor HorseSaddleHunterAlt = Game.GetFormFromFile(0x70694d, ESP) as Armor
		Armor HorseSaddleImperialChainArmor = Game.GetFormFromFile(0x707428, ESP) as Armor
		Armor HorseSaddleImperialChainArmorAlt = Game.GetFormFromFile(0x707429, ESP) as Armor
		Armor HorseSaddleKnight = Game.GetFormFromFile(0x700d6a, ESP) as Armor
		Armor HorseSaddleKnightAlt = Game.GetFormFromFile(0x70694e, ESP) as Armor
		Armor HorseSaddleLeatherArmor = Game.GetFormFromFile(0x71509e, ESP) as Armor
		Armor HorseSaddleLeatherChainArmor = Game.GetFormFromFile(0x7063dc, ESP) as Armor
		Armor HorseSaddleOrnateArmor = Game.GetFormFromFile(0x7063da, ESP) as Armor
		Armor HorseSaddleSethaiArmor = Game.GetFormFromFile(0x715610, ESP) as Armor
		Armor HorseSaddleSteelNordicArmor = Game.GetFormFromFile(0x71509f, ESP) as Armor
		Armor HorseSaddleStormcloakArmor = Game.GetFormFromFile(0x70742a, ESP) as Armor
		Armor HorseSaddleStormcloakArmorAlt = Game.GetFormFromFile(0x70742b, ESP) as Armor
		Armor HorseSaddleTraveler = Game.GetFormFromFile(0x700d6b, ESP) as Armor
		Armor HorseSaddleWaterwalking = Game.GetFormFromFile(0x704e4c, ESP) as Armor
		playerRef.AddItem(HorseSaddleBard, abSilent = true)
		playerRef.AddItem(HorseSaddleBardAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleBigGame, abSilent = true)
		playerRef.AddItem(HorseSaddleBigGameAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleBlackHand, abSilent = true)
		playerRef.AddItem(HorseSaddleBlackHandAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleClericArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleDaedricArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleDawnguard, abSilent = true)
		playerRef.AddItem(HorseSaddleDawnguardAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleDivineAegisArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleDragonboneArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleDwarvenArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleEbonyArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleEbonyMailArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleElthraiArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleFrostAegisArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleHunter, abSilent = true)
		playerRef.AddItem(HorseSaddleHunterAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleImperialChainArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleImperialChainArmorAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleKnight, abSilent = true)
		playerRef.AddItem(HorseSaddleKnightAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleLeatherArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleLeatherChainArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleOrnateArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleSethaiArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleSteelNordicArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleStormcloakArmor, abSilent = true)
		playerRef.AddItem(HorseSaddleStormcloakArmorAlt, abSilent = true)
		playerRef.AddItem(HorseSaddleTraveler, abSilent = true)
		playerRef.AddItem(HorseSaddleWaterwalking, abSilent = true)
	endIf
EndFunction
