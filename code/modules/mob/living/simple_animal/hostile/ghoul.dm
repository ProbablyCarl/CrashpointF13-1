/mob/living/simple_animal/hostile/ghoul
	name = "feral ghoul"
	desc = "A ghoul that has lost it's mind and become aggressive."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "feralghoul"
	icon_living = "feralghoul"
	icon_dead = "feralghoul_dead"
	mob_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	robust_searching = 1
	turns_per_move = 5
	speak_emote = list("growls")
	emote_see = list("screeches")
	emote_taunt = list("howls")
	emote_taunt_sound = list('sound/f13npc/ghoul_charge1.ogg','sound/f13npc/ghoul_charge2.ogg','sound/f13npc/ghoul_charge3.ogg')
	taunt_chance = 15
	a_intent = INTENT_HARM
	maxHealth = 45
	health = 45
	speed = 2
	harm_intent_damage = 15
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "claws"
	attack_sound = list('sound/f13npc/ghoul_new/ghoul_attack_01.ogg','sound/f13npc/ghoul_new/ghoul_attack_02.ogg','sound/f13npc/ghoul_new/ghoul_attack_03.ogg',\
	'sound/f13npc/ghoul_new/ghoul_attack_04.ogg')
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 20
	robust_searching = 1
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	gold_core_spawnable = HOSTILE_SPAWN
	faction = list("ghoul")
	decompose = TRUE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab/human/ghoul = 2,
							/obj/item/stack/sheet/animalhide/human = 1,
							/obj/item/stack/sheet/bone = 1)
	loot = list(/obj/item/stack/f13Cash/random/bottle_cap/ghoul)

	death_sound = list('sound/f13npc/ghoul_new/ghoul_death_01.ogg','sound/f13npc/ghoul_new/ghoul_death_02.ogg','sound/f13npc/ghoul_new/ghoul_death_03.ogg',\
	'sound/f13npc/ghoul_new/ghoul_death_04.ogg')

	var/ghoul_noises = list('sound/f13npc/ghoul_alert.ogg','sound/f13npc/ghoul_new/ghoul_seizure_long.ogg','sound/f13npc/ghoul_new/ghoul_seizure_short.ogg')

/mob/living/simple_animal/hostile/ghoul/say(message, datum/language/language = null, var/list/spans = list(), language, sanitize, ignore_spam)
	..()
	if(stat)
		return
	var/chosen_sound = pick(ghoul_noises)
	playsound(src, chosen_sound, 100, TRUE)

/mob/living/simple_animal/hostile/ghoul/Life()
	..()
	if(stat)
		return
	if(prob(10))
		var/chosen_sound = pick(ghoul_noises)
		playsound(src, chosen_sound, 100, TRUE)

/mob/living/simple_animal/hostile/ghoul/reaver
	name = "feral ghoul reaver"
	desc = "A ghoul that has lost it's mind and become aggressive. This one is strapped with metal armor, and appears far stronger."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "ghoulreaver"
	icon_living = "ghoulreaver"
	icon_dead = "ghoulreaver_dead"
	speed = 1
	a_intent = INTENT_HARM
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	maxHealth = 100
	health = 100
	harm_intent_damage = 6
	melee_damage_lower = 15
	melee_damage_upper = 25

/mob/living/simple_animal/hostile/ghoul/reaver/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/ghoul/reaver/Aggro()
	..()
	summon_backup(10)

/mob/living/simple_animal/hostile/ghoul/coldferal
	name = "cold ghoul feral"
	desc = "A ghoul that has lost it's mind and become aggressive. This one is strapped with metal armor, and appears far stronger."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "cold_feral"
	icon_living = "cold_feral"
	icon_dead = "cold_feral_dead"
	speed = 1
	a_intent = INTENT_HARM
	maxHealth = 150
	health = 150
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15

/mob/living/simple_animal/hostile/ghoul/frozenreaver
	name = "frozen ghoul reaver"
	desc = "A ghoul that has lost it's mind and become aggressive. This one is strapped with metal armor, and appears far stronger."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "frozen_reaver"
	icon_living = "frozen_reaver"
	icon_dead = "frozen_reaver_dead"
	speed = 1
	a_intent = INTENT_HARM
	maxHealth = 150
	health = 150
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15

/mob/living/simple_animal/hostile/ghoul/glowing
	name = "glowing feral ghoul"
	desc = "A feral ghoul that has absorbed massive amounts of radiation, causing them to glow in the dark and radiate constantly.."
	icon_state = "glowinghoul"
	icon_living = "glowinghoul"
	icon_dead = "glowinghoul_dead"
	maxHealth = 80
	health = 80
	speed = 1
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	harm_intent_damage = 10
	melee_damage_lower = 20
	melee_damage_upper = 20
	var/radburst_cooldown = 60

/mob/living/simple_animal/hostile/ghoul/glowing/Initialize()
	. = ..()
	set_light(2)

/mob/living/simple_animal/hostile/ghoul/glowing/Aggro()
	..()
	summon_backup(10)
	RadBurst()//temp test

/mob/living/simple_animal/hostile/ghoul/glowing/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.apply_effect(20, EFFECT_IRRADIATE, 0)

/mob/living/simple_animal/hostile/ghoul/glowing/handle_automated_action()
	if(!..()) //AIStatus is off
		return
	radburst_cooldown--

	if(target in range(3,src))
		if((health <= (0.6 * maxHealth)) && radburst_cooldown<=0)
			radburst_cooldown = initial(radburst_cooldown)
			RadBurst()

