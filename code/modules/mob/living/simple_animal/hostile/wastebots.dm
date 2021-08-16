/mob/living/simple_animal/hostile/handy
	name = "mr. handy"
	desc = "A crazed pre-war household assistant robot, armed with a cutting saw."
	icon = 'icons/mob/robots.dmi'
	icon_state = "handy"
	icon_living = "handy"
	icon_dead = "gib7"
	gender = NEUTER
	mob_biotypes = list(MOB_ROBOTIC)
	anchored = TRUE //unpullable
	health = 120
	maxHealth = 120
	healable = 0
	speed = 1
	melee_damage_lower = 28 //halved this on req
	melee_damage_upper = 28 //as above
	robust_searching = 1
	attacktext = "slaps"
	attack_sound = 'sound/weapons/circsawhit.ogg'
	faction = list("wastebot", "enclave")
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	speak_emote = list("states")
	gold_core_spawnable = HOSTILE_SPAWN
	del_on_death = 1
	deathmessage = "blows apart!"
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three)
	stat_attack = UNCONSCIOUS || SOFT_CRIT

/mob/living/simple_animal/hostile/handy/Initialize()
	. = ..()
	add_overlay("eyes-[initial(icon_state)]")

/mob/living/simple_animal/hostile/handy/gutsy
	name = "mr. gutsy"
	desc = "A pre-war combat robot based off the Mr. Handy design, armed with plasma weaponry and a deadly close-range flamer."
	icon_state = "gutsy"
	icon_living = "gutsy"
	icon_dead = "gib7"
	health = 200
	maxHealth = 200
	melee_damage_lower = 24
	melee_damage_upper = 32
	attack_sound = 'sound/items/welder.ogg'
	attacktext = "shoots a burst of flame at"
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/plasma/scatter
	extra_projectiles = 2
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 2
	check_friendly_fire = TRUE
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	speak_chance = 15
	speak = list("You are about to be introduced to the U.S. army!", "You better run, you commie-loving bastard!", "Ready to die for your country, you commie son of a bitch?", "Since you don't seem willing to do the world a favor and kill yourself, I guess I'm going to have to do it for you.", "I'm just getting warmed up! Hoo-ah!", "Another glorious day in this man's army!")
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three, /obj/item/stock_parts/cell/ammo/mfc)

/mob/living/simple_animal/hostile/handy/gutsy/AttackingTarget()
	. = ..()

//enclave
/mob/living/simple_animal/hostile/handy/gutsy/enclave
	name = "hardened mr. gutsy"
	desc = "A pre-war combat robot based off the Mr. Handy design, armed with plasma weaponry and a deadly close-range flamer. This one appears to have reinforced armor plating."
	health = 350
	maxHealth = 350
	melee_damage_lower = 14
	melee_damage_upper = 42
	projectiletype = /obj/item/projectile/plasma/repeater
	retreat_distance = 2
	minimum_distance = 4
	stat_attack = UNCONSCIOUS || SOFT_CRIT

/mob/living/simple_animal/hostile/handy/protectron
	name = "protectron"
	desc = "A pre-war security robot armed with deadly lasers."
	icon_state = "protectron"
	icon_living = "protectron"
	icon_dead = "protectron_dead"
	health = 120
	maxHealth = 120
	speed = 4
	melee_damage_lower = 5 //severely reduced melee damage here because its silly to have a ranged mob also be a cqc master
	melee_damage_upper = 10
	extra_projectiles = 1
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 2
	attacktext = "slaps"
	attack_sound = 'sound/weapons/punch1.ogg'
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/beam/laser/pistol
	faction = list("wastebot", "enclave")
	check_friendly_fire = TRUE
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/five)
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	speak_chance = 15
	speak = list("Engaging hostile target.", "Halt, lawbreaker! You are hereby sentenced to death for breaking curfew.", "Please put your hands in the air and prepare for disciplinary action.")

