/obj/machinery/door/poddoor/gate
	name = "city gate"
	desc = "A heavy duty gates that opens mechanically."
	icon = 'icons/fallout/objects/structures/city_gate.dmi'
	icon_state = "closed"
	id = 333
	bound_width = 96
	var/list/opacity_objects = list() //FUCK BYOND

/obj/machinery/door/poddoor/gate/New()
	..()
	var/atom/movable/S = new (locate(x+1,y,z))
	S.set_opacity(opacity)
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()
	opacity_objects += S
	S = new (locate(x+2,y,z))
	S.set_opacity(opacity)
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()
	opacity_objects += S

/obj/machinery/door/poddoor/gate/Destroy()
	for(var/atom/movable/S in opacity_objects)
		qdel(S)
	..()

/obj/machinery/door/poddoor/gate/open()
	for(var/atom/movable/S in opacity_objects)
		S.set_opacity(0)
	..()

/obj/machinery/door/poddoor/gate/close()
	..()
	for(var/atom/movable/S in opacity_objects)
		S.set_opacity(1)

//bos
/obj/machinery/door/poddoor/gate/bos
	name = "pneumatic door"
	desc = "A rather massive pneumatic door. No chance of getting through this."//Seriously. Lets not get through this.
	icon = 'icons/fallout/objects/structures/brotherhood_gate.dmi'
	icon_state = "closed"
	id = null
	heat_proof = TRUE
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	resistance_flags = INDESTRUCTIBLE | FIRE_PROOF | ACID_PROOF | LAVA_PROOF

	bound_width = 64//should work

/obj/machinery/door/poddoor/gate/bos/ex_act(severity, target)
	return
