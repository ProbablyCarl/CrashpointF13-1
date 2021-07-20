obj/item/gun/ballistic/automatic/modifiablefirearm
	name = "Testing Glock"
	desc = "Yoo she got a mothafuckin' glock."
	icon = 'icons/obj/guns/modifiableguns.dmi'
	icon_state = "ColtN99"
	fire_sound = 'sound/f13weapons/ninemil.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	var/modifiable = FALSE
	can_suppress = FALSE
	mag_type = /obj/item/ammo_box/magazine/m9mm
	//Stats
	spread = 18
	fire_delay = 2
	extra_damage = 17
	extra_penetration = 10
	burst_size = 1
	mag_type = /obj/item/ammo_box/magazine/m9mm
	//Base Stats
	var/base_mag_type = null
	var/base_size = 1
	//Sprite Attachment Points
	var/list/xattachlist = list("east" = 26, "west" = 9, "south" = 21, "north" = 15) //x coordinate for attachment point
	var/list/yattachlist = list("east" = 20, "west" = 17, "south" = 16, "north" = 21) //y coordinate for attachment point
	//Attachment Points
	var/obj/item/gunpart/attachableparts[] = list("internal" = /obj/item/gunpart/BHS_Receiver, "internal2" = null, "east" = null, "west" = null, "south" = null, "north" = null)
	//Blacklisted Parts
	var/obj/item/gunpart/blacklistedparts[] = list("stock", "barrel", "receiver", "scope", "burstcam")

/obj/item/gun/ballistic/automatic/modifiablefirearm/Initialize()
	. = ..()

	base_mag_type = mag_type

	updatestats()
	updatesprites()
	updatesize()

/obj/item/gun/ballistic/automatic/modifiablefirearm/proc/updatestats()
	//base stats
	spread = initial(spread)
	fire_delay = initial(fire_delay)
	extra_damage = initial(extra_damage)
	extra_penetration = initial(extra_penetration)
	set_burst_size = initial(set_burst_size)
	//scope
	zoomable = FALSE
	azoom = null
	zoom_amt = 10
	zoom_out_amt = 13
	//"for loop" for changing stats
	for(var/i = 1; i <= attachableparts.len; i++)
		if(attachableparts[attachableparts[i]] != null)
			spread = spread * (1 - attachableparts[attachableparts[i]].accuracymodifier)
			fire_delay = fire_delay * (1 - attachableparts[attachableparts[i]].firedelaymodifier)
			extra_damage = extra_damage * (1 + attachableparts[attachableparts[i]].damagemodifier)
			extra_penetration = extra_penetration * (1 + attachableparts[attachableparts[i]].penetrationmodifier)
			set_burst_size = set_burst_size + attachableparts[attachableparts[i]].burstmodifier //changes when refreshed
			if(attachableparts[attachableparts[i]].parttype == "scope") //works but doesnt add scope
				zoomable = TRUE
				build_zooming()

/obj/item/gun/ballistic/automatic/modifiablefirearm/proc/updatesprites()
	overlays = null
	for(var/i = 1; i <= attachableparts.len; i++)
		if(attachableparts[attachableparts[i]] != null)
			var/image/I = image(attachableparts[attachableparts[i]].icon, src, "[attachableparts[attachableparts[i]].icon_state]-A")
			I.pixel_x = xattachlist[attachableparts[i]] - attachableparts[attachableparts[i]].attachx
			I.pixel_y = yattachlist[attachableparts[i]] - attachableparts[attachableparts[i]].attachy
			overlays += I

/obj/item/gun/ballistic/automatic/modifiablefirearm/proc/updatesize()
	var/size = base_size
	for(var/i = 1; i <= attachableparts.len; i++)
		if(attachableparts[attachableparts[i]] != null)
			size += attachableparts[attachableparts[i]].size
	if(size < 1)
		w_class = WEIGHT_CLASS_SMALL
		weapon_weight = WEAPON_LIGHT
	else if(size <= 3)
		w_class = WEIGHT_CLASS_NORMAL
		weapon_weight = WEAPON_MEDIUM
	else
		w_class = WEIGHT_CLASS_BULKY
		weapon_weight = WEAPON_HEAVY

obj/item/gun/ballistic/automatic/modifiablefirearm/attackby(obj/item/I, mob/user, params)
	..()
	//adding parts
	if(istype(I, /obj/item/gunpart) && modifiable && do_after(user, 8, target = src))
		var/obj/item/gunpart/A = I
		for(var/i = 1; i <= attachableparts.len; i++)
			if(A.partlocation == "[attachableparts[i]]" && blacklistedparts.Find(A.parttype) <= 0)
				if(attachableparts[attachableparts[i]] != null)
					user.dropItemToGround(attachableparts[attachableparts[i]])
				attachableparts[attachableparts[i]] = A
				attachableparts[attachableparts[i]].forceMove(src)
				playsound(src, "gun_insert_full_magazine", 70, 1)
				updatestats()
				updatesprites()
				updatesize()
				return
	//open or close for modifications
	if(istype(I, /obj/item/screwdriver))
		if(modifiable && attachableparts[attachableparts[1]] != null && do_after(user, 20, target = src))
			playsound(src, "gun_insert_full_magazine", 70, 1)
			mag_type = base_mag_type
			modifiable = FALSE
			to_chat(user, "<span class='notice'>You screw the \the [src] closed for usage.</span>")
		else if(!modifiable && do_after(user, 20, target = src))
			playsound(src, "gun_insert_full_magazine", 70, 1)
			user.dropItemToGround(magazine)
			user.dropItemToGround(chambered)
			mag_type = null
			magazine = null
			chambered = null
			modifiable = TRUE
			to_chat(user, "<span class='notice'>You screw the \the [src] open for modification. </span>")
		return
	//removing parts
	if(istype(I, /obj/item/crowbar) && modifiable && do_after(user, 15, target = src))
		to_chat(user, "<span class='notice'>You remove the parts from \the [src]. </span>")
		for(var/i = 1; i <= attachableparts.len; i++)
			if(attachableparts[attachableparts[i]] != null)
				user.dropItemToGround(attachableparts[attachableparts[i]])
				attachableparts[attachableparts[i]] = null
		updatestats()
		updatesprites()
		updatesize()
		return