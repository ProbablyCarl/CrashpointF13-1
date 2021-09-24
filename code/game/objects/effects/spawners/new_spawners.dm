/////////
// This'll contain all spawners for our updated tier system. Please keep this in mind when making edits.
/////////

/* ------------------------------------------------
   ----------------ARMOR SPAWNERS------------------
   ------------------------------------------------ */

/obj/effect/spawner/lootdrop/f13/armor/newsets
	name = "armor spawners - DO NOT USE THIS"
	icon_state = "armor_loot"

/////////
// Start of Makeshift.
/////////
/obj/effect/spawner/lootdrop/f13/armor/newsets/makeshift/tier1 //TIER 1 MAKESHIFT ARMOR
	name = "tier 1 makeshift armor"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/clothing/suit/armor/f13/kit,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/armor/f13/leather_jacket,
				/obj/item/clothing/head/helmet/f13/deathskull
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/makeshift/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/armor/newsets/makeshift/tier2 //TIER 2 MAKESHIFTARMOR
	name = "tier 2 makeshift armor"
	lootcount = 1
	var/loot1 = list(
				/obj/item/clothing/suit/f13/mfp
				)
	var/loot2 = list(
				/obj/item/clothing/suit/f13/duster
				)
	var/loot3 = list(
				/obj/item/clothing/suit/f13/veteran
				)
	var/loot4 = list(
				/obj/item/clothing/suit/f13/autumn
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/f13/leather_jacket/combat
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/makeshift/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5)
	. = ..()

/obj/effect/spawner/lootdrop/f13/armor/newsets/makeshift/tier3 //TIER 3 ARMOR
	name = "tier 3 makeshift armor"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/armor/f13/raider,
				/obj/item/clothing/head/helmet/f13/raider
				)
	var/loot2 = list(
				/obj/item/clothing/suit/armor/f13/raider/sadist,
				/obj/item/clothing/head/helmet/f13/raider/arclight
				)
	var/loot3 = list(
				/obj/item/clothing/suit/armor/f13/raider/blastmaster,
				/obj/item/clothing/head/helmet/f13/raider/blastmaster
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/f13/raider/yankee,
				/obj/item/clothing/head/helmet/f13/raider/yankee
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/f13/raider/badlands,
				/obj/item/clothing/head/helmet/f13/fiend
				)
	var/loot6 = list(
				/obj/item/clothing/suit/armor/f13/raider/painspike,
				/obj/item/clothing/head/helmet/f13/raider/psychotic
				)
	var/loot7 = list(
				/obj/item/clothing/suit/armor/f13/raider,
				/obj/item/clothing/head/helmet/f13/raider
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/makeshift/tier3/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7)
	. = ..()

/////////
// End of Makeshift.
// Start of Projectile.
/////////

/obj/effect/spawner/lootdrop/f13/armor/newsets/projectile/tier1 //TIER 1 PROJECTILE ARMOR
	name = "tier 1 projectile armor"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/clothing/suit/armor/f13/leatherarmor
				)
	var/loot2 = list(//used to force a proper setup or no spawn.
				""
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/projectile/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/armor/newsets/projectile/tier2 //TIER 2 PROJECTILE ARMOR
	name = "tier 2 projectile armor"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/clothing/suit/armor/f13/leatherarmor/reinforced,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/armor/f13/combat,
				/obj/item/clothing/head/helmet/f13/combat
				)
	var/loot3 = list(
				/obj/item/clothing/suit/armor/f13/bmetalarmor,
				/obj/item/clothing/head/helmet/knight/fluff/metal/reinforced
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/f13/metalarmor,
				/obj/item/clothing/head/helmet/knight/fluff/metal
				)
	var/loot5 = list(//5 and 6 for fluff / better luck
				/obj/item/clothing/suit/armor/f13/bmetalarmor,
				/obj/item/clothing/head/helmet/f13/raidermetal
				)
	var/loot6 = list(
				/obj/item/clothing/suit/armor/f13/metalarmor,
				/obj/item/clothing/head/helmet/f13/metalmask
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/projectile/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6)
	. = ..()

