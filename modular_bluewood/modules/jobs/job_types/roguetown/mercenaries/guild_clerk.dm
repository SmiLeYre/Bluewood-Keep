/datum/job/roguetown/guild_clerk/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Клерк Гильдии"
		tutorial = "Тряпка. Грубый. Неприличный. Первые слова, которые приходят на ум для неслыханного героя-секретаря гильдии наемников. \
		Средство, через которое наемники проходят для среднего горожанина, чтобы заключить договор и получить справедливую цену. \
		Не только вы отвечаете за организацию договоров для наемников, но и за правильное использование и доставку вознаграждений от экцидиума. \
		Это нелегкая работа, но кто-то должен ее делать. Лучше этим займёшься ты."
	