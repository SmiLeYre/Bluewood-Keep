/datum/job/roguetown/citywatch/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Стражник-Наблюдатель"
		tutorial = "Вы отвечаете за безопасность города и соблюдение закона. \
		Вы ходите среди нищенствующих, доставляя им правосудие и страдание. \
		Вы преданы Шеррифу и готовы отважно защищать горожан, потому что ни церковь, ни дворянство не понимают трудностей обычного человека."
