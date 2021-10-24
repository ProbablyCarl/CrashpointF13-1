/obj/item/grenade/syndieminibomb
	desc = "A expertly manufactured explosive used to sow destruction and chaos."
	name = "minibomb grenade"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "syndicate"
	item_state = "flashbang"


/obj/item/grenade/syndieminibomb/prime()
	update_mob()
	explosion(src.loc,1,2,4,flame_range = 2)
	qdel(src)

/obj/item/grenade/syndieminibomb/concussion
	name = "Concussion Grenade"
	desc = "A grenade meant to kill via concussive force alone. While it produces fragments, they're practically nothing in comparison to a dedicated explosive of the sort. \
	Because of the aforementioned lack of fragments, this boasts a small kill radius, making it safe to use in the open."
	icon_state = "concussion"

/obj/item/grenade/syndieminibomb/concussion/prime()
	update_mob()
	explosion(src.loc,0,0,3,6,flame_range = 0)
	qdel(src)

/obj/item/grenade/syndieminibomb/concussion/frag
	name = "frag grenade"
	desc = "Fire in the hole."
	icon_state = "frag"

/obj/item/grenade/syndieminibomb/concussion/frag/prime()
	update_mob()
	explosion(src.loc,1,2,2,flame_range = 1)
	qdel(src)

/obj/item/grenade/syndieminibomb/pipebomb
	name = "pipebomb"
	desc = "A rather long tube of explosives."
	icon = 'icons/obj/grenade.dmi'
	icon_state = "syndicate"
	item_state = "flashbang"

/obj/item/grenade/syndieminibomb/pipebomb/prime()
	update_mob()
	explosion(src.loc,1,1,3,5,flame_range = 6)
	qdel(src)


/obj/item/grenade/gluon
	desc = "An advanced grenade that releases a harmful stream of gluons inducing radiation in those nearby. These gluon streams will also make victims feel exhausted, and induce shivering. This extreme coldness will also likely wet any nearby floors."
	name = "gluon frag grenade"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "bluefrag"
	item_state = "flashbang"
	var/freeze_range = 4
	var/rad_damage = 350
	var/stamina_damage = 30

/obj/item/grenade/gluon/prime()
	update_mob()
	playsound(loc, 'sound/effects/empulse.ogg', 50, 1)
	radiation_pulse(src, rad_damage)
	for(var/turf/T in view(freeze_range,loc))
		if(isfloorturf(T))
			var/turf/open/floor/F = T
			F.MakeSlippery(TURF_WET_PERMAFROST, 6 MINUTES)
			for(var/mob/living/carbon/L in T)
				L.adjustStaminaLoss(stamina_damage)
				L.adjust_bodytemperature(-230)
	qdel(src)
