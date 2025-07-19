/datum/advclass/disciple
	name = "Disciple"
	tutorial = "Monks and warscholars, trained in the martial arts. The former excels at shrugging off terrible blows while wrestling foes into submission, while the latter - often hired as mercenaries from abroad - amplify their pugilism with acryne might."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/disciple
	category_tags = list(CTAG_INQUISITION)

/datum/outfit/job/roguetown/disciple
	job_bitflag = BITFLAG_CHURCH

/datum/outfit/job/roguetown/disciple/pre_equip(mob/living/carbon/human/H)
	..()
	switch(H.patron?.type)
		if(/datum/patron/divine/astrata)
			wrists = /obj/item/clothing/neck/roguetown/psicross/astrata
		if(/datum/patron/divine/abyssor)
			wrists = /obj/item/clothing/neck/roguetown/psicross/abyssor
		if(/datum/patron/divine/xylix)
			wrists = /obj/item/clothing/neck/roguetown/psicross/silver
		if(/datum/patron/divine/dendor)
			wrists = /obj/item/clothing/neck/roguetown/psicross/dendor
		if(/datum/patron/divine/necra)
			wrists = /obj/item/clothing/neck/roguetown/psicross/necra
		if(/datum/patron/divine/pestra)
			wrists = /obj/item/clothing/neck/roguetown/psicross/pestra
		if(/datum/patron/divine/eora)
			wrists = /obj/item/clothing/neck/roguetown/psicross/eora
		if(/datum/patron/divine/noc)
			wrists = /obj/item/clothing/neck/roguetown/psicross/noc
		if(/datum/patron/divine/ravox)
			wrists = /obj/item/clothing/neck/roguetown/psicross/ravox
		if(/datum/patron/divine/malum)
			wrists = /obj/item/clothing/neck/roguetown/psicross/malum
	gloves = /obj/item/clothing/gloves/roguetown/chain/psydon
	shoes = /obj/item/clothing/shoes/roguetown/sandals
	id = /obj/item/clothing/ring/silver
	backl = /obj/item/storage/backpack/rogue/satchel
	mask = /obj/item/clothing/mask/rogue/facemask/psydonmask
	head = /obj/item/clothing/head/roguetown/roguehood/psydon
	var/classes = list("Otavan Disciple", "Naledi-Trained Scholar")
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes
	switch(classchoice)
		if("Otavan Disciple")
			H.set_blindness(0)
			brute_equip(H)
		if("Naledi-Trained Scholar")
			H.set_blindness(0)
			naledi_equip(H)

	H.adjust_skillrank(/datum/skill/magic/holy, 2, TRUE)

	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_miracles(H, cleric_tier = CLERIC_T2, passive_gain = FALSE, devotion_limit = CLERIC_REQ_1)	//Capped to T2 miracles. It's just a self-heal.

/datum/outfit/job/roguetown/disciple/proc/brute_equip(mob/living/carbon/human/H)
	backpack_contents = list(/obj/item/roguekey/inquisition = 1)
	belt = /obj/item/storage/belt/rogue/leather/rope
	armor = /obj/item/clothing/suit/roguetown/armor/leather/studded
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
	cloak = /obj/item/clothing/cloak/psydontabard/alt
	H.adjust_skillrank(/datum/skill/misc/athletics, 5, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.change_stat("strength", 3)
	H.change_stat("endurance", 3)
	H.change_stat("constitution", 3)
	H.change_stat("intelligence", -2)
	H.change_stat("speed", -1)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_INQUISITION, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_CRITICAL_RESISTANCE, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NOPAINSTUN, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_OUTLANDER, TRAIT_GENERIC) //You're a foreigner, a guest of the realm.
	ADD_TRAIT(H, TRAIT_SILVER_BLESSED, TRAIT_GENERIC)//Given they don't have the psyblessed silver cross. Puts them in line with the Inquisitor.
	H.grant_language(/datum/language/otavan)

