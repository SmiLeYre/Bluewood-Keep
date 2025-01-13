/obj/item/rogueweapon/pick
	force = 21
	possible_item_intents = list(/datum/intent/pick)
	name = "железная кирка"
	desc = "Этот инструмент необходим для добычи полезных материалов в темных глубинах."
	icon_state = "pick"
	icon = 'icons/roguetown/weapons/tools.dmi'
	sharpness = IS_BLUNT
	//dropshrink = 0.8
	wlength = 10
	max_integrity = 400
	slot_flags = ITEM_SLOT_HIP
	toolspeed = 1
	associated_skill = /datum/skill/combat/maces
	smeltresult = /obj/item/ingot/iron
	w_class = WEIGHT_CLASS_BULKY

/obj/item/rogueweapon/pick/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,
"sx" = -15,
"sy" = -12,
"nx" = 9,
"ny" = -11,
"wx" = -11,
"wy" = -11,
"ex" = 1,
"ey" = -12,
"northabove" = 0,
"southabove" = 1,
"eastabove" = 1,
"westabove" = 0,
"nturn" = 90,
"sturn" = -90,
"wturn" = -90,
"eturn" = 90,
"nflip" = 0,
"sflip" = 8,
"wflip" = 8,
"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/pick/steel
	name = "стальная кирка"
	desc = "Усиленная рукоятка и прочный стержень - превосходный инструмент для погружения в темноту.."
	force_wielded = 28
	icon_state = "steelpick"
	possible_item_intents = list(/datum/intent/pick)
	gripped_intents = list(/datum/intent/pick)
	max_integrity = 600
	smeltresult = /obj/item/ingot/steel

/obj/item/rogueweapon/pick/drill
	name = "Бронзовый бур"
	desc = "Удивительно сложное инженерное произведение, способное разрушать стены за секунды, а не за часы.."
	force_wielded = 30
	icon_state = "drill"
	lefthand_file = 'icons/mob/inhands/weapons/hammers_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/hammers_righthand.dmi'
	item_state = "drill"
	possible_item_intents = list(/datum/intent/mace/smash)
	gripped_intents = list(/datum/intent/drill)
	experimental_inhand = FALSE
	experimental_onback = FALSE
	slot_flags = ITEM_SLOT_BACK
	gripspriteonmob = TRUE
	var/datum/looping_sound/drill/drill_loop

/obj/item/rogueweapon/pick/drill/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

	drill_loop = new(src, FALSE)

/obj/item/rogueweapon/pick/drill/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/rogueweapon/pick/drill/process()
	update_sound()

/obj/item/rogueweapon/pick/drill/proc/update_sound()
	var/datum/looping_sound/drill/loop = drill_loop
	if(!wielded)
		loop.stop()
		return
	loop.start()
