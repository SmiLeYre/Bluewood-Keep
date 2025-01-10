/obj/structure/fluff/millstone
	name = "Жернова"
	desc = "Жернов, используемый для перемалывания зерна в муку." //People have been mistaking the "It's Empty" on examine for it eating grain. This is not the case.
	icon = 'icons/roguetown/misc/structure.dmi'
	icon_state = "millstone"
	density = TRUE
	anchored = TRUE
	blade_dulling = DULLING_BASH
	max_integrity = 400
	var/list/obj/item/to_grind = list()

/obj/structure/fluff/millstone/Initialize()
	create_reagents(900, DRAINABLE | AMOUNT_VISIBLE | REFILLABLE)
	. = ..()

/obj/structure/fluff/millstone/Destroy()
	chem_splash(loc, 2, list(reagents))
	qdel(reagents)
	qdel(to_grind)
	..()

/obj/structure/fluff/millstone/examine(mob/user, obj/structure/fluff/millstone/src_object)
	. = ..()

/obj/structure/fluff/millstone/proc/grindUp(list/obj/item/to_grind, mob/user)
	for(var/obj/item/itemtogrind in to_grind)
		if(do_after(user, 8, target = src))
			new itemtogrind.mill_result(src.loc)
			to_grind -= itemtogrind
			apply_farming_fatigue(user, 5) //replace with herbalism/alchemy version if/when it's added
			playsound(src, 'sound/items/wood_sharpen.ogg', 100, TRUE)
		else
			break


/obj/structure/fluff/millstone/attack_hand(mob/user)
	if(to_grind.len == 0)
		to_chat(user, span_warning("Нечего перемалывать!"))
		return TRUE
	if(do_after(user, 8, target = src))
		user.visible_message(span_notice("[user] начал крутить жернова"), \
						span_notice("Я начал крутить жернова."))
		grindUp(to_grind, usr)
		user.visible_message(span_notice("[user] закончил крутить жернова"), \
						span_notice("Я закончил крутить жернова."))
		return TRUE
	..()

/obj/structure/fluff/millstone/attackby(obj/item/I, mob/user, params)
	var/obj/item/grindable = I
	if(istype(I, /obj/item/reagent_containers/glass))
		if(user.used_intent.type == INTENT_POUR) //Something like a glass. Player probably wants to transfer TO it.
			testing("attackobj2")
			if(!I.reagents.total_volume)
				to_chat(user, span_warning("[I] пустой!"))
				return
			if(reagents.holder_full())
				to_chat(user, span_warning("[src] полный."))
				return
			user.visible_message(span_notice("[user] наливает [I] в [src]."), \
							span_notice("Я наливаю [I] в [src]."))
			for(var/i in 1 to 10)
				if(do_after(user, 8, target = src))
					if(!I.reagents.total_volume)
						break
					if(reagents.holder_full())
						break
					if(!I.reagents.trans_to(src, 10, transfered_by = user))
						reagents.reaction(src, TOUCH, 10)
				else
					break
			return
		if(is_drainable() && (user.used_intent.type == /datum/intent/fill)) //A dispenser. Transfer FROM it TO us.
			testing("attackobj3")
			if(!reagents.total_volume)
				to_chat(user, span_warning("[src] пустой!"))
				return
			if(I.reagents.holder_full())
				to_chat(user, span_warning("[I] полный."))
				return
			user.visible_message(span_notice("[user] наполняет [I] с [src]."), \
								span_notice("Я наполнил [I] с [src]."))
			for(var/i in 1 to 10)
				if(do_after(user, 8, target = src))
					if(I.reagents.holder_full())
						break
					if(!reagents.total_volume)
						break
					reagents.trans_to(I, 10, transfered_by = user)
				else
					break
			return
	if(istype(grindable))
		if(!grindable.grind_results)
			to_chat(user, span_warning("Я не могу перемолоть это, хоть во что-то."))
			return TRUE
		else if(!user.transferItemToLoc(I,src))
			to_chat(user, span_warning("Моя рука застряла в [I]!"))
			return TRUE
		to_chat(user, span_info("Я ставлю [I] в [src]."))
		to_grind += grindable
		return TRUE
	..()