//enclave
/mob/living/simple_animal/hostile/handy/protectron/enclave
	name = "hardened protectron"
	desc = "A pre-war security robot armed with deadly lasers. This one appears to have heavily reinforced armor plating."
	health = 240
	maxHealth = 240
	speed = 2
	melee_damage_lower = 15
	melee_damage_upper = 25//don't corner it
	extra_projectiles = 1//just the one
	retreat_distance = 2
	minimum_distance = 4//same as the gutsy
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/beam/laser/pistol/wattz
	stat_attack = UNCONSCIOUS || SOFT_CRIT

/mob/living/simple_animal/pet/dog/protectron //Not an actual dog
	name = "Trading Protectron"
	desc = "A standard RobCo RX2 V1.16.4 \"Trade-o-Vend\", loaded with Trade protocols.<br>Looks like it was kept operational for an indefinite period of time. Its body is covered in cracks and dents of various sizes.<br>As it has been repaired countless times, it's amazing the machine is still functioning at all."
	icon = 'icons/fallout/mobs/animal.dmi'
	icon_state = "protectron"
	icon_living = "protectron"
	icon_dead = "protectron_d"
	maxHealth = 200
	health = 200
	speak_chance = 5
	faction = list("neutral", "silicon", "dog", "hostile", "pirate", "wastebot", "wolf", "plants", "turret", "enclave", "ghoul", "cazador", "supermutant", "gecko", "slime", "radscorpion", "skeleton", "carp", "bs", "bighorner")
	speak = list("Howdy partner! How about you spend some of them there hard earned caps on some of this fine merchandise.", "Welcome back partner! Hoo-wee it's a good day to buy some personal protection!", "Stop, this is a robbery! At these prices you are robbing me.", "Legion? NCR? Raider? Hell we don't care, as long as you got the caps.", "What a fine day partner. A fine day indeed.", "Reminds me of what my grandpappy used to say, make a snap decision now and never question it. You look like you could use some product there partner.", "Lotta critters out there want to chew you up partner, you could use a little hand with that now couldn't you?")
	speak_emote = list()
	emote_hear = list()
	emote_see = list()
	response_help  = "shakes its manipulator"
	response_disarm = "pushes"
	response_harm   = "punches"
	attack_sound = 'sound/voice/liveagain.ogg'
	butcher_results = list(/obj/effect/gibspawner/robot = 1)

/mob/living/simple_animal/hostile/handy/sentrybot
	name = "sentry bot"
	desc = "A pre-war military robot armed with a deadly gatling laser and covered in thick armor plating."
	icon_state = "sentrybot"
	icon_living = "sentrybot"
	icon_dead = "sentrybot"
	health = 680
	maxHealth = 680
	melee_damage_lower = 48
	melee_damage_upper = 72
	extra_projectiles = 4 //5 projectiles
	ranged_cooldown_time = 12 //brrrrrrrrrrrrt
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	ranged = TRUE
	retreat_distance = 2
	minimum_distance = 2
	del_on_death = FALSE
	attacktext = "pulverizes"
	attack_sound = 'sound/weapons/punch1.ogg'
	projectilesound = 'sound/weapons/laser.ogg'
	projectiletype = /obj/item/projectile/beam/laser/pistol/ultraweak
	faction = list("wastebot")
	check_friendly_fire = TRUE
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/five, /obj/item/stock_parts/cell/ammo/mfc)
	speak_chance = 15
	speak = list("Adding target to threat matrix.", "Weapons free. Non-combatants are advised to stand clear.", "Locking on... firing.", "Threat level: red.")

/obj/item/projectile/beam/laser/pistol/ultraweak
	damage = 10 //quantity over quality

