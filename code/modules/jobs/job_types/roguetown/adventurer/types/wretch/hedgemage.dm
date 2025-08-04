// Hedge Mage, a pure mage adventurer sidegrade to Necromancer without the Necromancer free spells and forced patron. More spellpoints, otherwise mostly the same.
/datum/advclass/wretch/hedgemage
	name = "Hedge Mage"
	tutorial = "They reject your genius, they cast you out, they call you unethical. They do not understand the SACRIFICES you must make. But it does not matter anymore, your power eclipse any of those fools, save for the Court Magos themselves. Show them true magic. Why do I have an eyepatch?"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/wretch/hedgemage
	category_tags = list(CTAG_WRETCH)
	traits_applied = list(TRAIT_STEELHEARTED, TRAIT_OUTLANDER, TRAIT_MAGEARMOR, TRAIT_OUTLAW, TRAIT_ARCYNE_T3, TRAIT_HERESIARCH)

// Hedge Mage on purpose has nearly the same fit as a Adv Mage / Mage Associate who cast conjure armor roundstart. Call it meta disguise.
/datum/outfit/job/roguetown/wretch/hedgemage/pre_equip(mob/living/carbon/human/H)
	mask = /obj/item/clothing/mask/rogue/eyepatch // Chuunibyou up to 11.
	head = /obj/item/clothing/head/roguetown/roguehood/black
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy
	if(should_wear_femme_clothes(H))
		armor = /obj/item/clothing/suit/roguetown/armor/leather/studded/bikini
	else
		armor = /obj/item/clothing/suit/roguetown/armor/leather/studded
	gloves = /obj/item/clothing/gloves/roguetown/angle
	cloak = /obj/item/clothing/suit/roguetown/shirt/robe/black
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/reagent_containers/glass/bottle/rogue/manapot
	neck = /obj/item/clothing/neck/roguetown/leather // No iron gorget vs necro. They will have to acquire one in round.
	beltl = /obj/item/rogueweapon/huntingknife
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/rogueweapon/woodstaff/ruby
	backpack_contents = list(/obj/item/spellbook_unfinished/pre_arcyne = 1, /obj/item/roguegem/amethyst = 1, /obj/item/storage/belt/rogue/pouch/coins/poor = 1, /obj/item/flashlight/flare/torch/lantern/prelit = 1, /obj/item/rope/chain = 1)
	H.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 5, TRUE)
	H.adjust_skillrank(/datum/skill/craft/alchemy, 4, TRUE)
	H.adjust_skillrank(/datum/skill/magic/arcane, 4, TRUE)
	H.dna.species.soundpack_m = new /datum/voicepack/male/wizard()
	H.cmode_music = 'sound/music/combat_bandit_mage.ogg'
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/magic/arcane, 1, TRUE)
		H?.mind.adjust_spellpoints(6)
	H.change_stat("intelligence", 4) // Same stat spread as necromancer, same reasoning
	H.change_stat("perception", 2)
	H.change_stat("endurance", 1)
	H.change_stat("speed", 1)
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)
	var/classes = list("Hedge Mage","Rogue Mage")
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes
	switch(classchoice)
		if("Hedge Mage")
			H?.mind.adjust_spellpoints(27)
		if("Rogue Mage")
			H?.mind.adjust_spellpoints(21)
			ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	wretch_select_bounty(H)
