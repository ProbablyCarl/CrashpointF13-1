/datum/supply_pack
	var/name = "Crate"
	var/group = ""
	var/hidden = FALSE
	var/contraband = FALSE
	var/cost = 700 // Minimum cost, or infinite points are possible.
	var/access = FALSE
	var/access_any = FALSE
	var/list/contains = null
	var/crate_name = "crate"
	var/desc = ""//no desc by default
	var/crate_type = /obj/structure/closet/crate
	var/dangerous = FALSE // Should we message admins?
	var/special = FALSE //Event/Station Goals/Admin enabled packs
	var/special_enabled = FALSE
	var/DropPodOnly = FALSE//only usable by the Bluespace Drop Pod via the express cargo console
	var/admin_spawned = FALSE

/datum/supply_pack/proc/generate(turf/T)
	var/obj/structure/closet/crate/C = new crate_type(T)
	C.name = crate_name
	if(access)
		C.req_access = list(access)
	if(access_any)
		C.req_one_access = access_any

	fill(C)

	return C

/datum/supply_pack/proc/fill(obj/structure/closet/crate/C)
	if (admin_spawned)
		for(var/item in contains)
			var/atom/A = new item(C)
			A.flags_1 |= ADMIN_SPAWNED_1
	else
		for(var/item in contains)
			new item(C)

// If you add something to this list, please group it by type and sort it alphabetically instead of just jamming it in like an animal

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Ammuntion ///////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/emergency
	group = "Gun Runners - Ammo"


/datum/supply_pack/emergency/syndicate
	name = "NULL_ENTRY"
	desc = "(#@&^$THIS PACKAGE CONTAINS 30TC WORTH OF SOME RANDOM SYNDICATE GEAR WE HAD LYING AROUND THE WAREHOUSE. GIVE EM HELL, OPERATIVE@&!*() "
	hidden = TRUE
	cost = 20000
	contains = list()
	crate_name = "emergency crate"
	crate_type = /obj/structure/closet/crate/internals
	dangerous = TRUE

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Conventional ////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/security
	group = "Gun Runners - Weapons"
	crate_type = /obj/structure/closet/crate/internals

/datum/supply_pack/security/armor
	name = "Armor Crate"
	desc = "Three vests of well-rounded, decently-protective armor. Requires Security access to open."
	cost = 1000
	contains = list(/obj/item/clothing/suit/armor/vest,
					/obj/item/clothing/suit/armor/vest,
					/obj/item/clothing/suit/armor/vest)
	crate_name = "armor crate"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Van-Graffs //////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/security/armory
	group = "Van-Graffs - Energy"
	crate_type = /obj/structure/closet/crate/internals

/datum/supply_pack/security/armory/bulletarmor
	name = "Bulletproof Armor Crate"
	desc = "Contains three sets of bulletproof armor. Guaranteed to reduce a bullet's stopping power by over half. Requires Armory access to open."
	cost = 1500
	contains = list(/obj/item/clothing/suit/armor/bulletproof,
					/obj/item/clothing/suit/armor/bulletproof,
					/obj/item/clothing/suit/armor/bulletproof)
	crate_name = "bulletproof armor crate"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Conventional Protection /////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/engineering
	group = "Conventional Protection"
	crate_type = /obj/structure/closet/crate/engineering

//////////////////////////////////////////////////////////////////////////////
//////////////////////// Advanced Protection  ////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/engine
	group = "Advanced Protection"
	crate_type = /obj/structure/closet/crate/engineering

//////////////////////////////////////////////////////////////////////////////
/////////////////////// N.C.R Trade Goods ////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/materials
	group = "N.C.R - Raw Goods"

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Medical /////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/medical
	group = "The Followers - Medical"
	crate_type = /obj/structure/closet/crate/medical

//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Science /////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/science
	group = "Vault-City - Science"
	crate_type = /obj/structure/closet/crate/science


//////////////////////////////////////////////////////////////////////////////
/////////////////////////////// Service //////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/service
	group = "Prospectors - Scrap and Supplies"


/datum/supply_pack/materials/metal
	name = "Fifty Sheets of Metal"
	desc = "You're really gonna pay someone to BRING you metal?"
	cost = 300
	contains = list(/obj/item/reagent_containers/food/snacks/f13/wastiesoup,)
	crate_name = "Metal crate"
	crate_type = /obj/structure/closet/crate/hydroponics


