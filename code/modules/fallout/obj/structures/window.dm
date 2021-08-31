//Fallout 13 main windows directory

/obj/structure/window/fulltile/ruins
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "ruinswindow"
	dir = 5
	max_integrity = 20
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/ruins/broken
	icon_state = "ruinswindowbroken"
	max_integrity = 1

//WHY DO WE NOT HAVE WINDOW SMOOTHING PROPERLY AHHHHHHHHHH FUCK

/obj/structure/window/fulltile/ruins/vert_broken
	icon_state = "ruinswindowbrokenvertical"
	max_integrity = 1

/obj/structure/window/fulltile/ruins/vertical
	icon_state = "ruinswindowvertical"
	max_integrity = 1

/////////

/obj/structure/window/fulltile/house
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "housewindow"
	dir = 5
	max_integrity = 40
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/house/broken
	icon_state = "housewindowbroken"
	max_integrity = 1

//WHY DO WE NOT HAVE WINDOW SMOOTHING PROPERLY AHHHHHHHHHH FUCK

/obj/structure/window/fulltile/house/vert_broken
	icon_state = "housewindowverticalbroken"
	max_integrity = 1

/obj/structure/window/fulltile/house/vertical
	icon_state = "housewindowvertical"
	max_integrity = 1

/////////

/obj/structure/window/fulltile/wood
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "woodwindow"
	dir = 5
	max_integrity = 50
	fulltile = 1
	smooth = 0
	level = 3

/obj/structure/window/fulltile/wood/broken
	icon_state = "woodwindowbroken"
	max_integrity = 1

/obj/structure/window/fulltile/city
	icon = 'icons/obj/wood_window.dmi'
	icon_state = "city"
	dir = 5
	max_integrity = 100
	fulltile = 1
	smooth = 0
	level = 3
/*	smooth = SMOOTH_TRUE
	canSmoothWith = list(
		/obj/structure/window/fulltile,
		/obj/structure/window/reinforced/fulltile,
		/obj/structure/window/reinforced/tinted/fulltile,
		/obj/structure/window/plasma/fulltile,
		/obj/structure/window/plasma/reinforced/fulltile,
		/turf/closed/wall,
		/turf/closed/wall/r_wall,
		/turf/closed/wall/rust,
		/turf/closed/wall/r_wall/rust,
		/obj/structure/simple_door,
		/turf/closed/wall/r_wall/f13superstore,
		/turf/closed/wall/r_wall/f13composite,
		/turf/closed/wall/f13wood,
		/obj/structure/window/fulltile/city
		)*/

//WHY DO WE NOT HAVE WINDOW SMOOTHING PROPERLY AHHHHHHHHHH FUCK

/obj/structure/window/fulltile/city/broken
	icon_state = "citybroken"
	max_integrity = 1

/obj/structure/window/fulltile/city/vert_broken
	icon_state = "cityverticalbroken"
	max_integrity = 1

/obj/structure/window/fulltile/city/vertical
	icon_state = "cityvertical"
	max_integrity = 1

/obj/structure/window/fulltile/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stack/sheet/mineral/wood))
		var/obj/item/stack/sheet/mineral/wood/Z = W
		if(locate(/obj/structure/barricade/wooden/planks) in get_turf(src))
			to_chat(user, "<span class='warning'>This window is already barricaded!</span>")
			return
		if(!anchored)
			to_chat(user, "<span class='warning'>The window must be firmly anchored to the ground!</span>")
			return
		if(Z.get_amount() < 3)
			to_chat(user, "<span class='warning'>You need atleast 3 wooden planks to reinforce this window!</span>")
			return
		else
			to_chat(user, "<span class='notice'>You start adding [Z] to [src]...</span>")
			if(do_after(user, 50, target=src))
				if(locate(/obj/structure/barricade/wooden/planks) in get_turf(src))
					to_chat(user, "<span class='warning'>This window is already barricaded!</span>")
					return
				if(!anchored)
					to_chat(user, "<span class='warning'>The window must be firmly anchored to the ground!</span>")
					return
				if(Z.get_amount() < 3)
					to_chat(user, "<span class='warning'>You need atleast 3 wooden planks to reinforce this window!</span>")
					return
				Z.use(3)
				new /obj/structure/barricade/wooden/planks(get_turf(src))
				user.visible_message("<span class='notice'>[user] reinforces the window with some planks</span>", "<span class='notice'>You reinforce the window with some planks.</span>")
				return
	else if(!istype(W, /obj/item/stack/sheet/mineral/wood))
		if(locate(/obj/structure/barricade/wooden/planks) in get_turf(src))
			for(var/obj/structure/barricade/wooden/planks/P in loc)
				P.attackby(W, user, params)
				return TRUE
		else
			return ..()
