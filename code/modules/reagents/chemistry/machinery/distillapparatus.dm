/obj/machinery/distillapparatus
	name = "distillation apparatus"
	desc = "Used distill."
	density = FALSE
	layer = BELOW_OBJ_LAYER
	icon = 'icons/obj/distillapparatus.dmi'
	icon_state = "nothing"
	use_power = FALSE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = /obj/item/circuitboard/machine/distillapparatus
	var/obj/item/reagent_containers/beaker1 = null
	var/obj/item/reagent_containers/beaker2 = null
	var/fuel = 200 //The initial fuel value sets the max fuel value.
	var/state = FALSE

/obj/machinery/distillapparatus/Initialize()
	create_reagents(0)
	updatesprites()
	. = ..()
	STOP_PROCESSING(SSmachines, src)

/obj/machinery/distillapparatus/on_deconstruction()
	beaker1.forceMove(drop_location())
	beaker2.forceMove(drop_location())
	beaker1 = null
	beaker2 = null
	return ..()

/obj/machinery/distillapparatus/proc/check_menu(mob/living/user)
	if(!istype(user))
		return FALSE
	if(user.incapacitated() || !user.Adjacent(src))
		return FALSE
	return TRUE

/obj/machinery/distillapparatus/proc/updatesprites()
	overlays = null
	icon_state = "nothing"
	if(beaker1 != null || beaker2 != null)
		icon_state = "both"
		if(beaker1 == null)
			icon_state = "receiver"
		else if(beaker2 == null)
			icon_state = "boiling"
	if(state)
		icon_state += "_flame"
	if(beaker1 && reagents.total_volume > 0)
		var/mutable_appearance/I = null
		switch(reagents.total_volume / reagents.maximum_volume)
			if(0.01 to 0.1)
				I = image('icons/obj/distillapparatus.dmi', src, "boilingoverlay1")
			if(0.24 to 0.4)
				I = image('icons/obj/distillapparatus.dmi', src, "boilingoverlay2")
			if(0.4 to 0.59)
				I = image('icons/obj/distillapparatus.dmi', src, "boilingoverlay3")
			if(0.59 to 0.8)
				I = image('icons/obj/distillapparatus.dmi', src, "boilingoverlay4")
			if(0.8 to 1)
				I = image('icons/obj/distillapparatus.dmi', src, "boilingoverlay5")
		if(I)
			I.color = mix_color_from_reagents(reagents.reagent_list)
			overlays += I
	if(beaker2 && beaker2.reagents.total_volume > 0)
		var/mutable_appearance/I = null
		switch(beaker2.reagents.total_volume / beaker2.reagents.maximum_volume)
			if(0 to 0.2)
				I = image('icons/obj/distillapparatus.dmi', src, "receiveroverlay1")
			if(0.2 to 0.4)
				I = image('icons/obj/distillapparatus.dmi', src, "receiveroverlay2")
			if(0.4 to 0.6)
				I = image('icons/obj/distillapparatus.dmi', src, "receiveroverlay3")
			if(0.6 to 0.8)
				I = image('icons/obj/distillapparatus.dmi', src, "receiveroverlay4")
			if(0.8 to 1)
				I = image('icons/obj/distillapparatus.dmi', src, "receiveroverlay5")
			if(0)
				I = null
		if(I)
			I.color = mix_color_from_reagents(beaker2.reagents.reagent_list)
			overlays += I

