/datum/faith/divine/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		name = "Божественный Пантеон"
		desc = "Самая принятая религия в Рокхилле. Пусть Всемогущий Псайдон и десять его детей защитят нас от Зизо!"
		worshippers = "Люди и горожане Рокхилла"
