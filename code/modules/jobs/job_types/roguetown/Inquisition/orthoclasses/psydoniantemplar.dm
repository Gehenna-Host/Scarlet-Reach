/datum/advclass/psydoniantemplar // A templar, but for the Inquisition
	name = "Adjudicator"
	tutorial = "Ten knights, clad in fluted chainmaille and blessed with the capacity to invoke lesser miracles. \
	In lieu of greater miracles and rituals, they compensate through martial discipline and blessed weaponry."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/psydoniantemplar
	category_tags = list(CTAG_INQUISITION)
	cmode_music = 'sound/music/templarofpsydonia.ogg'

/datum/outfit/job/roguetown/psydoniantemplar
	job_bitflag = BITFLAG_CHURCH

/datum/outfit/job/roguetown/psydoniantemplar/pre_equip(mob/living/carbon/human/H)
	..()
	has_loadout = TRUE
	switch(H.patron?.type)
		if(/datum/patron/divine/astrata)
			wrists = /obj/item/clothing/neck/roguetown/psicross/astrata
			cloak = /obj/item/clothing/cloak/templar/astratan
		if(/datum/patron/divine/abyssor)
			wrists = /obj/item/clothing/neck/roguetown/psicross/abyssor
			cloak = /obj/item/clothing/cloak/abyssortabard
		if(/datum/patron/divine/xylix)
			wrists = /obj/item/clothing/neck/roguetown/psicross/silver
			cloak = /obj/item/clothing/cloak/templar/xylixian
		if(/datum/patron/divine/dendor)
			wrists = /obj/item/clothing/neck/roguetown/psicross/dendor
			cloak = /obj/item/clothing/cloak/tabard/crusader/dendor
		if(/datum/patron/divine/necra)
			wrists = /obj/item/clothing/neck/roguetown/psicross/necra
			cloak = /obj/item/clothing/cloak/templar/necran
		if(/datum/patron/divine/pestra)
			wrists = /obj/item/clothing/neck/roguetown/psicross/pestra
			cloak = /obj/item/clothing/cloak/templar/pestran
		if(/datum/patron/divine/eora)
			wrists = /obj/item/clothing/neck/roguetown/psicross/eora
			cloak = /obj/item/clothing/cloak/templar/eoran
		if(/datum/patron/divine/noc)
			wrists = /obj/item/clothing/neck/roguetown/psicross/noc
			cloak = /obj/item/clothing/cloak/tabard/crusader/noc
		if(/datum/patron/divine/ravox)
			wrists = /obj/item/clothing/neck/roguetown/psicross/ravox
			cloak = /obj/item/clothing/cloak/tabard/crusader/ravox
		if(/datum/patron/divine/malum)
			wrists = /obj/item/clothing/neck/roguetown/psicross/malum
			cloak = /obj/item/clothing/cloak/templar/malumite
	backr = /obj/item/rogueweapon/shield/tower/metal
	gloves = /obj/item/clothing/gloves/roguetown/chain/psydon
	neck = /obj/item/clothing/neck/roguetown/chaincoif
	pants = /obj/item/clothing/under/roguetown/chainlegs
	backl = /obj/item/storage/backpack/rogue/satchel/black
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson
	shoes = /obj/item/clothing/shoes/roguetown/boots/psydonboots
	armor = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/ornate
	head = /obj/item/clothing/head/roguetown/helmet/heavy/psydonhelm
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltr = /obj/item/rogueweapon/huntingknife/idagger/silver/psydagger/preblessed
	id = /obj/item/clothing/ring/silver
	backpack_contents = list(/obj/item/roguekey/inquisition = 1)
	H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)
	H.change_stat("strength", 2)
	H.change_stat("constitution", 2)
	H.change_stat("endurance", 3)

	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_INQUISITION, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_OUTLANDER, TRAIT_GENERIC)		//You're a foreigner, a guest of the realm.
	ADD_TRAIT(H, TRAIT_SILVER_BLESSED, TRAIT_GENERIC)//Given they don't have the psyblessed silver cross. Puts them in line with the Inquisitor.
	H.grant_language(/datum/language/otavan)

	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_miracles(H, cleric_tier = CLERIC_T2, passive_gain = FALSE, devotion_limit = CLERIC_REQ_1) //Capped to T2 miracles. It's just a self-heal.

	var/helmets = list(
	"Ornate Barbute" 	= /obj/item/clothing/head/roguetown/helmet/heavy/psydonbarbute,
	"Ornate Armet" 		= /obj/item/clothing/head/roguetown/helmet/heavy/psydonhelm,
	"None"
	)
	var/helmchoice = input("Choose your Helm.", "TAKE UP HELMS") as anything in helmets
	if(helmchoice != "None")
		head = helmets[helmchoice]

	var/shields = list(
	"Holy Shield (Light)" 	= /obj/item/rogueweapon/shield/tower/metal/holysee,
	"Holy Shield (Dark)" 	= /obj/item/rogueweapon/shield/tower/metal/holysee/dark,
	"Weapon Strap" 			=/obj/item/gwstrap,
	"None"
	)
	var/shieldchoice = input("Choose your Auxiliary.", "TAKE UP SHIELD") as anything in shields
	if(shieldchoice != "None")
		backr = shields[shieldchoice]

/datum/outfit/job/roguetown/psydoniantemplar/choose_loadout(mob/living/carbon/human/H)
	. = ..()
	var/weapons = list("Sword", "Axe", "Whip", "Flail", "Mace", "Spear")
	var/weapon_choice = input(H,"Choose your BLESSED weapon.", "TAKE UP ARMS") as anything in weapons
	switch(weapon_choice)
		if("Sword")
			H.put_in_hands(new /obj/item/rogueweapon/sword/long/psysword/preblessed(H), TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/swords, 4, TRUE)
		if("Axe")
			H.put_in_hands(new /obj/item/rogueweapon/stoneaxe/battle/psyaxe/preblessed(H), TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/axes, 4, TRUE)
		if("Whip")
			H.put_in_hands(new /obj/item/rogueweapon/whip/psywhip_lesser/preblessed(H), TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 4, TRUE)
		if("Flail")
			H.put_in_hands(new /obj/item/rogueweapon/flail/sflail/psyflail/preblessed(H), TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/whipsflails, 4, TRUE)
		if("Mace")
			H.put_in_hands(new /obj/item/rogueweapon/mace/goden/psymace/preblessed(H), TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/maces, 4, TRUE)
		if("Spear")
			H.put_in_hands(new /obj/item/rogueweapon/spear/psyspear/preblessed(H), TRUE)
			H.adjust_skillrank_up_to(/datum/skill/combat/polearms, 4, TRUE)

