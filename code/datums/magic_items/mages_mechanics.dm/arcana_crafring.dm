/datum/crafting_recipe/roguetown/arcana
	req_table = TRUE
	tools = list()
	category = "Arcana"
	abstract_type = /datum/crafting_recipe/roguetown/arcana
	skillcraft = /datum/skill/magic/arcane
	subtype_reqs = TRUE

/datum/crafting_recipe/roguetown/arcana/amethyst
	name = "amythortz (1 Stone, 5oz Mana Potion)"
	result = /obj/item/roguegem/amethyst
	reqs = list(/obj/item/natural/stone = 1,
				/datum/reagent/medicine/manapot = 15)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/artifact
	name = "runed artifact (1 Rock, 5oz Mana Potion)"
	result = /obj/item/magic/artifact
	reqs = list(/obj/item/natural/rock = 1,
				/datum/reagent/medicine/manapot = 15)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/chalk
	name = "chalk (1 Cinnabar, 5oz Mana Potion)"
	result = /obj/item/chalk
	reqs = list(/obj/item/rogueore/cinnabar = 1,
				/datum/reagent/medicine/manapot = 15)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/infernalfeather
	name = "infernal feather (1 Feather, 2 infernal ash)"
	result = /obj/item/natural/feather/infernal
	reqs = list(/obj/item/natural/feather = 1,
				/obj/item/magic/infernalash = 2)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/sendingstone
	name = "sending stones (2 Stones, 2 Amythortz, 1 Arcanic Meld)"
	result = /obj/item/sendingstonesummoner
	reqs = list(/obj/item/natural/stone = 2,
				/obj/item/roguegem/amethyst = 2,
				/obj/item/magic/melded/t1 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/voidlamptern
	name = "void lamptern - (1 Lantern, 1 Obsidian, 1 Arcanic Meld)"
	result = /obj/item/flashlight/flare/torch/lantern/voidlamptern
	reqs = list(/obj/item/flashlight/flare/torch/lantern = 1,
				/obj/item/magic/obsidian = 1,
				/obj/item/magic/melded/t1 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/nomagiccollar
	name = "mana binding collar - (1 Collar, 1 Gem, 1 Dense Arcanic Meld)"
	result = /obj/item/clothing/neck/roguetown/collar/leather/nomagic
	reqs = list(/obj/item/clothing/neck/roguetown/collar = 1,
				/obj/item/roguegem = 1,
				/obj/item/magic/melded/t2 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/nomagicglove
	name = "mana binding gloves - (1 Gloves, 1 Gem, 1 Sorcerous Weave)"
	result = /obj/item/clothing/gloves/roguetown/nomagic
	reqs = list(/obj/item/clothing/gloves/roguetown/leather = 1,
				/obj/item/roguegem = 1,
				/obj/item/magic/melded/t3 = 1)
	craftdiff = 3

/datum/crafting_recipe/roguetown/arcana/temporalhourglass
	name = "temporal hourglass - (4 Planks, 1 Leyline Shard, 1 Dense Arcanic Meld)"
	result = /obj/item/hourglass/temporal
	reqs = list(/obj/item/natural/wood/plank = 4,
				/obj/item/magic/leyline = 1,
				/obj/item/magic/melded/t2 = 1)
	craftdiff = 3


/datum/crafting_recipe/roguetown/arcana/shimmeringlens
	name = "shimmering lens - (1 Iridescent Scale, 1 Leyline, 1 Dense Arcanic Meld)"
	result = /obj/item/clothing/ring/active/shimmeringlens
	reqs = list(/obj/item/magic/iridescentscale = 1,
				/obj/item/magic/leyline = 1,
				/obj/item/magic/melded/t2 = 1)
	craftdiff = 3

/datum/crafting_recipe/roguetown/arcana/mimictrinket
	name = "mimic trinket - (2 Planks, 1 Arcanic Meld)"
	result = /obj/item/mimictrinket
	reqs = list(/obj/item/natural/wood/plank = 2,
				/obj/item/magic/melded/t1 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/binding
	name = "binding shackles - (2 Chains, 1 Arcanic Meld)"
	result = /obj/item/rope/chain/bindingshackles
	reqs = list(/obj/item/rope/chain = 2,
				/obj/item/magic/melded/t1 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/bindingt2
	name = "binding shackles (T2) - (1 Binding Shackles, 1 Dense Arcanic Meld)"
	result = /obj/item/rope/chain/bindingshackles/t2
	reqs = list(/obj/item/rope/chain/bindingshackles = 1,
				/obj/item/magic/melded/t2 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/bindingt3
	name = "binding shackles (T3) - (1 T2 Binding Shackles, 1 Sorcerous Weave)"
	result = /obj/item/rope/chain/bindingshackles/t3
	reqs = list(/obj/item/rope/chain/bindingshackles/t2 = 1,
				/obj/item/magic/melded/t3 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/bindingt4
	name = "binding shackles (T4) - (1 T3 Binding Shackles, 1 Arcanic Meld)"
	result = /obj/item/rope/chain/bindingshackles
	reqs = list(/obj/item/rope/chain/bindingshackles/t3 = 1,
				/obj/item/magic/melded/t4 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/bindingt5
	name = "binding shackles (T5) - (1 T4 Binding Shackles, 1 Arcanic Meld)"
	result = /obj/item/rope/chain/bindingshackles
	reqs = list(/obj/item/rope/chain/bindingshackles/t4 = 1,
				/obj/item/magic/melded/t5 = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/forge
	name = "infernal forge - (1 Infernal Core, 4 Stones)"
	req_table = FALSE
	result = /obj/machinery/light/rogue/forge/arcane
	reqs = list(/obj/item/magic/infernalcore = 1,
				/obj/item/natural/stone = 4)
	craftdiff = 3

/datum/crafting_recipe/roguetown/arcana/nullring
	name = "ring of null magic - (1 Gold Ring, 1 Voidstone)"
	result = /obj/item/clothing/ring/active/nomag
	reqs = list(/obj/item/clothing/ring/gold = 1,
				/obj/item/magic/voidstone = 1)
	craftdiff = 4

/datum/crafting_recipe/roguetown/arcana/meldt1
	name = "arcanic meld - (1 Infernal Ash, 1 Fairy Dust, 1 Elemental Mote)"
	result = /obj/item/magic/melded/t1
	reqs = list(/obj/item/magic/infernalash = 1,
				/obj/item/magic/fairydust = 1,
				/obj/item/magic/elementalmote = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/meldt2
	name = "dense arcanic meld - (1 Hellhound Fang, 1 Iridescent Scale, 1 Elemental Shard)"
	result = /obj/item/magic/melded/t2
	reqs = list(/obj/item/magic/hellhoundfang = 1,
				/obj/item/magic/iridescentscale = 1,
				/obj/item/magic/elementalshard = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/meldt3
	name = "sorcerous weave - (1 Molten Core, 1 Heartwood Core, 1 Elemental Fragment)"
	result = /obj/item/magic/melded/t3
	reqs = list(/obj/item/magic/infernalcore = 1,
				/obj/item/magic/heartwoodcore = 1,
				/obj/item/magic/elementalfragment = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/meldt4
	name = "magical confluence - (1 Abyssal Flame, 1 Sylvan Essence, 1 Elemental Relic)"
	result = /obj/item/magic/melded/t4
	reqs = list(/obj/item/magic/abyssalflame = 1,
				/obj/item/magic/sylvanessence = 1,
				/obj/item/magic/elementalrelic = 1)
	craftdiff = 2

/datum/crafting_recipe/roguetown/arcana/meldt5
	name = "arcanic abberation - (1 Magical Confluence, 1 Voidstone)"
	result = /obj/item/magic/melded/t5
	reqs = list(/obj/item/magic/melded/t4 = 1,
				/obj/item/magic/voidstone = 1)
	craftdiff = 2
