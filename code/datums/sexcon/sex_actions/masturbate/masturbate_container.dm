/datum/sex_action/masturbate_container
	name = "Masturbate into container"

/datum/sex_action/masturbate_container/shows_on_menu(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user != target)
		return FALSE
	if(!user.getorganslot(ORGAN_SLOT_PENIS))
		return FALSE
	return TRUE

/datum/sex_action/masturbate_container/can_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/holding = user.get_active_held_item()
	if(istype(holding, /obj/item/reagent_containers/glass) != TRUE)
		return FALSE
	if(user != target)
		return FALSE
	if(!get_location_accessible(user, BODY_ZONE_PRECISE_GROIN))
		return FALSE
	if(!user.getorganslot(ORGAN_SLOT_PENIS))
		return FALSE
	if(!user.sexcon.can_use_penis())
		return
	return TRUE

/datum/sex_action/masturbate_container/on_start(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user.client.prefs.be_russian)
		user.visible_message(span_warning("[user] начинает дрочить над [user.get_active_held_item()]..."))
	else
		user.visible_message(span_warning("[user] starts masturbating into [user.get_active_held_item()]..."))

/datum/sex_action/masturbate_container/on_perform(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/chosen_verb
	if(user.client.prefs.be_russian)
		chosen_verb = pick(list("активно мастурбирует над [user.get_active_held_item()]", "массирует свои гениталии над [user.get_active_held_item()]", "дрочит над [user.get_active_held_item()]"))
	else
		chosen_verb = pick(list("pleasures themself over [user.get_active_held_item()]", "sensually massages themself over [user.get_active_held_item()]", "masturbates over [user.get_active_held_item()]"))
	if(user.sexcon.do_message_signature("[type]"))
		user.visible_message(user.sexcon.spanify_force("[user] [user.sexcon.get_generic_force_adjective()] [chosen_verb]..."))
	playsound(user, 'sound/misc/mat/fingering.ogg', 30, TRUE, -2, ignore_walls = FALSE)

	user.sexcon.perform_sex_action(user, 2, 0, TRUE)

	user.sexcon.handle_container_ejaculation()

/datum/sex_action/masturbate_container/on_finish(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user.client.prefs.be_russian)
		user.visible_message(span_warning("[user] заканчивает с мастурбацией."))
	else
		user.visible_message(span_warning("[user] stops masturbating into the container."))

/datum/sex_action/masturbate_container/is_finished(mob/living/carbon/human/user, mob/living/carbon/human/target)
	if(user.sexcon.finished_check())
		return TRUE
	return FALSE
// WIP, UNFINISHED, I JUST WANT PEOPLE TO SEE. if you want to help feel free to review and add code or whatever. i am a slopcoder so i need it <3
