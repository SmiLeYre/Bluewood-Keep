/datum/patron/psydon/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		name = "Псайдон"
		domain = "Первый Правильный Бог"
		desc = "Первый Правильный Бог, создатель всего. Он считается мертвым по мнению Церкви Преемников."
		worshippers = "Знахари, Инквизиторы и возвращающиеся к истокам верующие"
		confess_lines = list(
			"ЕСТЬ ТОЛЬКО ОДИН БОГ!",
			"ПРЕЕМНИКИ - ЛЖИВЫЕ БОГИ!",
			"ПСАЙДОН ЖИВ!",
		)
