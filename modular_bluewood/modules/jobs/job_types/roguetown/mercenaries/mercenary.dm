/datum/job/roguetown/mercenary/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Наёмник"
		tutorial = "Вы путешествовали по землям и использовали свое оружие и навыки для получения денег и крови. \
		Вы лояльны только самому высокому предложившему, а не своему господину, как обычный солдат. \
		Возможно, вы присоединились к гильдии, возможно, вы член религиозного ордена, возможно, вы просто выше среднего банды."
