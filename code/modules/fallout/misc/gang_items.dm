/datum/gang_item
	var/name
	var/item_path
	var/cost
	var/spawn_msg
	var/category
	var/id

/datum/gang_item/proc/purchase(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool, check_canbuy = TRUE)
	if(check_canbuy && !can_buy(user, gang, gangtool))
		return FALSE
	var/real_cost = get_cost(user, gang, gangtool)
	gang.influence -= real_cost
	spawn_item(user, gang, gangtool)
	return TRUE

/datum/gang_item/proc/spawn_item(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	if(item_path)
		var/obj/item/O = new item_path(user.loc)
		user.put_in_hands(O)
	if(spawn_msg)
		to_chat(user, spawn_msg)

/datum/gang_item/proc/can_buy(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	return gang && (gang.influence >= get_cost(user, gang, gangtool))

/datum/gang_item/proc/get_cost(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	return cost

/datum/gang_item/proc/get_cost_display(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	return "([get_cost(user, gang, gangtool)] Influence)"

/datum/gang_item/proc/get_name_display(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	return name

/datum/gang_item/proc/get_extra_info(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	return

///////////////////
//FUNCTIONS
///////////////////

/datum/gang_item/function
	category = "Gangtool Functions:"
	cost = 0

/datum/gang_item/function/get_cost_display(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	return ""


///////////////////
//CLOTHING
///////////////////

/datum/gang_item/clothing
	category = "Purchase Clothes:"

//Great Khans

/datum/gang_item/clothing/khan_boots
	name = "Great Khan boots"
	id = "khan_boots"
	cost = 15
	item_path = /obj/item/clothing/shoes/f13/khan

/datum/gang_item/clothing/khan_helmet
	name = "Great Khan helmet"
	id = "khan_helmet"
	cost = 20
	item_path = /obj/item/clothing/head/helmet/f13/khan

/datum/gang_item/clothing/khan_pants
	name = "Great Khan pants"
	id = "khan_pants"
	cost = 25
	item_path = /obj/item/clothing/under/pants/f13/khan

/datum/gang_item/clothing/khan_uniform
	name = "Great Khan uniform"
	id = "khan_uniform"
	cost = 40
	item_path = /obj/item/clothing/under/f13/khan

/datum/gang_item/clothing/khan_vest
	name = "Great Khan armored vest"
	id = "khan_vest"
	cost = 60
	item_path = /obj/item/clothing/suit/armor/khan

/datum/gang_item/clothing/prostitute_dress
	name = "Prostitute dress"
	id = "prostitute_dress"
	cost = 25
	item_path = /obj/item/clothing/under/f13/female/flapper

/datum/gang_item/clothing/hat
	name = "Pimp Hat"
	id = "hat"
	cost = 30
	item_path = /obj/item/clothing/head/collectable/petehat/gang

/obj/item/clothing/head/collectable/petehat/gang
	name = "pimpin' hat"
	desc = "The undisputed king of style."

/datum/gang_item/clothing/raider_uniform
	name = "Raider uniform"
	id = "raider_uniform"
	cost = 40
	item_path = /obj/item/clothing/under/f13/raider_leather

/datum/gang_item/clothing/jester_uniform
	name = "Jester suit"
	id = "jester_uniform"
	cost = 40
	item_path = /obj/item/clothing/under/jester

/datum/gang_item/clothing/biker_uniform
	name = "Biker uniform"
	id = "biker_uniform"
	cost = 40
	item_path = /obj/item/clothing/under/f13/Retro_Biker_Vest

/datum/gang_item/clothing/scarecrow_uniform
	name = "Scarecrow uniform"
	id = "scarecrow_uniform"
	cost = 40
	item_path = /obj/item/clothing/under/scarecrow

/datum/gang_item/clothing/soviet_uniform
	name = "Soviet uniform"
	id = "soviet_uniform"
	cost = 40
	item_path = /obj/item/clothing/under/soviet

/datum/gang_item/clothing/chairmen_uniform
	name = "Chairmen uniform"
	id = "chairmen_uniform"
	cost = 40
	item_path = /obj/item/clothing/under/f13/bennys/gang

/obj/item/clothing/under/f13/bennys/gang
	name = "Chairmen uniform"
	desc = "A black and white buffalo plaid suit, most often seen on the Chairmen."

///////////////////
//WEAPONS
///////////////////

/datum/gang_item/weapon
	category = "Purchase Weapons:"

/datum/gang_item/weapon/ammo

/datum/gang_item/weapon/ammo/get_cost_display(mob/living/carbon/user, datum/gang/gang, obj/item/device/gangtool/gangtool)
	return "&nbsp;&#8627;" + ..() //this is pretty hacky but it looks nice on the popup

/datum/gang_item/weapon/shuriken
	name = "Shuriken"
	id = "shuriken"
	cost = 30
	item_path = /obj/item/throwing_star

/datum/gang_item/weapon/switchblade
	name = "Switchblade"
	id = "switchblade"
	cost = 60
	item_path = /obj/item/switchblade

/datum/gang_item/equipment/police
	name = "Officer Sidearm"
	id = "police"
	cost = 100
	item_path = /obj/item/gun/ballistic/revolver/police

/datum/gang_item/equipment/uzi
	name = "Type U3 Uzi"
	id = "uzi"
	cost = 600
	item_path = /obj/item/gun/ballistic/automatic/mini_uzi

/datum/gang_item/equipment/type93
	name = "Type 93 Assault Rifle"
	id = "type93"
	cost = 1200
	item_path = /obj/item/gun/ballistic/automatic/type93

///////////////////
//EQUIPMENT
///////////////////

/datum/gang_item/equipment
	category = "Purchase Equipment:"

/datum/gang_item/equipment/spraycan
	name = "Territory Spraycan"
	id = "spraycan"
	cost = 10
	item_path = /obj/item/toy/crayon/spraycan

/datum/gang_item/equipment/emp
	name = "EMP Grenade"
	id = "EMP"
	cost = 130
	item_path = /obj/item/grenade/empgrenade

/datum/gang_item/equipment/necklace
	name = "Gold Necklace"
	id = "necklace"
	cost = 150
	item_path = /obj/item/clothing/neck/necklace/dope

/datum/gang_item/equipment/c4
	name = "C4 Explosive"
	id = "c4"
	cost = 200
	item_path = /obj/item/grenade/plastic/c4

/datum/gang_item/equipment/c38
	name = ".38 Special Speedloader"
	id = "c38"
	cost = 60
	item_path = /obj/item/ammo_box/c38

/datum/gang_item/equipment/m38
	name = ".38 Special Box"
	id = "m38"
	cost = 120
	item_path = /obj/item/ammo_box/box38

/datum/gang_item/equipment/m9mm
	name = "Uzi Magazine"
	id = "m9mm"
	cost = 240
	item_path = /obj/item/ammo_box/magazine/uzim9mm

/datum/gang_item/equipment/c9mm
	name = "9mm FMJ"
	id = "c9mm"
	cost = 320
	item_path = /obj/item/ammo_box/c9mm

/datum/gang_item/equipment/type93mag
	name = "Type 93 Magazine"
	id = "type93mag"
	cost = 420
	item_path = /obj/item/ammo_box/magazine/m556/rifle/assault

/datum/gang_item/equipment/box556
	name = "5.56 FMJ"
	id = "556box"
	cost = 520
	item_path = /obj/item/ammo_box/a556

/datum/gang_item/equipment/ziptie
	name = "Box of Restraints"
	id = "zipties"
	cost = 120
	item_path = /obj/item/storage/box/zipties

/datum/gang_item/equipment/signals
	name = "Signal Box"
	id = "signal"
	cost = 60
	item_path = /obj/item/storage/box/signal

/datum/gang_item/equipment/synthflesh
	name = "Synthflesh Canister"
	id = "synthflesh"
	cost = 620
	item_path = /obj/item/reagent_containers/medspray/synthflesh