/obj/effect/spawner/lootdrop/f13/armor/newsets/projectile/tier3 //TIER 3 PROJECTILE ARMOR
	name = "tier 3 projectile armor"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/clothing/suit/armor/f13/combatmk2,
				/obj/item/clothing/head/helmet/f13/combat/mk2
				)
	var/loot2 = list(//used to force a proper setup or no spawn.
				"",
				""
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/projectile/tier3/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/////////
// End of Projectile.
// Start of Energy.
/////////

/obj/effect/spawner/lootdrop/f13/armor/newsets/energy/tier1 //TIER 1 ENERGY ARMOR
	name = "tier 1 energy armor"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/clothing/suit/armor/f13/metalarmor/reinforced,
				/obj/item/clothing/head/helmet/f13/metalmask/mk2
				)
	var/loot2 = list(//used to force a proper setup or no spawn.
				"",
				""
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/energy/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/armor/newsets/energy/tier2 //TIER 2 ENERGY ARMOR
	name = "tier 2 energy armor"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/clothing/suit/armor/f13/tesla,
				/obj/item/clothing/head/helmet/f13/tesla
				)
	var/loot2 = list(//used to force a proper setup or no spawn.
				"",
				"",
				""
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/energy/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/////////
// End of Energy.
// Start of Special.
/////////

/obj/effect/spawner/lootdrop/f13/armor/newsets/special/tier1 //TIER 1 SPECIAL ARMOR
	name = "tier 1 special armor"
	lootcount = 3 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/clothing/suit/bio_suit/f13/hazmat,
				/obj/item/clothing/head/bio_hood/f13/hazmat,
				/obj/item/geiger_counter
				)
	var/loot2 = list(//used to force a proper setup or no spawn.
				"",
				"",
				""
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/special/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/////////
// End of Special.
// Start of PA.
/////////

/obj/effect/spawner/lootdrop/f13/armor/newsets/power/tier1 //TIER 1 POWER ARMOR
	name = "tier 1 power armor"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/brokent45,
				/obj/item/t45dhelmbroken
				)
	var/loot2 = list(
				/obj/item/brokentesca,
				/obj/item/excavatorhelmbroken
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/power/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/armor/newsets/power/tier2 //TIER 2 POWER ARMOR
	name = "tier 2 power armor"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/brokent51,
				/obj/item/t51bhelmbroken
				)
	var/loot2 = list(
				/obj/item/brokent60,
				/obj/item/t60helmbroken
				)

/obj/effect/spawner/lootdrop/f13/armor/newsets/power/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/////////
// End of PA.
// Start of ---.
/////////


/* ------------------------------------------------
   ----------------WEAPON SPAWNERS-----------------
   ------------------------------------------------ */
/obj/effect/spawner/lootdrop/f13/weapon/newsets
	name = "weapon spawners - DO NOT USE THIS"
	icon_state = "gun_loot"

/////////
// Start of Projectile.
/////////

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier1 //TIER 1 PROJECTILE WEAPONS
	name = "tier 1 projectile weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/ballistic/revolver/pipe_rifle,
				/obj/item/ammo_box/c10mm/near_empty
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/revolver/zipgun,
				/obj/item/ammo_box/c9mm/near_empty
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/revolver/single_shotgun,
				/obj/item/storage/box/lethalshot/improvised
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier2 //TIER 2 PROJECTILE WEAPONS
	name = "tier 2 projectile weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/ballistic/revolver/caravan_shotgun,
				/obj/item/storage/box/lethalshot/improvised
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/marksman/servicerifle/varmint,
				/obj/item/ammo_box/a556/stripper//because your mag has a feed for stripper clips, to top it off
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/revolver/zhurong/standard,//Fucky because it doesn't eject casings immediately, due to being a revolver. Sadly.
				/obj/item/ammo_box/c10mm/stripper
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/revolver/police,
				/obj/item/ammo_box/c38
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier3 //TIER 3 PROJECTILE WEAPONS
	name = "tier 3 projectile weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/ballistic/revolver/colt6250,
				/obj/item/ammo_box/l10mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/revolver/colt357,
				/obj/item/ammo_box/a357
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/pistol/ninemil,
				/obj/item/ammo_box/magazine/m9mm
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/pistol/n99,
				/obj/item/ammo_box/magazine/m10mm_adv
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/automatic/smg10mm,
				/obj/item/ammo_box/magazine/m10mm_auto
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/automatic/greasegun,
				/obj/item/ammo_box/magazine/greasegun
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/pistol/m1911,
				/obj/item/ammo_box/magazine/m45
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/shotgun/trench,
				/obj/item/storage/box/lethalshot
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/shotgun/hunting,
				/obj/item/storage/box/lethalshot
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier3/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier4 //TIER 4 PROJECTILE WEAPONS
	name = "tier 4 projectile weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/marksman/servicerifle,
				/obj/item/ammo_box/magazine/m556/rifle
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/marksman,
				/obj/item/ammo_box/magazine/m556/rifle
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/marksman/sniper,
				/obj/item/ammo_box/magazine/w308
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/assault_carbine,
				/obj/item/ammo_box/magazine/m556/rifle
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/automatic/shotgun/riot,//The baby brother of the CAWS/Pancor. Not fully automatic, unlike the aforementioned two.
				/obj/item/ammo_box/magazine/d12g
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/automatic/assault_rifle/infiltrator,
				/obj/item/ammo_box/magazine/m556/rifle
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/type93,
				/obj/item/ammo_box/magazine/m556/rifle/assault
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/automatic/rangemaster,
				/obj/item/ammo_box/magazine/m762
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/automatic/m1garand,
				/obj/item/ammo_box/magazine/garand308
				)