/mob/living/simple_animal/hostile/handy/sentrybot/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		CRASH("[src] sentrybot invoked bullet_act() without a projectile")
	if(prob(10) && health > 1)
		visible_message("<span class='danger'>\The [src] releases a defensive flashbang!</span>")
		var/flashbang_turf = get_turf(src)
		if(!flashbang_turf)
			return
		var/obj/item/grenade/flashbang/sentry/S = new /obj/item/grenade/flashbang/sentry(flashbang_turf)
		S.preprime(user = null)
	if(prob(75) || Proj.damage > 26) //prob(x) = chance for proj to actually do something, adjust depending on how OP you want sentrybots to be
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] bounces off \the [src]'s armor plating!</span>")
		return FALSE

/mob/living/simple_animal/hostile/handy/sentrybot/proc/do_death_beep()
	playsound(src, 'sound/machines/triple_beep.ogg', 75, TRUE)
	visible_message("<span class='warning'>You hear an ominous beep coming from [src]!</span>", "<span class='warning'>You hear an ominous beep!</span>")

/mob/living/simple_animal/hostile/handy/sentrybot/proc/self_destruct()
	explosion(src,1,2,4,4)
	qdel(src)

/mob/living/simple_animal/hostile/handy/sentrybot/death()
	do_sparks(3, TRUE, src)
	for(var/i in 1 to 3)
		addtimer(CALLBACK(src, .proc/do_death_beep), i * 1 SECONDS)
	addtimer(CALLBACK(src, .proc/self_destruct), 4 SECONDS)
	return ..()

/mob/living/simple_animal/hostile/handy/sentrybot/Aggro()
	. = ..()
	summon_backup(15)

///
//Start Special Sentry
///

/mob/living/simple_animal/hostile/handy/sentrybot/enclave
	name = "hardened sentry bot"
	desc = "A pre-war military robot armed with a deadly gatling laser and covered in thick armor plating. This one bears pre-war markings quite visibly, alongside looking in pristine condition."
	health = 1280
	maxHealth = 1280//boss mob
	melee_damage_lower = 48
	melee_damage_upper = 72
	extra_projectiles = 5 //6 projectiles
	ranged_cooldown_time = 24 //brrrrrrrrrrrrt
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	ranged = TRUE
	retreat_distance = 6
	minimum_distance = 4
	projectiletype = /obj/item/projectile/beam/laser/pistol/ultraweak/enclave
	faction = list("wastebot", "enclave")

/obj/item/projectile/beam/laser/pistol/ultraweak/enclave
	damage = 15
	hitscan = 0

/mob/living/simple_animal/hostile/handy/sentrybot/enclave/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		CRASH("[src] hardened sentrybot invoked bullet_act() without a projectile")
	if(prob(10) && health > 1)
		visible_message("<span class='danger'>\The [src] releases a defensive flashbang!</span>")
		var/flashbang_turf = get_turf(src)
		if(!flashbang_turf)
			return
		var/obj/item/grenade/flashbang/sentry/S = new /obj/item/grenade/flashbang/sentry(flashbang_turf)
		S.preprime(user = null)
	if(prob(15) || Proj.damage > 26)//very little chance to damage without proper weaponry.
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] shatters on \the [src]'s armor plating!</span>")
		return FALSE

///
//End Special Sentry
///

/mob/living/simple_animal/hostile/handy/assaultron
	name = "assaultron"
	desc = "A deadly close combat robot developed by RobCo.  Their head laser is absolutely devastating."
	icon_state = "assaultron"
	icon_living = "assaultron"
	icon_dead = "gib7"
	health = 450
	maxHealth = 450
	faction = list("wastebot", "enclave")
	speed = 0
	melee_damage_lower = 55
	melee_damage_upper = 60
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	attacktext = "grinds their claws on"
//	projectilesound = 'sound/weapons/ionrifle.ogg'
//	projectiletype = /obj/item/projectile/beam/laser/heavylaser//generic heavy for the moment
	speak_chance = 15
	speak = list("AO compromised! Engaging!", "Enemy combatant acquired. Weapons free!", "Scanners detecting sentient life. Alert level elevated.", "We have a situation!", "Sensor alert. Anomaly detected.")
	faction = list("wastebot")
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/three, /obj/item/stock_parts/cell/ammo/mfc)

