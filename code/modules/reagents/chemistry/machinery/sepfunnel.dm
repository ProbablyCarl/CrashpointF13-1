//////////
//Separatory Funnel
//////////

/obj/machinery/sepfunnel
	name = "Separatory Funnel"
	desc = "Used to separate chemicals."
	density = FALSE
	layer = BELOW_OBJ_LAYER
	icon = 'icons/obj/sepfunnel.dmi'
	icon_state = "nobeaker"
	use_power = FALSE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = /obj/item/circuitboard/machine/sepfunnel
	var/obj/item/reagent_containers/beaker1 = null
	var/obj/item/reagent_containers/beaker2 = null

/obj/machinery/sepfunnel/Initialize()
	. = ..()
	updatesprites()

/obj/machinery/sepfunnel/on_deconstruction()
	beaker1.forceMove(drop_location())
	beaker2.forceMove(drop_location())
	beaker1 = null
	beaker2 = null
	return ..()

/obj/machinery/sepfunnel/proc/check_menu(mob/living/user)
	if(!istype(user))
		return FALSE
	if(user.incapacitated() || !user.Adjacent(src))
		return FALSE
	return TRUE

/obj/machinery/sepfunnel/proc/updatesprites()
	icon_state = "nobeaker"
	if(beaker1 != null || beaker2 != null)
		icon_state = "bothbeakers"
		if(beaker1 == null)
			icon_state = "bottombeaker"
		else if(beaker2 == null)
			icon_state = "topbeaker"


/obj/machinery/sepfunnel/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/reagent_containers) && !(I.item_flags & ABSTRACT) && I.is_open_container())
		var/list/choices[] = list(
			"Beaker 1" = image(icon = 'icons/obj/sepfunnel.dmi', icon_state = "beaker1"),
			"Beaker 2" = image(icon = 'icons/obj/sepfunnel.dmi', icon_state = "beaker2")
			)
		var/list/choice = show_radial_menu(user, src, choices, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE)
		if(choice == "Beaker 1" && !beaker1 && I != null)
			if(user.transferItemToLoc(I, src))
				beaker1 = I
				to_chat(user, "You pour \the [beaker1]'s contents into the separatory funnel, then place it beside the funnel.")
		else if(choice == "Beaker 2" && !beaker2 && I != null)
			if(user.transferItemToLoc(I, src))
				beaker2 = I
				to_chat(user, "You place \the [beaker2] under the spout of the separatory funnel.")
		updatesprites()
		return
	if(default_unfasten_wrench(user, I))
		return
	if(default_deconstruction_screwdriver(user, icon_state, icon_state, I))
		update_icon()
		return
	if(default_deconstruction_crowbar(I))
		return

/obj/machinery/sepfunnel/attack_hand(mob/living/user, params)
	var/list/choices[] = list(
		"Remove Beaker 1" = image(icon = 'icons/obj/sepfunnel.dmi', icon_state = "beaker1"),
		"Remove Beaker 2" = image(icon = 'icons/obj/sepfunnel.dmi', icon_state = "beaker2"),
		"Separate The Next Phase" = image(icon = 'icons/obj/sepfunnel.dmi', icon_state = "transfer")
		)
	var/list/choice = show_radial_menu(user, src, choices, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE)
	switch(choice)
		if("Remove Beaker 1")
			if(beaker1 == null)
				return
			user.put_in_hands(beaker1)
			beaker1 = null
			to_chat(user, "You pour the contents of the separatory funnel into \the [beaker1] on the table beside it, then you put the separatory funnel back on the stand and pick \the [beaker1] up.")
		if("Remove Beaker 2")
			if(beaker2 == null)
				return
			user.put_in_hands(beaker2)
			beaker2 = null
			to_chat(user, "You take \the [beaker1] out from under the separatory funnel.")
		if("Separate The Next Phase")
			if(beaker1 == null || beaker2 == null)
				return
			beaker1.reagents.trans_id_to(beaker2, beaker1.reagents.reagent_list[beaker1.reagents.reagent_list.len].id, beaker1.reagents.reagent_list[beaker1.reagents.reagent_list.len].volume)
			to_chat(user, "You transfer one reagent from the separatory funnel to \the [beaker2].")
	updatesprites()

//////////
//Circuit Board
//////////

/obj/item/circuitboard/machine/sepfunnel
	name = "separatory funnel"
	build_path = /obj/machinery/sepfunnel
	req_components = list(
		/obj/item/stack/cable_coil = 5,
		/obj/item/stack/sheet/glass = 10,
		/obj/item/stack/sheet/metal = 10,
		/obj/item/stack/rods = 10
		)

//This was coded by Fulminating Gold for Crashpoint3.
//I do not give any server allowing ERP permission to use this code.
//I simply do not want my code to be associated with an ERP server, and it's as simple as that.