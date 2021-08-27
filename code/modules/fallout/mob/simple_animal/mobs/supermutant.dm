//Fallout 13 super mutants directory

/mob/living/simple_animal/hostile/supermutant
	name = "super mutant"
	desc = "A huge and ugly mutant humanoid."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "hulk_113_s"
	icon_living = "hulk_113_s"
	icon_dead = "hulk_113_s"
	speak_chance = 10
	speak = list("GRRRRRR!", "ARGH!", "NNNNNGH!", "HMPH!", "ARRRRR!")
	speak_emote = list("shouts", "yells")
	move_to_delay = 5
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	robust_searching = 1
	environment_smash = ENVIRONMENT_SMASH_WALLS
	turns_per_move = 5
	response_help = "touches"
	response_disarm = "tries to perform a kung fu move, then suddenly remembers that it's actually"
	response_harm = "hits"
	maxHealth = 350
	health = 350
	force_threshold = 15
	faction = list("hostile", "supermutant")
	melee_damage_lower = 25
	melee_damage_upper = 45
	mob_size = MOB_SIZE_LARGE
	anchored = TRUE //unpullable
	attacktext = "smashes"
	attack_sound = "punch"

/*	death_sound = list('sound/f13npc/supermutant_new/sm_death01.ogg','sound/f13npc/supermutant_new/sm_death02.ogg','sound/f13npc/supermutant_new/sm_death03.ogg',\
	'sound/f13npc/supermutant_new/sm_death04.ogg','sound/f13npc/supermutant_new/sm_death05.ogg','sound/f13npc/supermutant_new/sm_death06.ogg',\
	'sound/f13npc/supermutant_new/sm_death07.ogg','sound/f13npc/supermutant_new/sm_death08.ogg','sound/f13npc/supermutant_new/sm_death09.ogg')*/

/mob/living/simple_animal/hostile/supermutant/Aggro()
	..()
	summon_backup(15)
	say("HUMANS, ATTACK!!!")

/mob/living/simple_animal/hostile/supermutant/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		return
	if(prob(85) || Proj.damage > 26)
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] is deflected harmlessly by \the [src]'s thick skin!</span>")
		return FALSE

/mob/living/simple_animal/hostile/supermutant/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	..()

/mob/living/simple_animal/pet/dog/mutant    //This is a supermutant, totally not a dog, and he is friendly
	name = "Brah-Min"
	desc = "A large, docile supermutant. Adopted by Kebab-town as a sort of watch dog for their brahmin herd."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "hulk_brahmin_s"
	icon_dead = "hulk_brahmin_s"
	maxHealth = 300
	health = 300
	speak_chance = 7 //30 //Oh my god he never shuts up.
	anchored = TRUE
	mob_size = MOB_SIZE_LARGE
	speak = list("Hey! These my brahmins!", "And I say, HEY-YEY-AAEYAAA-EYAEYAA! HEY-YEY-AAEYAAA-EYAEYAA! I SAID HEY, what's going on?", "What do you want from my brahmins?!", "Me gonna clean brahmin poop again now!", "I love brahmins, brahmins are good, just poop much!", "Do not speak to my brahmins ever again, you hear?!", "Bad raiders come to steal my brahmins - I crush with shovel!", "Do not come to my brahmins! Do not touch my brahmins! Do not look at my brahmins!", "I'm watching you, and my brahmins watch too!", "Brahmins say moo, and I'm saying - hey, get your ugly face out of my way!", "I... I remember, before the fire... THERE WERE NO BRAHMINS!", "No! No wind brahmin here! Wind brahmin lie!")
	speak_emote = list("shouts", "yells")
	emote_hear = list("yawns", "mumbles","sighs")
	emote_see = list("raises his shovel", "shovels some dirt away", "waves his shovel above his head angrily")
	response_help  = "touches"
	response_disarm = "pushes"
	response_harm   = "punches"
//	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/bearsteak = 3)

/mob/living/simple_animal/pet/dog/mutant/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	if(!gibbed)
		visible_message("<span class='danger'>\the [src] shouts something incoherent about brahmins for the last time and stops moving...</span>")
	..()

/mob/living/simple_animal/hostile/supermutant/rangedmutant
	desc = "A huge and ugly mutant humanoid.  This one is armed with a poorly maintained hunting rifle."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "hulk_ranged_s"
	icon_living = "hulk_ranged_s"
	icon_dead = "hulk_ranged_s"
	ranged = 1
	maxHealth = 200//less due to being ranged
	health = 200//as above
	retreat_distance = 8
	minimum_distance = 4
	projectiletype = /obj/item/projectile/bullet/F13/c308mmBullet
	projectilesound = 'sound/f13weapons/hunting_rifle.ogg'
	loot = list(/obj/item/ammo_box/a762,/obj/item/gun/ballistic/shotgun/remington)

/mob/living/simple_animal/hostile/supermutant/rangedmutant/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	..()

/////////
// HMG Mutant - Boss mutant, similar to Robobrain and Sentrybot. Not used yet outside of Admin abuse(and soon Lavaland.).
/////////
/mob/living/simple_animal/hostile/supermutant/rangedmutant/heavy
	desc = "A huge and ugly mutant humanoid.  This one is clad in armor and carrying a rather large gun."
	icon = 'icons/fallout/mobs/supermutant.dmi'
	icon_state = "hulk_hmg_s"
	icon_living = "hulk_hmg_s"
	icon_dead = "hulk_ranged_s"
	ranged = 1
	maxHealth = 640
	health = 640
	retreat_distance = 0
	minimum_distance = 0
	stop_automated_movement = 1
	see_in_dark = 7
	projectiletype = /obj/item/projectile/bullet/F13/sm_hmg
	projectilesound = 'sound/f13weapons/antimaterielfire.ogg'
	extra_projectiles = 4 //5 projectiles
	ranged_cooldown_time = 15//From 120, - 'Long cooldown due to damage output.' | Changed due to it being an admin only mob.
	loot = list(/obj/machinery/manned_turret/m2)

/mob/living/simple_animal/hostile/supermutant/rangedmutant/heavy/death(gibbed)
	icon = 'icons/fallout/mobs/supermutant_dead.dmi'
	icon_state = icon_dead
	anchored = FALSE
	..()

/mob/living/simple_animal/hostile/supermutant/rangedmutant/heavy/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		CRASH("[src] heavy supermutant invoked bullet_act() without a projectile")
	if(prob(75) || Proj.damage > 26)
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] bounces off \the [src]'s armor plating!</span>")
		return FALSE

/obj/item/projectile/bullet/F13/sm_hmg
	damage = 15//from 35
	armour_penetration = 45
