/datum/job/roguetown/goblinsmith/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Кузнец Гоблинов"
		tutorial = "Вы - опытный кузнец, выбранный главой гоблинов, чтобы снабжать лагерь свежим материалом. \
		Не допускайте ошибок, иначе вам придется отвечать перед многими существами, которые вы обслуживаете."
