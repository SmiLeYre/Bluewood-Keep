/datum/job/roguetown/physician/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Дворцовый Врач"
		tutorial = "Вы были ребенком, рожденным в хорошем достатке - но с плохим здоровьем. \
		Возможно, в другой жизни вы стали бы могущественным магам, мудрым архивистом или прозорливым казначеем, \
		но лихорадка отняла ваши молодые годы. \
		Из отчаяния, вы последовали за Пэстра и смогли быть вылечены. \
		Теперь вы служили в дворцовом дворе, обеспечивая хорошее здоровье обитателей замка."
	