/obj/machinery/distillapparatus/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/reagent_containers) && !(I.item_flags & ABSTRACT) && I.is_open_container())
		var/list/choices[] = list(
			"Fill Boiling Flask" = image(icon = 'icons/obj/distillapparatus.dmi', icon_state = "fillboiling"),
			"Place Receiver Flask" = image(icon = 'icons/obj/distillapparatus.dmi', icon_state = "placereceiver"),
			"Refuel" = image(icon = 'icons/obj/distillapparatus.dmi', icon_state = "fuelburner")
			)
		var/list/choice = show_radial_menu(user, src, choices, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE)
		if(choice == "Fill Boiling Flask" && !beaker1 && I != null)
			if(user.transferItemToLoc(I, src))
				beaker1 = I
				to_chat(user, "You pour \the [beaker1]'s contents into the boiling flask.")
				reagents.maximum_volume = beaker1.reagents.maximum_volume
				reagents.chem_temp = beaker1.reagents.chem_temp
				beaker1.reagents.trans_to(src, beaker1.reagents.total_volume)
		else if(choice == "Place Receiver Flask" && !beaker2 && I != null)
			if(user.transferItemToLoc(I, src))
				beaker2 = I
				to_chat(user, "You place \the [beaker2] under the spout of the condenser.")
		else if(choice == "Refuel")
			var/obj/item/reagent_containers/B = I
			var/check = FALSE
			var/fuelneed = 0
			for(var/reagent in B.reagents.reagent_list)
				var/datum/reagent/R = reagent
				if(R.id == "welding_fuel")
					var/fuelvalue = 10 //Fuel per vol. Adjust as needed.
					fuelneed = min(round((initial(fuel) - fuel) / fuelvalue), R.volume)
					reagents.remove_reagent(R.id, fuelneed)
					fuel += fuelneed * fuelvalue
					check = TRUE
					break
			if(check && fuelneed <= 0)
				to_chat(user, "The burner cannot accept anymore fuel.")
			else if(check)
				to_chat(user, "You transfer [fuelneed] units of welding fuel from \the [I] to the burner.")
			else
				to_chat(user, "\the [I] has no welding fuel.")
	updatesprites()
	if(default_unfasten_wrench(user, I))
		return
	if(default_deconstruction_screwdriver(user, icon_state, icon_state, I))
		update_icon()
		return
	if(default_deconstruction_crowbar(I))
		return

/obj/machinery/distillapparatus/attack_hand(mob/living/user, params)
	var/list/choices[] = list(
		"Empty Boiling Flask" = image(icon = 'icons/obj/distillapparatus.dmi', icon_state = "emptyboiling"),
		"Remove Receiver Flask" = image(icon = 'icons/obj/distillapparatus.dmi', icon_state = "takereceiver"),
		"Toggle Heating" = image(icon = 'icons/obj/distillapparatus.dmi', icon_state = "burner")
		)
	var/list/choice = show_radial_menu(user, src, choices, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE)
	switch(choice)
		if("Empty Boiling Flask")
			if(beaker1 == null)
				return
			if(state)
				STOP_PROCESSING(SSmachines, src)
				state = FALSE
				to_chat(user, "You shut off the burner then pour the contents of the boiling flask into \the [beaker1].")
			else
				to_chat(user, "You pour the contents of the boiling flask into \the [beaker1].")
			reagents.trans_to(beaker1, reagents.total_volume)
			user.put_in_hands(beaker1)
			beaker1 = null
		if("Remove Receiver Flask")
			if(beaker2 == null)
				return
			user.put_in_hands(beaker2)
			beaker2 = null
			to_chat(user, "You pick up the receiver flask.")
		if("Toggle Heating")
			if(beaker1 == null)
				return
			if(state)
				STOP_PROCESSING(SSmachines, src)
				to_chat(user, "You stop heating the boiling flask.")
				state = FALSE
			else
				START_PROCESSING(SSmachines, src)
				to_chat(user, "You begin heating the boiling flask.")
				state = TRUE
	updatesprites()

/obj/machinery/distillapparatus/process()
	if(fuel <= 0)
		state = FALSE
		updatesprites()
		return PROCESS_KILL
	reagents.chem_temp += 10
	reagents.handle_reactions()
	for(var/datum/reagent/R in reagents.reagent_list)
		if(R.phasepercents["GAS"] > 0)
			var/gasvar = R.phasepercents["GAS"]
			R.phasepercents["GAS"] = 0
			var/leftover = R.phasepercents["SOLID"] + R.phasepercents["LIQUID"]
			if(R.phasepercents["SOLID"] > 0)
				R.phasepercents["SOLID"] /= leftover
			if(R.phasepercents["LIQUID"] > 0)
				R.phasepercents["LIQUID"] /= leftover
			if(beaker2 != null)
				beaker2.reagents.add_reagent(R.id, R.volume * gasvar, null, reagtemp = 300, no_react = 0, phase = null)
			reagents.remove_reagent(R.id, R.volume * gasvar)
	fuel -= 1
	updatesprites()

//////////
//Circuit Board
//////////

/obj/item/circuitboard/machine/distillapparatus
	name = "distillation apparatus"
	build_path = /obj/machinery/sepfunnel
	req_components = list(
		/obj/item/stack/sheet/glass = 20,
		/obj/item/stack/sheet/metal = 10,
		/obj/item/stack/rods = 6
		)

//This was coded by Fulminating Gold for Crashpoint3.
//I do not give any server allowing ERP permission to use this code.
//I simply do not want my code to be associated with an ERP server, and it's as simple as that.