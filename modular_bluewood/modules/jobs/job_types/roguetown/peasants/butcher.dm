/datum/job/roguetown/butcher/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Мясник"
		tutorial = "Некоторые говорят, что ты странный человек, некоторые говорят, что ты жулик, а некоторые утверждают, что ты мастер в приготовлении колбасы. Без твоих умелых рук и колючек мясо большинства животных в городе были бы бесполезны. "