/mob/living/simple_animal/hostile/ghoul/glowing/proc/RadBurst()
	visible_message("<span class='warning'>[src] growls and releases a burst of radiation from its body!</span>",
						"<span class='notice'>You release a concentrated burst of radiation from your body!</span>")
	playsound(src, 'sound/f13npc/ghoul_radburst.ogg', 50, 0, 3)
	radiation_pulse(src, 30)
	for(var/mob/living/simple_animal/hostile/ghoul/G in range(7, src))
		if(G.stat == 3)
			G.revive(1)
		else
			G.revive(1, 1)
	set_light(7, 5, "#39FF14")
	spawn(40)
	set_light(2)

/mob/living/simple_animal/hostile/ghoul/frozen
	name = "frozen feral ghoul"
	desc = "A feral ghoul that has absorbed massive amounts of cold and Radiates Cold Air.."
	icon_state = "frozen_feral"
	icon_living = "frozen feral"
	icon_dead = "frozen_feral_dead"
	maxHealth = 80
	health = 80
	speed = 2
	harm_intent_damage = 10
	melee_damage_lower = 20
	melee_damage_upper = 20

/mob/living/simple_animal/hostile/ghoul/frozen/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/ghoul/frozen/Aggro()
	..()
	summon_backup(10)

/mob/living/simple_animal/hostile/ghoul/frozen/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.apply_effect(20, EFFECT_IRRADIATE, 0)


/mob/living/simple_animal/hostile/ghoul/hot
	name = "hot glowing ghoul"
	desc = "A feral ghoul that has absorbed massive amounts of cold and Radiates Cold Air.."
	icon_state = "hot_glowing_one"
	icon_living = "hot_glowing_one"
	icon_dead = "hot_glowing_one"
	maxHealth = 80
	health = 80
	speed = 2
	harm_intent_damage = 10
	melee_damage_lower = 20
	melee_damage_upper = 20

/mob/living/simple_animal/hostile/ghoul/hot/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/ghoul/hot/Aggro()
	..()
	summon_backup(10)

/mob/living/simple_animal/hostile/ghoul/hot/AttackingTarget()
	. = ..()
	if(. && ishuman(target))
		var/mob/living/carbon/human/H = target
		H.apply_effect(20, EFFECT_IRRADIATE, 0)

/mob/living/simple_animal/hostile/ghoul/soldier
	name = "Ghoul Soldier"
	desc = "Have you ever seen a living ghoul before?<br>Ghouls are necrotic post-humans - decrepit, rotting, zombie-like mutants."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "soldier_ghoul"
	icon_living = "soldier_ghoul"
	icon_dead = "soldier_ghoul_d"
	icon_gib = "gib"
	maxHealth = 90
	health = 90
	faction = list("ghoul", "wastebot")

/mob/living/simple_animal/hostile/ghoul/soldier/armored
	name = "Armored Ghoul Soldier"
	desc = "Have you ever seen a living ghoul before?<br>Ghouls are necrotic post-humans - decrepit, rotting, zombie-like mutants."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "soldier_ghoul_a"
	icon_living = "soldier_ghoul_a"
	icon_dead = "soldier_ghoul_a_d"
	icon_gib = "gib"
	maxHealth = 100
	health = 100
	faction = list("ghoul", "wastebot")

/mob/living/simple_animal/hostile/ghoul/scorched
	name = "Scorched Ghoul Soldier"
	desc = "Have you ever seen a living ghoul before?<br>Ghouls are necrotic post-humans - decrepit, rotting, zombie-like mutants."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "scorched_m"
	icon_living = "scorched_m"
	icon_dead = "scorched_m_d"
	icon_gib = "gib"
	speak_chance = 1
	turns_per_move = 5
	environment_smash = 0
	response_help = "hugs"
	response_disarm = "pushes aside"
	response_harm = "growl"
	move_to_delay = 4
	maxHealth = 80
	health = 80
	faction = list("scorched", "hostile")
	death_sound = list('sound/f13npc/scor_d1.ogg','sound/f13npc/scor_d2.ogg','sound/f13npc/scor_d3.ogg','sound/f13npc/scor_d4.ogg','sound/f13npc/scor_d5.ogg')
	melee_damage_lower = 15
	melee_damage_upper = 20
	aggro_vision_range = 10
	attacktext = "punches"
	attack_sound = "punch"


/mob/living/simple_animal/hostile/ghoul/scorched/ranged
	name = "Ranged Ghoul Solder"
	desc = "Have you ever seen a living ghoul before?<br>Ghouls are necrotic post-humans - decrepit, rotting, zombie-like mutants."
	icon = 'icons/mob/wastemobs.dmi'
	icon_state = "scorched_r"
	icon_living = "scorched_r"
	icon_dead = "scorched_r_d"
	icon_gib = "gib"
	speak_chance = 1
	turns_per_move = 5
	environment_smash = 0
	response_help = "hugs"
	response_disarm = "pushes aside"
	response_harm = "ow"
	move_to_delay = 4
	maxHealth = 80
	health = 80
	ranged = 1
	ranged_cooldown_time = 200
	projectiletype = /obj/item/projectile/bullet/F13/c9mmBullet
	projectilesound = 'sound/f13weapons/hunting_rifle.ogg'
	faction = list("scorched", "hostile")
	death_sound = list('sound/f13npc/scor_d1.ogg','sound/f13npc/scor_d2.ogg','sound/f13npc/scor_d3.ogg','sound/f13npc/scor_d4.ogg','sound/f13npc/scor_d5.ogg')
	melee_damage_lower = 15
	melee_damage_upper = 20
	aggro_vision_range = 10
	attacktext = "shoots"
	attack_sound = "punch"
