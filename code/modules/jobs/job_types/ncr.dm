/datum/job/ncr //do NOT use this for anything, it's just to store faction datums
	department_flag = NCR
	selection_color = "#ffeeaa"
	exp_type = EXP_TYPE_NCR
	access = list(ACCESS_NCR)
	minimal_access = list(ACCESS_NCR)
	forbids = "The NCR forbids: Chem and drug use such as jet or alcohol while on duty. Execution of unarmed or otherwise subdued targets without authorisation."
	enforces = "The NCR expects: Obeying the lawful orders of superiors. Proper treatment of prisoners.  Good conduct within the Republic's laws. Wearing the uniform."

/datum/outfit/job/ncr/
	name = "NCRdatums"
	jobtype = /datum/job/ncr/
	backpack = /obj/item/storage/backpack/trekker
	satchel = /obj/item/storage/backpack/satchel/trekker
//	ears = 			/obj/item/radio/headset/headset_ncr
	shoes = 		/obj/item/clothing/shoes/f13/military/ncr
	gloves =        /obj/item/clothing/gloves/f13/ncr

/*
Colonel
*/

/datum/job/ncr/f13colonel
	title = "NCR Colonel"
	flag = F13COLONEL
//	faction = "Station"
	head_announce = list("Security")
	supervisors = "the general"
	req_admin_notify = 1
	exp_requirements = 2700
	total_positions = 0
	spawn_positions = 0

	outfit = /datum/outfit/job/ncr/f13colonel

/datum/outfit/job/ncr/f13colonel
	name 		= "NCR Colonel"
	jobtype 	= /datum/job/ncr/f13colonel
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory 	= /obj/item/clothing/accessory/ncr
	suit 		= /obj/item/clothing/suit/armor/f13/power_armor/t51b/sierra
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	suit_store  = /obj/item/gun/ballistic/automatic/marksman
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m45=3, \
		/obj/item/ammo_box/magazine/m556/rifle=2, \
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/m1911=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/storage/bag/money/small/ncr)

/*
Captain
*/
/datum/job/ncr/f13captain
	title = "NCR Captain"
	flag = F13CAPTAIN
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	description = "You are the commanding officer of your company and direct superior to the Veteran Ranger and Lieutenant. Coordinating with your staff, you must ensure that the objectives of High Command are completed to the letter. Working closely with your subordinates on logistics, mission planning and special operations with the Rangers, you are here to establish a strong foothold for the NCR within the region."
	supervisors = "Colonel"
	req_admin_notify = 1
	exp_requirements = 360
	exp_type = EXP_TYPE_NCRCOMMAND
	var/cap_age = CAP_AGE_MIN

	outfit = /datum/outfit/job/ncr/f13captain

/datum/outfit/job/ncr/f13captain
	name = "NCR Captain"
	jobtype 	= /datum/job/ncr/f13captain
	id 			= /obj/item/card/id/dogtag/ncrcaptain
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory 	= /obj/item/clothing/accessory/ncr/CPT
	suit 		= /obj/item/clothing/suit/armor/f13/ncrarmor/captain
	suit_store 	= /obj/item/gun/ballistic/automatic/pistol/deagle
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/ammo_box/magazine/a50=3, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/storage/bag/money/small/ncr, \
		/obj/item/clothing/mask/ncr_facewrap)


/datum/job/ncr/f13captain/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Lifegiver")
	if(H.age < cap_age)
		H.age = cap_age


/*
Ambassador
*/
/datum/job/ncr/f13ambassador
	title = "NCR Ambassador"
	flag = F13AMBASSADOR
	head_announce = list("Security")
	faction = "NCR"
	total_positions = 1
	spawn_positions = 1
	description = "You are the political and diplomatic attaché to the NCR forces in the area. Though you are not part of the military, and should avoid conflict, you wield great bureaucratic power."
	supervisors = "Colonel"
	req_admin_notify = 1
	exp_requirements = 360
	exp_type = EXP_TYPE_NCRCOMMAND

	outfit = /datum/outfit/job/ncr/f13ambassador