/mob/living/simple_animal/hostile/handy/assaultron/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		CRASH("[src] assaultron invoked bullet_act() without a projectile")
	if(prob(65) || Proj.damage > 26)
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] shatters on \the [src]'s armor plating!</span>")
		return FALSE

/mob/living/simple_animal/hostile/handy/robobrain
	name = "Robobrain"
	desc = "A pre-war military robot armed with a deadly psionic beam and covered in thick armor plating. That dome even looks armored, somehow. Jesus..."
	icon_state = "robobrain"
	icon_living = "robobrain"
	icon_dead = "robobrain"
	health = 480
	maxHealth = 480
	melee_damage_lower = 24
	melee_damage_upper = 72//why would you even get close?
	extra_projectiles = 0
	ranged_cooldown_time = 12//big ol' 'fuck off' laser
	stat_attack = UNCONSCIOUS || SOFT_CRIT
	ranged = TRUE
	retreat_distance = 6
	minimum_distance = 8
	del_on_death = FALSE
	attacktext = "slaps about"
	attack_sound = 'sound/weapons/punch1.ogg'
	projectilesound = 'sound/weapons/ionrifle.ogg'
	projectiletype = /obj/item/projectile/beam/mindflayer/robobrain
	faction = list("wastebot")
	check_friendly_fire = TRUE
	loot = list(/obj/effect/decal/cleanable/robot_debris, /obj/item/stack/crafting/electronicparts/five, /obj/item/stock_parts/cell/ammo/mfc, /obj/item/integrated_circuit/input/mmi_tank)
	speak_chance = 15
	speak = list("You could run? I'm trying to kill you, you know.", "Please believe me when I say I'm not enjoying this.", "There's no point in trying to hide from me. I'm programmed to be quite relentless.", "Why are you hiding? I will find you.", "They could have programmed me to love, to forgive; but noooooo.", "I calculate your chance of success to be...well, I don't want to be morbid...")


/obj/item/projectile/beam/mindflayer/robobrain
	name = "psionic beam"

/obj/item/projectile/beam/mindflayer/robobrain/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(ishuman(target))
		var/mob/living/carbon/human/M = target
		M.adjustBrainLoss(10)
		M.confused = max(M.confused, 8)
		M.hallucination += 15


/mob/living/simple_animal/hostile/handy/robobrain/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		CRASH("[src] robobrain invoked bullet_act() without a projectile")
	if(prob(15) || Proj.damage > 32) //far less chance to do something, even in comparison to a sentry bot, due to being an incredibly uncommon/boss creature.
		return ..()
	else
		visible_message("<span class='danger'>\The [Proj] shatters on \the [src]'s armor plating!</span>")
		return FALSE

/mob/living/simple_animal/hostile/handy/robobrain/proc/do_death_beep()
	playsound(src, 'sound/machines/triple_beep.ogg', 75, TRUE)
	visible_message("<span class='warning'>You hear an ominous beep coming from [src]!</span>", "<span class='warning'>You hear an ominous beep!</span>")

/mob/living/simple_animal/hostile/handy/robobrain/proc/self_destruct()
	explosion(src,1,1,1,1)//tiny explosion, purely because we don't have an actual death sprite.
	qdel(src)

/mob/living/simple_animal/hostile/handy/robobrain/death()
	do_sparks(3, TRUE, src)
	for(var/i in 1 to 3)
		addtimer(CALLBACK(src, .proc/do_death_beep), i * 1 SECONDS)
	addtimer(CALLBACK(src, .proc/self_destruct), 4 SECONDS)
	return ..()

/mob/living/simple_animal/hostile/handy/robobrain/Aggro()
	. = ..()
	summon_backup(15)
