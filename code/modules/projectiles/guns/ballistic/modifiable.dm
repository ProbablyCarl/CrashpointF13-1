obj/item/gun/ballistic/automatic/coltn99 //OG
	name = "Colt N99"
	desc = "A 10x25mm calliber pistol."
	icon = 'icons/obj/guns/modifiableguns.dmi'
	icon_state = "ColtN99"
	fire_sound = 'sound/f13weapons/ninemil.ogg'
	//stats
	burst_size = 1
	spread = 20
	fire_delay = 2
	extra_damage = 18
	extra_penetration = 12
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	base_size = 1
	//Extra Modifiable Gun Vars
	modifiablegun = TRUE
	//Sprite Attachment Points
	xattachlist = list("east" = 25, "west" =  9, "south" = 21, "north" = 16) //x coordinate for attachment point
	yattachlist = list("east" = 20, "west" = 17, "south" = 17, "north" = 21) //y coordinate for attachment point
	//Attachment Points
	attachableparts = list("internal" = new /obj/item/gunpart/BHS_Receiver, "internal2" = null, "east" = null, "west" = null, "south" = null, "north" = null)
	//Blacklisted Parts
	blacklistedparts = list("stock")

obj/item/gun/ballistic/automatic/browninghipower
	name = "Browning Hi-Power"
	desc = "A 9x19mm calliber pistol."
	icon = 'icons/obj/guns/modifiableguns.dmi'
	icon_state = "BrowningHiPower"
	fire_sound = 'sound/f13weapons/ninemil.ogg'
	mag_type = /obj/item/ammo_box/magazine/m9mm
	//stats
	burst_size = 1
	spread = 19
	fire_delay = 1.5
	extra_damage = 22
	extra_penetration = 9
	mag_type = /obj/item/ammo_box/magazine/m9mm
	base_size = 1
	//Extra Modifiable Gun Vars
	modifiablegun = TRUE
	//Sprite Attachment Points
	xattachlist = list("east" = 31, "west" =  4, "south" = 21, "north" = 16) //x coordinate for attachment point
	yattachlist = list("east" = 21, "west" = 17, "south" = 17, "north" = 22) //y coordinate for attachment point
	//Attachment Points
	attachableparts = list("internal" = new /obj/item/gunpart/BHS_Receiver, "internal2" = null, "east" = null, "west" = null, "south" = null, "north" = null)
	//Blacklisted Parts
	blacklistedparts = list("stock")

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