/datum/outfit/job/ncr/f13ambassador
	name = "NCR Ambassador"
	jobtype 	= /datum/job/ncr/f13ambassador
	id 			= /obj/item/card/id/dogtag/ncrambassador
	uniform		= /obj/item/clothing/under/f13/gentlesuit
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes 		= /obj/item/clothing/shoes/laceup
	suit		= /obj/item/clothing/suit/toggle/lawyer/black
	l_hand = /obj/item/storage/briefcase
	gloves      = null
	backpack_contents = list(
		/obj/item/ammo_box/a357=1, \
		/obj/item/gun/ballistic/revolver/police=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/storage/bag/money/small/ncr=1,
		/obj/item/megaphone=1)



/*
Lieutenant
*/
/datum/job/ncr/f13lieutenant
	title = "NCR Lieutenant"
	flag = F13LIEUTENANT
	total_positions = 1
	spawn_positions = 1
	faction = "NCR"
	description = "You are the direct superior to the Sergeant and Enlisted, working with the Captain and under special circumstances, Rangers. You plan patrols, training and missions, working in some cases with Rangers in accomplishing objectives otherwise beyond the capabilities of ordinary enlisted personnel."
	supervisors = "Captain and above"
	selection_color = "#fff5cc"
	exp_requirements = 360

	outfit = /datum/outfit/job/ncr/f13lieutenant

	loadout_options = list(
	/datum/outfit/loadout/ltmedic, //Labcoat, medical gear, 2x chemwhiz books
	/datum/outfit/loadout/ltcombat, //Mantle vest, 5.56 assault carbine
	/datum/outfit/loadout/ltscout //Scout armor, .308 DKS sniper rifle
	)

/datum/outfit/job/ncr/f13lieutenant
	name		= "NCR Lieutenant"
	jobtype		= /datum/job/ncr/f13lieutenant
	id			= /obj/item/card/id/dogtag/ncrlieutenant
	uniform		= /obj/item/clothing/under/f13/ncr/officer
	accessory	= /obj/item/clothing/accessory/ncr/LT
	head 		= /obj/item/clothing/head/beret/ncr
	belt        = /obj/item/storage/belt/military/assault/ncr
	glasses 	= /obj/item/clothing/glasses/sunglasses/big
	shoes       = /obj/item/clothing/shoes/f13/military/ncr_officer
	gloves      = /obj/item/clothing/gloves/f13/leather/ncr_officer
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil=1, \
		/obj/item/melee/classic_baton/telescopic=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/twohanded/binocs=1, \
		/obj/item/storage/bag/money/small/ncrofficers, \
		/obj/item/clothing/mask/ncr_facewrap)

/datum/outfit/loadout/ltmedic
	name = "Medical Officer"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/labcoat
	glasses = /obj/item/clothing/glasses/hud/health
	suit_store =    /obj/item/healthanalyzer
	backpack_contents = list(
		/obj/item/clothing/accessory/armband/medblue=1,
		/obj/item/storage/pill_bottle/mining=1,
		/obj/item/storage/firstaid/regular=1,
		/obj/item/book/granter/trait/chemistry=1,
		/obj/item/reagent_containers/hypospray/CMO=1)

/datum/outfit/loadout/ltcombat
	name = "Combat Lieutenant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle/reinforced
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3,
		/obj/item/book/granter/trait/trekking=1)

/datum/outfit/loadout/ltscout
	name = "Scout Lieutenant"
	uniform = /obj/item/clothing/under/f13/ncr/scout
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/scout/officer
	suit_store = /obj/item/gun/ballistic/automatic/rangemaster/scoped
	head = /obj/item/clothing/head/beret/ncr_scout_lt
	shoes = /obj/item/clothing/shoes/f13/military/ncr_scout
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m762=2,
		/obj/item/book/granter/trait/trekking=1)


/*
Sergeant
*/
/datum/job/ncr/f13sergeant
	title = "NCR Sergeant"
	flag = F13SERGEANT
	total_positions = 2
	spawn_positions = 2
	faction = "NCR"
	description = "You are the direct superior to the enlisted troops, working with the chain of command you echo the orders of your superiors and ensure that the enlisted follow them to the letter. Additionally, you are responsible for the wellbeing of the troops and their ongoing training with the NCR."
	supervisors = "Lieutenants and above"
	selection_color = "#fff5cc"
	exp_requirements = 240

	outfit = /datum/outfit/job/ncr/f13sergeant

	loadout_options = list(
	/datum/outfit/loadout/sgtcombat, //Mantle vest, 5.56 heavy service rifle
	/datum/outfit/loadout/sgtscout //Scout armor, 5.56 marksman carbine
	)

