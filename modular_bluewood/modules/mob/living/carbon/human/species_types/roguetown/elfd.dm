/datum/species/elf/dark/New()
	. = ..()
	if(usr?.client?.prefs?.be_russian)
		name = "Темный Эльф"
		desc = "<b>Темный эльф</b><br>\
		Эльфы — это общее название для высоких гуманоидов с заострёнными ушами, происхождение которых уходит корнями к древним таинственным снежным эльфам. \
		Тёмные эльфы имеют тёмный оттенок кожи и в основном происходят из подземелий. Их культура и жизнь обычно связаны со служением злым богам презренного пантеона. \
		Ранее они были редкостью, но в последнее время всё больше тёмных эльфов можно встретить на поверхности. Те из них, \
		кто не является откровенно жестоким и кровожадным, склонны искать укрытие на поверхности, чтобы избежать преследования со стороны своего общества,\
		в то время как более зловещие представители покидают свои города в поисках новой и большей силы."
