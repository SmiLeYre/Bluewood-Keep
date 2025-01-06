/datum/sex_action/foot_lick
	name = "Lick their feet"
	check_same_tile = FALSE
	check_incapacitated = FALSE

/datum/sex_action/foot_lick/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		name = "Язык. Вылизать ноги."

/datum/sex_action/foot_lick/shows_on_menu(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user == target)
		return FALSE
	return TRUE

/datum/sex_action/foot_lick/can_perform(mob/living/user, mob/living/target)
	if(user == target)
		return FALSE
	if(!get_location_accessible(target, BODY_ZONE_PRECISE_R_FOOT))
		return FALSE
	if(!get_location_accessible(target, BODY_ZONE_PRECISE_L_FOOT))
		return FALSE
	if(!get_location_accessible(user, BODY_ZONE_PRECISE_MOUTH))
		return FALSE
	return TRUE

/datum/sex_action/foot_lick/on_start(mob/living/carbon/human/user, mob/living/carbon/human/target)
	..()
	if(user.client.prefs.be_russian)
		user.visible_message(span_warning("[user] дотрагивается своим языком до ног [target]..."))
	else
		user.visible_message(span_warning("[user] starts licking [target]'s feet..."))

/datum/sex_action/foot_lick/on_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user.sexcon.do_message_signature("[type]"))
		if(user.client.prefs.be_russian)
			user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] вылизывает ноги [target]..."))
		else
			user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] licks [target]'s feet..."))
	user.make_sucking_noise()

/datum/sex_action/foot_lick/on_finish(mob/living/carbon/human/user, mob/living/carbon/human/target)
	..()
	if(user.client.prefs.be_russian)
		user.visible_message(span_warning("[user] уводит голову в сторону от ног [target]..."))
	else
		user.visible_message(span_warning("[user] stops licking [target]'s feet..."))