/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier4/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier5 //TIER 5 PROJECTILE WEAPONS
	name = "tier 5 projectile weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/m72,
				/obj/item/ammo_box/magazine/m2mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/shotgun/pancor,
				/obj/item/ammo_box/magazine/d12g
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/shotgun/caws,//Ooof. Pancor but worse. Better luck next time, Bud. Still a very good firearm, though. Think of it at T4.5, instead of T5.
				/obj/item/ammo_box/magazine/d12g
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/bozar,
				/obj/item/ammo_box/magazine/m556/rifle
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/projectile/tier5/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4)
	. = ..()

/////////
// End of Projectile.
// Start of Energy.
/////////
/*
/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier1 //TIER 1 ENERGY WEAPONS - DO NOT USE UNTIL MAKESHIFT SPRITES ARE ACTIVE
	name = "tier 1 energy weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/brokent45,
				/obj/item/t45dhelmbroken
				)
	var/loot2 = list(
				/obj/item/brokentesca,
				/obj/item/excavatorhelmbroken
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()
*/
/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier2 //TIER 2 ENERGY WEAPONS
	name = "tier 2 energy weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/energy/laser/wattz,
				/obj/item/stock_parts/cell/ammo/ec
				)
	var/loot2 = list(
				/obj/item/gun/energy/laser/wattz_rifle,//Five less damage, for less armor-damage penalty.
				/obj/item/stock_parts/cell/ammo/mfc
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier3 //TIER 3 ENERGY WEAPONS
	name = "tier 3 energy weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/energy/laser/aer9,
				/obj/item/stock_parts/cell/ammo/mfc
				)
	var/loot2 = list(
				/obj/item/gun/energy/laser/scatter,
				/obj/item/stock_parts/cell/ammo/mfc
				)
	var/loot3 = list(
				/obj/item/gun/energy/laser/pistol,
				/obj/item/stock_parts/cell/ammo/ec
				)
	var/loot4 = list(
				/obj/item/gun/energy/laser/plasma/pistol,
				/obj/item/stock_parts/cell/ammo/ec
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier3/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier4 //TIER 4 ENERGY WEAPONS
	name = "tier 4 energy weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/energy/laser/plasma,
				/obj/item/stock_parts/cell/ammo/mfc
				)
	var/loot2 = list(
				/obj/item/gun/energy/laser/plasma/scatter,
				/obj/item/stock_parts/cell/ammo/mfc
				)
	var/loot3 = list(
				/obj/item/gun/energy/laser/plasma/glock,
				/obj/item/stock_parts/cell/ammo/ec
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/energy/tier4/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3)
	. = ..()

/////////
// End of Energy.
// Start of Melee.
/////////
/obj/effect/spawner/lootdrop/f13/weapon/newsets/melee
	icon_state = "melee_loot"

