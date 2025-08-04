#define INFERNAL_FLAME_COOLDOWN 20 SECONDS // Nerfed from RW version cuz Fire is strong and every 10 seconds is too OP.

// RW's Mythic Items. But I took out Temporal Rewind and Freezing as they were one hit CC

//T4 Enchantments

/datum/magic_item/mythic/briarcurse
	name = "Briar's curse"
	description = "Its grip seems thorny. Must hurt to use."
	var/last_used

/datum/magic_item/mythic/briarcurse/on_apply(var/obj/item/i)
	.=..()
	i.force = i.force + 10

/datum/magic_item/mythic/briarcurse/on_hit(obj/item/source, atom/target, mob/user, proximity_flag, click_parameters)
	.=..()
	if(isliving(target))
		var/mob/living/carbon/targeted = target
		targeted.adjustBruteLoss(10)
		to_chat(user, span_notice("[source] gouges you with it's sharp edges!"))
