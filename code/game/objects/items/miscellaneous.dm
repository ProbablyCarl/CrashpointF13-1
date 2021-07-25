/obj/item/caution
	desc = "Caution! Wet Floor!"
	name = "wet floor sign"
	icon = 'icons/obj/janitor.dmi'
	icon_state = "caution"
	lefthand_file = 'icons/mob/inhands/equipment/custodial_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/custodial_righthand.dmi'
	force = 1
	throwforce = 3
	throw_speed = 2
	throw_range = 5
	w_class = WEIGHT_CLASS_SMALL
	attack_verb = list("warned", "cautioned", "smashed")

/obj/item/skub
	desc = "It's skub."
	name = "skub"
	icon = 'icons/obj/items_and_weapons.dmi'//:(
	icon_state = "skub"
	w_class = WEIGHT_CLASS_BULKY
	attack_verb = list("skubbed")

// Broken Power armor shit	| Put here because Alcoholism lost his sanity

/obj/item/brokent45
	desc = "A suit of broken T-45d power armor that is no longer functional in any degree. It'll need to be repaired to be useful!"
	name = "Broken T-45d"
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "t45dpowerarmor"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/brokent51
	desc = "A suit of broken T-51b power armor that is no longer functional in any degree. It'll need to be repaired to be useful!"
	name = "Broken T-51b"
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "t51bpowerarmor"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/brokent60
	desc = "A suit of broken T-60 power armor that is no longer functional in any degree. It'll need to be repaired to be useful!"
	name = "Broken T-60"
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "t60powerarmor"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/brokentesca
	desc = "A suit of broken Escavator power armor that is no longer functional in any degree. It'll need to be repaired to be useful!"
	name = "Broken Escavator power armor"
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "excavator"
	w_class = WEIGHT_CLASS_BULKY

//HELMETS FOR THAT GOD DARN PA
/obj/item/t51bhelmbroken
	name = "broken T-51b power helmet"
	desc = "It's a broken T-51b power helmet. Looks like it'll require extensive repairs."
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "t51bhelmet"
	item_state = "t51bhelmet"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/t60helmbroken
	name = "broken T-60a power helmet"
	desc = "A broken T-60 powered helmet, missing the lenses and any internal equipment. Looks like it'll require extensive repairs."
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "t60helmet"
	item_state = "t60helmet"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/t45dhelmbroken
	name = "broken T-45d power helmet"
	desc = "It's an old pre-War power armor helmet. Looks like it'll require extensive repairs, as it's smashed to pieces."
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "t45dhelmet"
	item_state = "t45dhelmet"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/excavatorhelmbroken
	name = "broken excavator power helmet"
	desc = "The helmet of the excavator power armor suit. Looks to be in bad shape, and requires extensive repairs."
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "excavator"
	item_state = "excavator"