/obj/effect/spawner/lootdrop/f13/weapon/newsets/melee/tier1 //TIER 1 MELEE WEAPONS - Makeshift / Primary
	name = "tier 1 melee weapons"
	icon_state = "melee_loot"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/claymore/machete/pipe)
	var/loot2 = list(
				/obj/item/claymore/machete/pipe/pan)
	var/loot3 = list(
				/obj/item/claymore/machete/golf)
	var/loot4 = list(
				/obj/item/claymore/machete/golf/teniron)
	var/loot5 = list(
				/obj/item/claymore/machete/pipe/tireiron)
	var/loot6 = list(
				/obj/item/twohanded/baseball)
	var/loot7 = list(
				/obj/item/twohanded/spear)
	var/loot8 = list(
				/obj/item/kitchen/knife/combat)
	var/loot9 = list(
				/obj/item/kitchen/knife/cosmic)
	var/loot10 = list(
				/obj/item/kitchen/knife/cosmicdirty)
	var/loot11 = list(
				/obj/item/kitchen/knife/butcher)
	var/loot12 = list(
				/obj/item/kitchen/knife)
	var/loot13 = list(
				/obj/item/kitchen/rollingpin)
	var/loot14 = list(
				/obj/item/shovel)


/obj/effect/spawner/lootdrop/f13/weapon/newsets/melee/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12, loot13, loot14)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/melee/tier2 //TIER 2 MELEE WEAPONS - Industrial / Better
	name = "tier 2 melee weapons"
	icon_state = "melee_loot"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/twohanded/sledgehammer)
	var/loot2 = list(
				/obj/item/twohanded/fireaxe)
	var/loot3 = list(
				/obj/item/twohanded/fireaxe/bmprsword)
	var/loot4 = list(
				/obj/item/twohanded/required/chainsaw)
	var/loot5 = list(
				/obj/item/twohanded/required/thermic_lance)
	var/loot6 = list(
				/obj/item/shishkebabpack)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/melee/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/melee/tier3 //TIER 3 MELEE WEAPONS - Military / Better
	name = "tier 3 melee weapons"
	icon_state = "melee_loot"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/twohanded/sledgehammer/supersledge)
	var/loot2 = list(
				/obj/item/melee/powerfist)
	var/loot3 = list(
				/obj/item/gun/ballistic/revolver/ballisticfist)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/melee/tier3/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2, loot3)
	. = ..()

/////////
// End of Melee.
// Start of Big Guns.
/////////

/obj/effect/spawner/lootdrop/f13/weapon/newsets/big_guns/tier1 //TIER 1 BIG GUNS
	name = "tier 1 big guns weapons"
	lootcount = 2 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/ballistic/revolver/grenadelauncher/unrestricted,
				/obj/item/ammo_box/a40mm
				)
	var/loot2 = list(
				"",//chance to not spawn at all.
				""
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/big_guns/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/big_guns/tier2 //TIER 2 BIG GUNS
	name = "tier 2 big guns weapons"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/atlauncher
				)
	var/loot2 = list(
				""//chance to not spawn at all.
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/big_guns/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/big_guns/tier3 //TIER 3 BIG GUNS
	name = "tier 3 big guns weapons"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/minigunpack
				)
	var/loot2 = list(
				""//chance to not spawn at all.
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/big_guns/tier3/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/////////
// End of Big Guns.
// Start of Throwing.
/////////

/obj/effect/spawner/lootdrop/f13/weapon/newsets/throwing/tier1 //TIER 1 THROWING WEAPONS
	name = "tier 1 throwing weapons"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/throwing_star/spear
				)
	var/loot2 = list(
				/obj/item/throwing_star/throwingknife
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/throwing/tier1/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()

/obj/effect/spawner/lootdrop/f13/weapon/newsets/throwing/tier2 //TIER 2 THROWING WEAPONS
	name = "tier 2 throwing weapons"
	lootcount = 1 //guaranteeing it /will/ spawn
	var/loot1 = list(
				/obj/item/grenade/syndieminibomb/pipebomb
				)
	var/loot2 = list(
				/obj/item/grenade/syndieminibomb/concussion/frag
				)

/obj/effect/spawner/lootdrop/f13/weapon/newsets/throwing/tier2/Initialize(mapload) //on mapload, pick what shit to spawn
	loot = pick(loot1, loot2)
	. = ..()
