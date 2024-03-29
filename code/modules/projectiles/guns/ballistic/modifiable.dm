obj/item/gun/ballistic/automatic/modifiablefirearm/M16A2
	name = "M16A2"
	desc = "A 5.56x45mm calliber rifle."
	icon = 'icons/obj/guns/modifiableguns.dmi'
	icon_state = "M16A2"
	fire_sound = 'sound/f13weapons/ninemil.ogg'
	mag_type = /obj/item/ammo_box/magazine/m9mm
	//stats
	burst_size = 1
	spread = 20.5
	fire_delay = 2.5
	extra_damage = 22
	extra_penetration = 15
	mag_type = /obj/item/ammo_box/magazine/m556/rifle
	base_size = 2
	//Extra Modifiable Gun Vars
	modifiablegun = TRUE
	//Sprite Attachment Points
	xattachlist = list("east" = 27, "west" =  7, "south" = 19, "north" = 15) //x coordinate for attachment point
	yattachlist = list("east" = 17, "west" = 17, "south" = 15, "north" = 20) //y coordinate for attachment point
	//Attachment Points
	attachableparts = list("internal" = new /obj/item/gunpart/MGHP_Receiver, "internal2" = new /obj/item/gunpart/threeburstcam, "east" = new /obj/item/gunpart/barrel_extension_50mm, "west" = new /obj/item/gunpart/stock, "south" = null, "north" = new /obj/item/gunpart/scope)
	//Blacklisted Parts
	blacklistedparts = list()