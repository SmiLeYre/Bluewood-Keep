/datum/sex_action/toy_vagina
	name = "Pleasure cunt with toy"

/datum/sex_action/toy_vagina/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		name = "Вагина (На себе). Использовать игрушку."

/datum/sex_action/toy_vagina/shows_on_menu(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user != target)
		return FALSE
	if(!user.getorganslot(ORGAN_SLOT_VAGINA))
		return FALSE
	if(!get_dildo_in_either_hand(user))
		return FALSE
	return TRUE

/datum/sex_action/toy_vagina/can_perform(mob/living/user, mob/living/target)
	if(user != target)
		return FALSE
	if(!get_location_accessible(user, BODY_ZONE_PRECISE_GROIN))
		return FALSE
	if(!user.getorganslot(ORGAN_SLOT_VAGINA))
		return FALSE
	if(!get_dildo_in_either_hand(user))
		return FALSE
	return TRUE

/datum/sex_action/toy_vagina/on_start(mob/living/carbon/human/user, mob/living/carbon/human/target)
	..()
	var/obj/item/dildo = get_dildo_in_either_hand(user)
	if(user.client.prefs.be_russian)
		user.visible_message(span_warning("[user] вводит \the [dildo] в свою вагину..."))
	else
		user.visible_message(span_warning("[user] shoves \the [dildo] in her cunt..."))

/datum/sex_action/toy_vagina/on_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/obj/item/dildo = get_dildo_in_either_hand(user)
	if(user.sexcon.do_message_signature("[type]"))
		if(user.client.prefs.be_russian)
			user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] играется со своей вагиной при помощи \the [dildo]."))
		else
			user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] pleasures her cunt with \the [dildo]..."))
	playsound(user, 'sound/misc/mat/fingering.ogg', 30, TRUE, -2, ignore_walls = FALSE)

	user.sexcon.perform_sex_action(user, 2, 4, TRUE)

	user.sexcon.handle_passive_ejaculation()

/datum/sex_action/toy_vagina/on_finish(mob/living/carbon/human/user, mob/living/carbon/human/target)
	..()
	var/obj/item/dildo = get_dildo_in_either_hand(user)
	if(user.client.prefs.be_russian)
		user.visible_message(span_warning("[user] вытаскивает \the [dildo] из своей вагины."))
	else
		user.visible_message(span_warning("[user] pulls out \the [dildo] from [target]'s cunt."))

/datum/sex_action/toy_vagina/is_finished(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user.sexcon.finished_check())
		return TRUE
	return FALSE