/datum/outfit/job/ncr/f13sergeant
	name = "NCR Sergeant"
	jobtype = /datum/job/ncr/f13sergeant
	id = 			/obj/item/card/id/dogtag/ncrsergeant
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/ncr/SGT
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	belt =          /obj/item/storage/belt/military/assault/ncr
	head =          /obj/item/clothing/head/f13/ncr
	shoes = 		/obj/item/clothing/shoes/f13/military/ncr
	gloves =        /obj/item/clothing/gloves/f13/ncr
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/gun/ballistic/automatic/pistol/ninemil=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/storage/bag/money/small/ncrofficers, \
		/obj/item/clothing/mask/ncr_facewrap)

/datum/outfit/loadout/sgtcombat
	name = "Combat Sergeant"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/datum/outfit/loadout/sgtscout
	name = "Scout Sergeant"
	uniform = /obj/item/clothing/under/f13/ncr/scout
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/scout/veteran
	suit_store = /obj/item/gun/ballistic/shotgun/remington/scoped
	head = /obj/item/clothing/head/beret/ncr_scout
	shoes = /obj/item/clothing/shoes/f13/military/ncr_scout
	backpack_contents = list(
		/obj/item/ammo_box/a762=3,
		/obj/item/twohanded/binocs=1)

/*
Corporal
*/
/datum/job/ncr/f13specialist
	title = "NCR Specialist"
	flag = F13SPECIALIST
	faction = "NCR"
	total_positions = 3
	spawn_positions = 3
	description = "You are an experienced enlisted soldier with a high degree of skill in a particular area. You work closely with your squad, taking orders from your Sergeant to achieve the NCR's goals."
	supervisors = "Sergeants and above"
	selection_color = "#fff5cc"
	exp_requirements = 240

	outfit = /datum/outfit/job/ncr/f13specialist

	loadout_options = list(
//	/datum/outfit/loadout/specmedic, //Medkit, medHUD, patches
	/datum/outfit/loadout/specsapper, //C4, toolbelt, welding goggles
	/datum/outfit/loadout/specscout //Scoped hunting rifle, binoculars
	)

/datum/outfit/job/ncr/f13specialist
	name = "NCR Corporal"
	jobtype = /datum/job/ncr/f13specialist
	uniform =  		/obj/item/clothing/under/f13/ncr
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	accessory =     /obj/item/clothing/accessory/ncr/SPC
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	belt =          /obj/item/storage/belt/military/NCR_Bandolier
	glasses = 		null
	suit_store = 	/obj/item/gun/ballistic/automatic/pistol/ninemil
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm=2, \
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/money/small/ncrenlisted, \
		/obj/item/clothing/mask/ncr_facewrap)


/datum/outfit/loadout/specmedic
	name = "Combat Surgeon"
	glasses = /obj/item/clothing/glasses/hud/health
	head = 	/obj/item/clothing/head/f13/ncr/medic
	backpack_contents = list(
		/obj/item/clothing/accessory/armband/medblue=1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak=3,
		/obj/item/book/granter/trait/chemistry=1,
		/obj/item/storage/pill_bottle/mannitol=1,
		/obj/item/storage/firstaid/tactical=1,
		)

/datum/outfit/loadout/specsapper
	name = "Sapper"
	glasses = /obj/item/clothing/glasses/welding
	gloves = /obj/item/clothing/gloves/color/yellow
	belt = /obj/item/storage/belt/utility/full/engi
	suit_store = /obj/item/gun/ballistic/automatic/marksman/servicerifle
	head = 	/obj/item/clothing/head/f13/ncr/goggles
	backpack_contents = list(
		/obj/item/grenade/plastic=1,
		/obj/item/stack/sheet/metal/fifty=2,
		/obj/item/stack/sheet/glass/fifty=1,
		/obj/item/ammo_box/magazine/m556/rifle=2
		)

/datum/outfit/loadout/specscout
	name = "Scout"
	uniform = /obj/item/clothing/under/f13/ncr/scout
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/scout
	suit_store = /obj/item/gun/ballistic/automatic/marksman/servicerifle
	head = /obj/item/clothing/head/beret/ncr_scout
	shoes = /obj/item/clothing/shoes/f13/military/ncr_scout
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=2,
		/obj/item/twohanded/binocs=1)
/*
NCR Heavy Trooper
*/

