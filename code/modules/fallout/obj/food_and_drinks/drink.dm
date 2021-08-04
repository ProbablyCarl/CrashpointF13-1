//Fallout 13 general drinks directory

/obj/item/reagent_containers/food/drinks/bottle/sunset //Howdy, pardner!
	name = "Sunset Sarsaparilla"
	desc = "A traditional radiation-free carbonated beverage of a root-beer-type.<br>Tastes like sunshine!"
	icon_state = "sunset"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("beer" = 10, "mannitol" = 10, "potass_iodide" = 10)

/obj/item/reagent_containers/food/drinks/bottle/nukacola/radioactive //Whoa, oh, oh, oh, oh, whoa, oh, oh, oh, I'm radioactive, radioactive!
	desc = "The most popular flavored soft drink in the United States before the Great War.<br>It was preserved in a fairly pristine state.<br>The bottle is slightly glowing."
	list_reagents = list("coffee" = 25, "radium" = 5)

/obj/item/reagent_containers/food/drinks/flask
	name = "metal flask"
	desc = "A metallic liquid container. Never leave home without one."
	icon_state = "flask"
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	materials = list(MAT_METAL=500)
	volume = 60
	list_reagents = list("water" = 50)

/obj/item/reagent_containers/food/drinks/flask/survival
	name = "metal flask"
	desc = "A metallic liquid container. Essential for survival out in the wastes."
	list_reagents = list("water" = 55, "radx" = 5)

/obj/item/reagent_containers/food/drinks/flask/survival/legion
	name = "metal flask"
	desc = "A metallic liquid container. Essential for survival out in the wastes."
	list_reagents = null

/obj/item/reagent_containers/food/drinks/flask/vault13
	name = "Vault 13 flask"
	desc = "Take a sip from your trusty Vault 13 canteen."
	icon_state = "flask13"
	list_reagents = list("water" = 30, "silver_sulfadiazine" = 10, "charcoal" = 20)

/obj/item/reagent_containers/food/drinks/flask/vault113
	name = "Vault 113 flask"
	desc = "See this large yellow number? It means it's a Vault 113 canteen. Never forget."
	icon_state = "flask113"
	list_reagents = list("water" = 30, "radium" = 10, "mine_salve" = 20)

/obj/item/reagent_containers/food/drinks/flask/ss13
	name = "metal flask"
	desc = "A strange metal flask with some meaningless letters engraved on the side."
	icon_state = "flaskss13"
	list_reagents = list("tricordrazine" = 40, "adminordrazine" = 10)

// Fallout Stuff

/obj/item/reagent_containers/food/drinks/bottle/nukacola
	name = "Nuka-Cola"
	desc = "The most popular flavored soft drink in the United States before the Great War.<br>It was preserved in a fairly pristine state."
	icon_state = "nukacola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nuka" = 30)

/obj/item/reagent_containers/food/drinks/bottle/nukacolaquantum
	name = "Nuka-Cola Quantum"
	desc = "Nuka-Cola with twice the calories, carbs and caffeine alongside twice the taste! It is a rarity in the wasteland. "
	icon_state = "quantumcola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nukaquantum" = 30)

/obj/item/reagent_containers/food/drinks/bottle/nukacolavictory
	name = "Nuka-Cola Victory"
	desc = "A South-Western flavour of Nuka-Cola noted for it's patriotic glory!"
	icon_state = "fusioncola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nukavictory" = 30)

/obj/item/reagent_containers/food/drinks/bottle/nukacolaquartz
	name = "Nuka-Cola Quartz"
	desc = "A South-Western flavour of Nuka-Cola noted for it's lack of food colourings!"
	icon_state = "quartzcola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nukaquartz" = 30)

/obj/item/reagent_containers/food/drinks/bottle/nukacolacherry
	name = "Nuka-Cola Cherry"
	desc = "Nuka-Cola with the added flavour of cherry! If cherry tasted like filthy sewer shit."
	icon_state = "cherrycola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nukacherry" = 30)

/obj/item/reagent_containers/food/drinks/bottle/sunset //SASS
	name = "Sunset Sarsaparilla"
	desc = "Sunset Sasparilla! Build up mass with Sass!"
	icon_state = "sunset"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("sasp" = 30)

// WATER
/obj/item/reagent_containers/food/drinks/bottle/dwater
	name = "Dirty Water"
	desc = "Unclean water. It's not the safest to drink as is, but it's better than dying!... Maybe."
	icon_state = "dirty"
	item_state = "beer"
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("dwater" = 30)

/obj/item/reagent_containers/food/drinks/bottle/bwater
	name = "Ration Water"
	desc = "Carton of boiled and sieved water. It's completely safe to drink!"
	icon_state = "boiled"
	item_state = "beer"
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("bwater" = 30)