/datum/job/roguetown/mayor/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Мэр"
		tutorial = "Независимо от того, являетесь ли вы нечестным политиком или истинным благотворителем, горожане теперь обращаются к вам за руководством в меньших вопросах. \
				Герцог может носить официальный титул, но с вашим командиром Шерифом, будете ли вы подчиняться традиции или переосмыслить саму идею власти?"
	