/datum/job/ncr/f13ncrht
	title = "NCR Heavy Trooper"
	flag = F13NCRHT
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "You are a Sergeant who has been selected for the special duty of Heavy Trooper. You are exceptionally physically fit, being conditioned to wear the many, many pounds of salvaged power armor; and trained with heavy weaponry. You are the poster-child of the NCR Embassy, and should act accordingly."
	supervisors = "the officers"
	selection_color = "#fff5cc"
	exp_requirements = 240

	outfit = /datum/outfit/job/ncr/f13ncrht

	loadout_options = list(
	/datum/outfit/loadout/heavygren,
	/datum/outfit/loadout/heavyaslt,
	)


/datum/outfit/job/ncr/f13ncrht
	name = "NCR Heavy Trooper"
	jobtype = /datum/job/ncr/f13ncrht
	id = 			/obj/item/card/id/dogtag/ncrht
	uniform =  		/obj/item/clothing/under/f13/ncr
	suit = 			/obj/item/clothing/suit/armor/f13/brokenpa/ncr
	head = 			/obj/item/clothing/head/helmet/power_armor/t45b
	belt =          /obj/item/storage/belt/military/NCR_Bandolier
	glasses = 		null
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrenlisted=1, \
		/obj/item/book/granter/trait/trekking=1, \
		/obj/item/clothing/accessory/ncr/SGT=1
		)

/datum/outfit/loadout/heavygren
	name = "Heavy Grenadier"
	suit_store = /obj/item/gun/ballistic/shotgun/riot/lethal
	belt =		/obj/item/storage/belt/grenade/ncr
	backpack_contents = list(
		/obj/item/storage/box/magnumshot=2,
		)

/datum/outfit/loadout/heavyaslt
	name = "Heavy Assault"
	suit_store = 	/obj/item/gun/ballistic/automatic/lmg
	backpack_contents = list(
		/obj/item/ammo_box/magazine/lmg=3,
		)



/*
NCR Military Police
*/
/datum/job/ncr/f13ncrmp
	title = "NCR Military Police"
	flag = F13NCRMP
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "You are the primary enforcers of NCR law within the ranks of the local embassy. You are technically exempt from the standard chain of command, answering only to High-Command, and specifically, the NCR Office of Special Investigations (NCROSI). You are NOT to engage in direct combat with the enemy unless truly nessecary, but instead enforce laws and regulations within the NCR's control."
	supervisors = "NCROSI"
	selection_color = "#fff5cc"
	exp_requirements = 240

	outfit = /datum/outfit/job/ncr/f13ncrmp

/datum/outfit/job/ncr/f13ncrmp
	name = "NCR Military Police"
	jobtype = /datum/job/ncr/f13ncrmp
	id = 			/obj/item/card/id/dogtag/ncrmp
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/ncr/SSGT
	head = 			/obj/item/clothing/head/f13/ncr/goggles
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	r_hand = 		/obj/item/melee/classic_baton/telescopic
	l_hand = 		/obj/item/shield/riot/tele
	belt =          /obj/item/storage/belt/grenade/ncr/mp
	r_pocket =		/obj/item/restraints/handcuffs
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrenlisted, \
		/obj/item/clothing/accessory/armband/mp=1,
		)


/*
NCR Corpsman
*/
/datum/job/ncr/f13ncrcorpsman
	title = "NCR Corpsman"
	flag = F13CORPSMAN
	faction = "NCR"
	total_positions = 2
	spawn_positions = 2
	description = "You are the equivalent of an NCR Combat Medic, for your assigned Squad. Try not to die, while stopping others from suffering such a fate."
	supervisors = "Sergeants and above"
	selection_color = "#fff5cc"
	exp_requirements = 240

	outfit = /datum/outfit/job/ncr/f13ncrcorpsman

/datum/outfit/job/ncr/f13ncrcorpsman
	name = "NCR Corpsman"
	jobtype = /datum/job/ncr/f13ncrcorpsman
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/armband/medblue
	head = 			/obj/item/clothing/head/f13/ncr/medic
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	suit_store = 	/obj/item/gun/ballistic/automatic/greasegun
	belt = /obj/item/defibrillator/compact/loaded
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=3,
		/obj/item/storage/firstaid/regular=1,
		/obj/item/storage/pill_bottle/epinephrine=1,
		/obj/item/ammo_box/magazine/greasegun =1,)

