//////////
//Pill Press
//////////

/obj/machinery/pillpress
	name = "pill press"
	desc = "Used produce pills from powder."
	density = FALSE
	layer = BELOW_OBJ_LAYER
	icon = 'icons/obj/pillpress.dmi'
	icon_state = "prepared"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	var/maxpill = 50
	var/pillname = ""
	var/prepared = FALSE

/obj/machinery/pillpress/Initialize()
	create_reagents(50)
	updatesprites()
	. = ..()

/obj/machinery/pillpress/on_deconstruction()
	if(prepared)
		var/obj/item/reagent_containers/pill/P = new /obj/item/reagent_containers/pill
		P.name = "[pillname] pill"
		P.icon_state = "pill9"
		reagents.trans_to(P, reagents.total_volume)
		P.forceMove(drop_location())
		prepared = FALSE
	return ..()

/obj/machinery/pillpress/proc/check_menu(mob/living/user)
	if(!istype(user))
		return FALSE
	if(user.incapacitated() || !user.Adjacent(src))
		return FALSE
	return TRUE

/obj/machinery/pillpress/proc/updatesprites()
	if(prepared)
		icon_state = "pressed"
	else if(reagents.total_volume == 0)
		icon_state = "parts"
	else
		icon_state = "prepared"

/obj/machinery/pillpress/attackby(obj/item/I, mob/living/user, params)
	if(default_unfasten_wrench(user, I))
		return
	if(default_deconstruction_screwdriver(user, icon_state, icon_state, I))
		update_icon()
		return
	if(default_deconstruction_crowbar(I)) //no deconstruction for cell replacement
		return
	var/list/choices[] = list(
			"PRESS" = image(icon = 'icons/obj/pillpress.dmi', icon_state = "press"),
			"FILL" = image(icon = 'icons/obj/pillpress.dmi', icon_state = "fill")
			)
	var/list/choice = show_radial_menu(user, src, choices, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE)
	if(!prepared && istype(I, /obj/item/reagent_containers) && !(I.item_flags & ABSTRACT) && I.is_open_container() && choice == "FILL")
		var/obj/item/reagent_containers/RC = I
		if(reagents.total_volume >= maxpill && RC.reagents.total_volume != 0)
			to_chat(user, "The press mold is topped up.")
		else if(reagents.total_volume != 0)
			to_chat(user, "You add some reagents to the press mold.")
		else
			to_chat(user, "You prepare the press mold and some reagents.")
			RC.reagents.trans_to(src, min(maxpill - reagents.total_volume, RC.reagents.total_volume))
	else if(choice == "PRESS" && !prepared)
		if(I.w_class == WEIGHT_CLASS_BULKY)
			if(reagents.total_volume == 0)
				to_chat(user, "The press is empty, dumbfuck.")
			else if(reagents.total_volume != 0  && do_after(user, 20, target = src))
				to_chat(user, "You hammer the press punch down.")
				prepared = TRUE
		else
			to_chat(user, "You attempt to hammer the press punch, but \the [I] is too light. Use a heavier item.")
	updatesprites()

/obj/machinery/pillpress/attack_hand(mob/living/user, params)
	var/list/choices[] = list(
			"COLLECT" = image(icon = 'icons/obj/pillpress.dmi', icon_state = "pressed"),
			"EMPTY" = image(icon = 'icons/obj/pillpress.dmi', icon_state = "empty")
			)
	var/list/choice = show_radial_menu(user, src, choices, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE)
	if(choice == "COLLECT")
		if(prepared)
			var/obj/item/reagent_containers/pill/P = new /obj/item/reagent_containers/pill
			P.name = "[pillname] pill"
			P.icon_state = "pill9"
			reagents.trans_to(P, reagents.total_volume)
			P.forceMove(drop_location())
			prepared = FALSE
		else
			to_chat(user, "There is nothing to collect.")
	else if(choice == "EMPTY")
		if(prepared)
			to_chat(user, "Take the pill out of the mold first.")
		else
			reagents.clear_reagents()
	updatesprites()

//////////
//Circuit Board
//////////

/obj/item/circuitboard/machine/pillpress
	name = "pill press"
	build_path = /obj/machinery/sepfunnel
	req_components = list(
		/obj/item/stack/sheet/metal = 5,
		/obj/item/stack/rods = 5
		)

//This was coded by Fulminating Gold for Crashpoint3.
//I do not give any server allowing ERP permission to use this code.
//I simply do not want my code to be associated with an ERP server, and it's as simple as that.