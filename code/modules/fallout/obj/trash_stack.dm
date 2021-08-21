/obj/item/storage/trash_stack
	name = "pile of garbage"
	desc = "a pile of garbage. Smells as good, as it looks, though it may contain something useful. Or may not"
	icon = 'icons/fallout/objects/crafting.dmi'
	icon_state = "Junk_1"
	anchored = TRUE
	density = FALSE
	component_type = /datum/component/storage/concrete/trash_stack

/obj/item/storage/trash_stack/New()
	. = ..()
	icon_state = "Junk_[rand(1,12)]"
	spawn_trash()

/obj/item/storage/trash_stack/attack_hand(mob/user)
	return MouseDrop(user)

/obj/item/storage/trash_stack/proc/spawn_trash()
	for(var/obj/item/I in generate_trash())
		I.loc = src

/obj/item/storage/trash_stack/proc/generate_trash()
	var/list/back = list()
	for(var/i=0, i<rand(1,4), i++)
		var/itemtype = pick(/obj/item/crafting/duct_tape,
		/obj/item/crafting/wonderglue,
		/obj/item/crafting/turpentine,
		/obj/item/crafting/abraxo,
		/obj/item/crafting/reloader,
		/obj/item/crafting/igniter,
		/obj/item/crafting/timer,
		/obj/item/crafting/sensor,
		/obj/item/stack/f13Cash/random/bottle_cap/low,
		/obj/item/stack/f13Cash/random/bottle_cap/med,
		/obj/item/stack/f13Cash/random/ncr/med,
		/obj/item/stack/f13Cash/random/denarius/low,
		/obj/item/reagent_containers/food/snacks/f13/bubblegum,
		/obj/item/reagent_containers/food/snacks/f13/bubblegum/large,
		/obj/item/reagent_containers/food/snacks/f13/cram,
		/obj/item/reagent_containers/food/snacks/f13/cram/large,
		/obj/item/reagent_containers/food/snacks/f13/yumyum,
		/obj/item/reagent_containers/food/snacks/f13/fancylads,
		/obj/item/reagent_containers/food/snacks/f13/sugarbombs,
		/obj/item/reagent_containers/food/snacks/f13/crisps,
		/obj/item/reagent_containers/food/snacks/f13/steak,
		/obj/item/reagent_containers/food/snacks/f13/specialapples,
		/obj/item/reagent_containers/food/snacks/f13/dandyapples,
		/obj/item/reagent_containers/food/snacks/f13/blamco,
		/obj/item/reagent_containers/food/snacks/f13/blamco/large,
		/obj/item/reagent_containers/food/snacks/f13/mechanic,
		/obj/item/reagent_containers/food/snacks/f13/instamash,
		/obj/item/reagent_containers/food/snacks/f13/porknbeans,
		/obj/item/reagent_containers/food/snacks/f13/borscht,
		/obj/item/reagent_containers/food/snacks/f13/dog,
		/obj/item/trash/f13/electronic/toaster,
		/obj/item/radio,
		/obj/item/reagent_containers/glass/bucket,
		/obj/item/crowbar,
		/obj/item/flashlight,
		/obj/item/extinguisher,
		/obj/item/multitool,
		/obj/item/weldingtool,
		/obj/item/screwdriver,
		/obj/item/wirecutters,
		/obj/item/wrench,
		/obj/item/clothing/head/welding,
		/obj/item/scalpel,
		/obj/item/circular_saw,
		/obj/item/surgicaldrill,
		/obj/item/retractor,
		/obj/item/cautery,
		/obj/item/hemostat,
		/obj/item/reagent_containers/glass/beaker,
		/obj/item/reagent_containers/glass/beaker/large,
		/obj/item/reagent_containers/syringe,
		/obj/item/ammo_casing/shotgun/buckshot,
		/obj/item/geiger_counter,
		/obj/item/storage/pill_bottle/chem_tin/mentats,
		/obj/item/storage/pill_bottle/chem_tin/fixer,
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/reagent_containers/food/drinks/bottle/orangejuice,
		/obj/item/reagent_containers/food/drinks/bottle/cognac,
		/obj/item/reagent_containers/food/drinks/bottle/whiskey,
		/obj/item/reagent_containers/hypospray/medipen/psycho)
		var/I = new itemtype(src)
		back += I
	return back
