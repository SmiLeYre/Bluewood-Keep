/datum/job/roguetown/magician/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		title = "Дворцовый Маг"
		tutorial = "Ваш клятва - это постоянная борьба за овладение магией. \
		Вы должны своей жизни Господу, потому что его монеты позволили вам продолжать свои исследования в эти темные времена. \
		В свою очередь, вы доказали время и время снова как судья и доверенный советник их правления."
	