/*
Trooper
*/
/datum/job/ncr/f13trooper
	title = "NCR Trooper"
	flag = F13TROOPER
	faction = "NCR"
	total_positions = 6
	spawn_positions = 6
	description = "You answer to everyone above you in the chain of command, taking orders from your Sergeant directly and obeying all commands given by officers such as the Lieutenant and Captain."
	supervisors = "Corporals and above"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13trooper

	loadout_options = list(
	/datum/outfit/loadout/trooperfrontline, //Grenadier.
	/datum/outfit/loadout/trooperranged //Generic Service Rifle carrier.
	)

/datum/outfit/job/ncr/f13trooper
	name = "NCR Trooper"
	jobtype = /datum/job/ncr/f13trooper
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/ncr
	accessory =     /obj/item/clothing/accessory/ncr/TPR
	head = 			/obj/item/clothing/head/f13/ncr/goggles
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	belt =          /obj/item/storage/belt/military/NCR_Bandolier
	glasses = 		null
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/money/small/ncrenlisted, \
		/obj/item/clothing/mask/ncr_facewrap)

/datum/outfit/loadout/trooperfrontline
	name = "Grenadier Trooper"
	suit_store = 	/obj/item/gun/ballistic/shotgun/remington
	belt = /obj/item/storage/belt/grenade/ncr/trooper
	backpack_contents = list(
		/obj/item/ammo_box/a762=5)

/datum/outfit/loadout/trooperranged
	name = "Hardened Trooper"
	suit_store = 	/obj/item/gun/ballistic/automatic/marksman/servicerifle
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/*
Non-Combatant
*/
/datum/job/ncr/f13recruit
	title = "NCR Non-Combatant"
	flag = F13RECRUIT
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "You are a noncombatant member of the NCR assigned the vital duty of helping them with cooking, farming, mining, and other menial tasks. While you have been to basic training, it was rushed and hardly prepared you for the horrors of war. Your sidearm is to be used in your own defense, only."
	supervisors = "everyone in the NCR"
	selection_color = "#fff5cc"

	outfit = /datum/outfit/job/ncr/f13recruit

/datum/outfit/job/ncr/f13recruit
	name = "NCR Assistant"
	jobtype = /datum/job/ncr/f13recruit
	id = 			/obj/item/card/id/dogtag/ncrtrooper
	uniform =  		/obj/item/clothing/under/f13/ncr
//	accessory =     /obj/item/clothing/accessory/ncr/REC
	suit = 			/obj/item/clothing/suit/armor/f13/ncrarmor
	suit_store = 	/obj/item/gun/ballistic/automatic/pistol/ninemil
//	ears = 			/obj/item/radio/headset //no NCR comms
	belt =			/obj/item/pickaxe
	gloves = null
	glasses = 		null
	backpack_contents = list(
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/storage/bag/ore = 1,
		/obj/item/storage/bag/money/small/ncrenlisted)

/*
Veteran Ranger
*/
/datum/job/ncr/f13vetranger
	title = "NCR Veteran Ranger"
	flag = F13VETRANGER
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "You answer directly to the Captain, working either independently or in a team to complete your mission objectives however required, operating either alone, in a squad or with the NCR Army. As a Veteran Ranger you work closely with the Captain in planning special operations with your team while also carrying out those orders in the field by any means necessary."
	supervisors = "Captain and above"
	selection_color = "#ffeeaa"
	exp_requirements = 360
	exp_type = EXP_TYPE_RANGER
	var/vet_age = VET_AGE_MIN //twenty years minimum, so 40y at least.

	outfit = /datum/outfit/job/ncr/f13vetranger

	loadout_options = list(
	/datum/outfit/loadout/vrelite, //AMR.
	/datum/outfit/loadout/vrrecon, //Recon duster, scoped brush gun, no slowdown.
	/datum/outfit/loadout/vrstandard //Standard Vet Gear, minor slowdown, assault carbine.
	)

/datum/job/ncr/f13vetranger/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")
	H.add_quirk("Lifegiver")
	H.add_quirk("Iron Fist")
	if(H.age < vet_age)
		H.age = vet_age