//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Organic /////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/organic
	group = "Local - Food and Water"
	crate_type = /obj/structure/closet/crate/freezer

/datum/supply_pack/organic/hydroponics/lowqualration
	name = "Low-Quality Rations"
	desc = "Contains food and water supplies found locally. It's of incredibly low-quality, but it /is/ cheap!"
	cost = 20
	contains = list(/obj/item/reagent_containers/food/snacks/f13/wastiesoup,
					/obj/item/reagent_containers/food/snacks/f13/wastiesoup,
					/obj/item/reagent_containers/food/snacks/f13/wastiesoup,
					/obj/item/reagent_containers/food/snacks/f13/wastiesoup,
					/obj/item/reagent_containers/food/drinks/bottle/dwater,
					/obj/item/reagent_containers/food/drinks/bottle/dwater,
					/obj/item/reagent_containers/food/drinks/bottle/dwater,
					/obj/item/reagent_containers/food/drinks/bottle/dwater,)
	crate_name = "Low-quality ration crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/organic/hydroponics/highqualration
	name = "High-Quality Rations"
	desc = "Contains food and water supplies used by the New-California Republic as a standard ration!"
	cost = 80
	contains = list(/obj/item/reagent_containers/food/snacks/f13/cram,
					/obj/item/reagent_containers/food/snacks/f13/cram,
					/obj/item/reagent_containers/food/snacks/f13/cram,
					/obj/item/reagent_containers/food/snacks/f13/cram,
					/obj/item/reagent_containers/food/drinks/bottle/bwater,
					/obj/item/reagent_containers/food/drinks/bottle/bwater,
					/obj/item/reagent_containers/food/drinks/bottle/bwater,
					/obj/item/reagent_containers/food/drinks/bottle/bwater,)
	crate_name = "High-quality ration crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/organic/hydroponics/highqualration
	name = "Pre-Packed Caravan-Lunches"
	desc = "Contains pre-packed caravan-lunchs! Compact and robust, just like Mom never made you!"
	cost = 150
	contains = list(/obj/item/reagent_containers/food/snacks/f13/caravanlunch,
					/obj/item/reagent_containers/food/snacks/f13/caravanlunch,
					/obj/item/reagent_containers/food/snacks/f13/caravanlunch,
					/obj/item/reagent_containers/food/snacks/f13/caravanlunch,
					/obj/item/reagent_containers/food/drinks/bottle/nukacola,
					/obj/item/reagent_containers/food/drinks/bottle/nukacola,
					/obj/item/reagent_containers/food/drinks/bottle/nukacola,
					/obj/item/reagent_containers/food/drinks/bottle/nukacola,)
	crate_name = "Caravan-Lunch crate"
	crate_type = /obj/structure/closet/crate/hydroponics

/datum/supply_pack/organic/hydroponics/highqualration
	name = "Nuka-Cola Collection"
	desc = "Collect them all! 100% sourced from extreme wasteland-violence!"
	cost = 200
	contains = list(/obj/item/reagent_containers/food/drinks/bottle/nukacolavictory,
					/obj/item/reagent_containers/food/drinks/bottle/nukacolavictory,
					/obj/item/reagent_containers/food/drinks/bottle/nukacolaquantum, // Yes. I technically gave this a value of 100 caps.
					/obj/item/reagent_containers/food/drinks/bottle/nukacolaquartz,
					/obj/item/reagent_containers/food/drinks/bottle/nukacolaquartz,
					/obj/item/reagent_containers/food/drinks/bottle/nukacolacherry,
					/obj/item/reagent_containers/food/drinks/bottle/nukacolacherry,
					/obj/item/reagent_containers/food/drinks/bottle/nukacola,
					/obj/item/reagent_containers/food/drinks/bottle/nukacola,)
	crate_name = "Nuka-Collection crate"
	crate_type = /obj/structure/closet/crate/hydroponics


//////////////////////////////////////////////////////////////////////////////
////////////////////////////// Livestock /////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/critter
	group = "Local - Livestock"
	crate_type = /obj/structure/closet/crate/critter


//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Tribal-Supplies /////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/costumes_toys
	group = "Legion Territory - Goods"


//////////////////////////////////////////////////////////////////////////////
//////////////////////////// Miscellaneous ///////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

/datum/supply_pack/misc
	group = "Local - Tribal Goods"


