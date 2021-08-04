/datum/chemical_reaction/space_drugs
	name = "Space Drugs"
	id = "space_drugs"
	results = list("space_drugs" = 3)
	required_reagents = list("mercury" = 1, "sugar" = 1, "lithium" = 1)

/datum/chemical_reaction/crank
	name = "Crank"
	id = "crank"
	results = list("crank" = 5)
	required_reagents = list("diphenhydramine" = 1, "ammonia" = 1, "lithium" = 1, "sacid" = 1, "welding_fuel" = 1)
	mix_message = "The mixture violently reacts, leaving behind a few crystalline shards."
	required_temp = 390


/datum/chemical_reaction/krokodil
	name = "Krokodil"
	id = "krokodil"
	results = list("krokodil" = 6)
	required_reagents = list("diphenhydramine" = 1, "morphine" = 1, "cleaner" = 1, "potassium" = 1, "phosphorus" = 1, "welding_fuel" = 1)
	mix_message = "The mixture dries into a pale blue powder."
	required_temp = 380

/datum/chemical_reaction/bath_salts
	name = "bath_salts"
	id = "bath_salts"
	results = list("bath_salts" = 7)
	required_reagents = list("bad_food" = 1, "saltpetre" = 1, "nutriment" = 1, "cleaner" = 1, "enzyme" = 1, "tea" = 1, "mercury" = 1)
	required_temp = 374

/datum/chemical_reaction/aranesp
	name = "aranesp"
	id = "aranesp"
	results = list("aranesp" = 3)
	required_reagents = list("epinephrine" = 1, "atropine" = 1, "morphine" = 1)

/datum/chemical_reaction/psycho
	name = "Psycho"
	id = "psycho"
	results = list("psycho" = 2)
	required_reagents = list("space_drugs" = 1, "mindbreaker" = 1)

// JET - Trust your dealer, buddy! If it's brown in the spoon, KILL HIM!

/datum/chemical_reaction/jetprecursor
	name = "Jet-Production Stage One"
	id = "jetprewash"
	results = list("jetstageone" = 1)
	required_reagents = list("brahminmilk" = 5)
	required_temp = 400


/datum/chemical_reaction/jetprecursorprocess
	name = "Jet-Production Pre-Wash"
	id = "jetstageone"
	results = list("jetunwashed" = 5)
	required_reagents = list("jetstageone" = 5)
	required_temp = 415



// JET WASHING STAGE
/datum/chemical_reaction/jetwash
	name = "Jet-Production Washing Stage"
	id = "jetstagewashwaste"
	results = list("jetwashed" = 5)
	required_reagents = list("jetunwashed" = 5,
	"bwater" = 5)
	required_temp = 450

/datum/chemical_reaction/jetwashproper
	name = "Jet-Production Washing Stage"
	id = "jetstagewashproper"
	results = list("jetwashed" = 5)
	required_reagents = list("jetunwashed" = 5,
	"water" = 5)
	required_temp = 450

/datum/chemical_reaction/weakjet
	name = "Jet-Production Stage Two"
	id = "jetstagetwo"
	results = list("jetstagetwo" = 5)
	required_reagents = list("jetwashed" = 5,
	"abraxocleaner" = 5)


// JET PURIFICATION
// Byproduct stuff is being added later after playtests.
/*

/datum/chemical_reaction/byproductpurification
	name = "Jet Purification"
	id = "jetpurification"
	results = list("jetpurebyproduct" = 5)
	required_reagents = list("jetwashbyproduct" = 5,
	"abraxocleaner" = 5, "turpentinecleaner" = 5)

/datum/chemical_reaction/byproductwashed
	name = "Jet Purification - Washed"
	id = "jetwashpurification"
	results = list("jetwashbyproduct" = 5)
	required_reagents = list("jetbyproduct" = 5,
    "bwater" = 5)
*/
// JET CUTTING / FINISHING

/datum/chemical_reaction/cutjet
	name = "Jet-Production Finished - Cutting"
	id = "jetfinishedcut"
	results = list("jetfinishedcut" = 20)
	required_reagents = list("jetstagetwo" = 5,
	"jetbyproduct" = 5)

/datum/chemical_reaction/jetfinished
	name = "Jet-Production Finished"
	id = "jetfinished"
	results = list("jetfinished" = 10)
	required_reagents = list("jetstagetwo" = 5,
	"bwater" = 5)
/*
/datum/chemical_reaction/jetultra
	name = "Jet-Production Finished - Ultrajet"
	id = "jetfinished"
	results = list("jetfinishedultra" = 10)
	required_reagents = list("jetstagetwo" = 20,
	"jetpurebyproduct" = 10, "sugar" = 5)
	required_temp = 480 // REQUIRES a specialized narcotic-beaker else that shit will EXPLODE!!

/datum/chemical_reaction/supercutjet
	name = "Jet-Production Finished - Turbo Cutting"
	id = "jetfinishedcut"
	results = list("jetfinishedcut" = 10)
	required_reagents = list("jetwashed" = 5, "jetbyproduct" = 5, )
*/ // Serves no function until byproduct is added. Ultrajet is now a High-Tier spawn and non-produceable until further codedevelopment
// Jet Fuck Up


/datum/chemical_reaction/fuckupjet
	name = "Jet-Production - Fucked up"
	id = "jetfuckedup"
	results = list("jetruined" = 10)
	required_reagents = list("jetwashed" = 5,
	"brahminmilk" = 5)
	required_temp = 405

/datum/chemical_reaction/fuckupjettwo
	name = "Jet-Production - Fucked up 2"
	id = "jetfuckeduptwo"
	results = list("jetruined" = 10)
	required_reagents = list("jetstagetwo" = 5,
	"jetwashed" = 5)