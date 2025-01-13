/datum/anvil_recipe/tools
	i_type = "Инструменты"
/datum/anvil_recipe/general
	i_type = "Общие"

// --------- IRON -----------
/datum/anvil_recipe/general/torch
	name = "Факелы 5x (+1 Уголь)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/rogueore/coal)
	created_item = list(/obj/item/flashlight/flare/torch/metal, /obj/item/flashlight/flare/torch/metal, /obj/item/flashlight/flare/torch/metal, /obj/item/flashlight/flare/torch/metal, /obj/item/flashlight/flare/torch/metal)

/datum/anvil_recipe/general/locks
	name = "Замки 2x"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/customlock, /obj/item/customlock)

/datum/anvil_recipe/general/keys
	name = "Ключи 2x"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/key_custom_blank, /obj/item/key_custom_blank)

/datum/anvil_recipe/tools/iron/scissors
	name = "Ножницы"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/huntingknife/scissors

/datum/anvil_recipe/tools/iron/pan
	name = "Сковородка"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/cooking/pan

/datum/anvil_recipe/general/catbell
	name = "Кошачий колокольчик x3"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/catbell,
						/obj/item/catbell,
						/obj/item/catbell)

/datum/anvil_recipe/general/iron/keyring
	name = "Связка для ключей 3x"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/storage/keyring, /obj/item/storage/keyring, /obj/item/storage/keyring)

/datum/anvil_recipe/general/iron/sewingneedle
	name = "Швейные иглы 5x"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/needle, /obj/item/needle, /obj/item/needle, /obj/item/needle, /obj/item/needle)

/datum/anvil_recipe/tools/iron/shovel
	name = "Лопата (+2 Палки)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/shovel

/datum/anvil_recipe/tools/iron/hammer
	name = "Молот (+1 Палка)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/hammer

/datum/anvil_recipe/tools/iron/tongs
	name = "Клешни"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rogueweapon/tongs

/datum/anvil_recipe/tools/iron/sickle
	name = "Серп (+1 Палка)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/sickle

/datum/anvil_recipe/tools/iron/pick
	name = "Кирка (+1 Палка)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/pick

/datum/anvil_recipe/tools/iron/hoe
	name = "Мотыга (+2 Палки)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/hoe

/datum/anvil_recipe/tools/iron/pitchfork
	name = "Вилы (+2 Палки)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick,/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/pitchfork

/datum/anvil_recipe/general/iron/lamptern
	name = "Лампа"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/flashlight/flare/torch/lantern

/datum/anvil_recipe/tools/iron/thresher
	name = "Молотилка (+1 Палка)"
	req_bar = /obj/item/ingot/iron
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/thresher

/datum/anvil_recipe/general/chain
	name = "Цепь"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/rope/chain

/datum/anvil_recipe/general/chainleash
	name = "Цепной поводок"
	req_bar = /obj/item/ingot/iron
	created_item = /obj/item/leash/chain

/datum/anvil_recipe/general/iron/ramrod
	name = "Шомпол x3"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/ramrod,
						/obj/item/ramrod,
						/obj/item/ramrod
						)

	skill_level = 0

/datum/anvil_recipe/tools/lockpicks
	name = "Отмычки x3"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/lockpick,
						/obj/item/lockpick,
						/obj/item/lockpick
						)
	skill_level = 1

/datum/anvil_recipe/tools/lockpickring
	name = "Кольца для отмычек x3"
	req_bar = /obj/item/ingot/iron
	created_item = list(/obj/item/lockpickring,
						/obj/item/lockpickring,
						/obj/item/lockpickring
						)
	skill_level = 0

// --------- Steel -----------

/datum/anvil_recipe/tools/steel/pick
	name = "Кирка (+1 Палка)"
	req_bar = /obj/item/ingot/steel
	additional_items = list(/obj/item/grown/log/tree/stick)
	created_item = /obj/item/rogueweapon/pick/steel

/datum/anvil_recipe/tools/steel/scissors
	name = "Ножницы"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/huntingknife/scissors/steel

/datum/anvil_recipe/tools/surgery/steel/scalpel
	name = "Скальпель"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/surgery/scalpel

/datum/anvil_recipe/tools/surgery/steel/saw
	name = "Хирургическая пила"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/surgery/saw

/datum/anvil_recipe/tools/surgery/steel/hemostat
	name = "Зажим"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/surgery/hemostat

/datum/anvil_recipe/tools/surgery/steel/retractor
	name = "Расширитель"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/surgery/retractor

/datum/anvil_recipe/tools/surgery/steel/bonesetter
	name = "Костоправ"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/surgery/bonesetter

/datum/anvil_recipe/tools/surgery/steel/cautery
	name = "Прижигатель"
	req_bar = /obj/item/ingot/steel
	created_item = /obj/item/rogueweapon/surgery/cautery
	
/datum/anvil_recipe/general/cupsgold
	name = "Коровий колокольчик"
	req_bar = /obj/item/ingot/copper
	created_item = list(/obj/item/catbell/cow)

/datum/anvil_recipe/general/cowbell
	name = "Коровий колокольчик x3"
	req_bar = /obj/item/ingot/copper
	created_item = list(/obj/item/catbell/cow,
						/obj/item/catbell/cow,
						/obj/item/catbell/cow)