/datum/outfit/job/roguetown/disciple/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly) return
	H.drop_all_held_items()
	var/weapons = list("Steel Greataxe", "Longsword", "Steel Mace", "Spear", "Sword & Shield", "MY BARE HANDS!!!", "Dual Wield")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	switch(weapon_choice)
		if("Steel Greataxe")
			H.adjust_skillrank(/datum/skill/combat/axes, 4, TRUE)
			var/obj/item/I = new /obj/item/rogueweapon/greataxe/steel/doublehead(H)
			H.put_in_hands(I, TRUE)
		if("Longsword")
			H.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
			var/obj/item/I = new /obj/item/rogueweapon/greatsword/zwei(H)
			H.put_in_hands(I, TRUE)
			var/obj/item/strap = new /obj/item/gwstrap(H)
			H.equip_to_slot(strap, SLOT_BACK_R)
		if("Steel Mace")
			H.adjust_skillrank(/datum/skill/combat/maces, 4, TRUE)
			var/obj/item/I = new /obj/item/rogueweapon/mace/goden/steel(H)
			H.put_in_hands(I, TRUE)
		if("Spear")
			H.adjust_skillrank(/datum/skill/combat/polearms, 4, TRUE)
			var/obj/item/I = new /obj/item/rogueweapon/spear/psyspear(H)
			H.put_in_hands(I, TRUE)
		if("Sword & Shield")
			H.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
			H.adjust_skillrank(/datum/skill/combat/shields, 4, TRUE)
			var/obj/item/sword = new /obj/item/rogueweapon/sword/sabre/shamshir(H)
			H.equip_to_slot(sword, SLOT_BELT_R)
			var/obj/item/shield = new /obj/item/rogueweapon/shield/tower/metal(H)
			H.equip_to_slot(shield, SLOT_BACK_R)
		if ("MY BARE HANDS!!!")
			H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
			ADD_TRAIT(H, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_STRONGBITE, TRAIT_GENERIC)
			var/obj/item/katar = new /obj/item/rogueweapon/katar(H)
			H.equip_to_slot(katar, SLOT_BELT_R)
			var/obj/item/knuckles = new /obj/item/rogueweapon/knuckles/eora(H)
			H.equip_to_slot(knuckles, SLOT_IN_BACKPACK)
		if("Dual Wield")
			H.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
			var/obj/item/sabre1 = new /obj/item/rogueweapon/sword/sabre/shamshir(H)
			var/obj/item/sabre2 = new /obj/item/rogueweapon/sword/sabre/shamshir(H)
			H.equip_to_slot(sabre1, SLOT_BELT_R)
			H.equip_to_slot(sabre2, SLOT_BACK_R)


/datum/outfit/job/roguetown/disciple/proc/naledi_equip(mob/living/carbon/human/H)
	backpack_contents = list(/obj/item/roguekey/inquisition = 1)
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
	cloak = /obj/item/clothing/cloak/psydontabard/alt
	H.adjust_skillrank(/datum/skill/combat/unarmed, 5, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.adjust_skillrank(/datum/skill/magic/arcane, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
	H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.change_stat("strength", 3)
	H.change_stat("speed", 2)
	H.change_stat("endurance", 2)
	H.change_stat("constitution", 1)
	H.change_stat("perception", -1)
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch) // Pre-set spell list
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/sickness)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/forcewall)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/self/message)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/summonrogueweapon/bladeofpsydon)
		ADD_TRAIT(H, TRAIT_CIVILIZEDBARBARIAN, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_INQUISITION, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_OUTLANDER, TRAIT_GENERIC)		//You're a foreigner, a guest of the realm.
		ADD_TRAIT(H, TRAIT_ARCYNE_T1, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_SILVER_BLESSED, TRAIT_GENERIC)//Given they don't have the psyblessed silver. Puts them in line with the Inquisitor.
		H.grant_language(/datum/language/celestial)
