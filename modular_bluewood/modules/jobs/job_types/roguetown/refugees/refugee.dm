/datum/job/roguetown/refugee/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Беженец"
		tutorial = "Люди всех слоев населения, ушедшие из города, ищущие убежища в многочисленных легендарных и, наверняка, безопасных местах. Вы - один из этих беженцев, вы оставили все, чтобы искать новую жизнь в чужой стране."