/datum/outfit/job/ncr/f13vetranger
	name = "NCR Veteran Ranger"
	jobtype = /datum/job/ncr/f13vetranger
	id = 			/obj/item/card/id/dogtag/ncrranger
	uniform =  		/obj/item/clothing/under/f13/vetranger
	belt =			/obj/item/storage/belt/military/assault/ncr
	gloves =		/obj/item/clothing/gloves/rifleman
	shoes =			/obj/item/clothing/shoes/laced
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/sequoia=1, \
		/obj/item/ammo_box/c4570=3, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrofficers)


/datum/outfit/loadout/vrelite
	name = "Sunburst Veteran"
	suit = 			/obj/item/clothing/suit/armor/f13/rangercombat
	head = 			/obj/item/clothing/head/helmet/f13/ncr/rangercombat
	suit_store = /obj/item/gun/ballistic/shotgun/antimateriel
	backpack_contents = list(
		/obj/item/ammo_box/a50MG=2,
		/obj/item/ammo_box/a50MG/AP=1)

/datum/outfit/loadout/vrrecon
	name = "Boneyard Veteran"
	suit = 			/obj/item/clothing/suit/armor/f13/rangercombat
	head = 			/obj/item/clothing/head/helmet/f13/ncr/rangercombat
	suit_store = /obj/item/gun/ballistic/shotgun/automatic/hunting/brush/scoped
	backpack_contents = list(
		/obj/item/ammo_box/tube/c4570=3)

/datum/outfit/loadout/vrstandard
	name = "Baja Veteran"
	suit = 			/obj/item/clothing/suit/armor/f13/rangercombat
	head = 			/obj/item/clothing/head/helmet/f13/ncr/rangercombat
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/*
Ranger
*/
/datum/job/ncr/f13ranger
	title = "NCR Ranger"
	flag = F13RANGER
	faction = "NCR"
	total_positions = 0
	spawn_positions = 0
	description = "As a Ranger, you perform reconnaissance, seize or destroy assets, and capture or recover designated targets in service to the Republic. Your reason for being sent here is to find and exploit local assets within the Region in order to prepare the area for the Republic's eventual arrival."
	supervisors = "Ranger Command, and the Veteran Ranger"
	selection_color = "#fff5cc"
	exp_requirements = 240

	outfit = /datum/outfit/job/ncr/f13ranger

	loadout_options = list(
	/datum/outfit/loadout/patrolranger,
	/datum/outfit/loadout/bajaranger,
	/datum/outfit/loadout/scoutranger
	)

/datum/job/ncr/f13ranger/after_spawn(mob/living/carbon/human/H, mob/M)
	H.add_quirk("Hard Yards")


/datum/outfit/job/ncr/f13ranger
	name = "NCR Ranger"
	jobtype = /datum/job/ncr/f13ranger
	id = 			/obj/item/card/id/dogtag/ncrranger
	uniform =  		/obj/item/clothing/under/f13/ranger
	belt =			/obj/item/storage/belt/military/assault/ncr
	gloves =		/obj/item/clothing/gloves/patrol
	shoes =			/obj/item/clothing/shoes/laced
	glasses = 		/obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/m29/alt,
		/obj/item/ammo_box/m44=2, \
		/obj/item/restraints/handcuffs=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/storage/bag/money/small/ncrofficers)
	r_pocket = /obj/item/twohanded/binocs

/datum/outfit/loadout/patrolranger
	name = "Boneyard Ranger"
	head = /obj/item/clothing/head/f13/ranger
	uniform = /obj/item/clothing/under/f13/patrolranger
	suit = /obj/item/clothing/suit/armor/f13/combat/ncr
	suit_store = /obj/item/gun/ballistic/automatic/greasegun
	backpack_contents = list(
		/obj/item/ammo_box/magazine/greasegun=3)

/datum/outfit/loadout/bajaranger
	name = "Baja Ranger"
	uniform = /obj/item/clothing/under/f13/ranger
	suit = /obj/item/clothing/suit/toggle/armor/f13/rangerrecon
	suit_store = /obj/item/gun/ballistic/automatic/marksman
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=3)

/datum/outfit/loadout/scoutranger
	name = "Mojave Ranger"
	head = /obj/item/clothing/head/f13/trailranger
	uniform = /obj/item/clothing/under/f13/trailranger
	suit = /obj/item/clothing/suit/armor/f13/trailranger
	suit_store = /obj/item/gun/ballistic/automatic/marksman/sniper
	backpack_contents = list(
		/obj/item/ammo_box/magazine/w308=3)