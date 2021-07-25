/// @description scr_init_itemlist
function scr_init_itemlist() {

	//Init static variable

	MAX_ITEM_ID = 6
	MAX_ITEM_STAT = 6

	// Assign ID for each item / stat

	enum itemid {
		none,
		latern,
		panadon,
		oil,
		key,
		spd_pill,
	}

	enum itemstat {
		none,
		name,
		desc,
		amount,
		image,
		toggle,
	}

	// Create item data table
	// "Amount" default value is 0
	// Item effect used if-cases, arg: enum ID, scr_item_effect 
	// Sprite used sub-image of a big spr_item_list
	global.item_inv = ds_grid_create(MAX_ITEM_ID, MAX_ITEM_STAT)
	ds_grid_clear(global.item_inv, 0)
	global.item_inv[# itemid.none, itemstat.desc] = ""

	global.item_inv[# itemid.latern, itemstat.name] = "Oil latern"
	global.item_inv[# itemid.latern, itemstat.desc] = "|Oil latern| \n Illuminate your surrounding. Toggleable. \n Remind you about the danger of darkness."
	global.item_inv[# itemid.latern, itemstat.image] = 1

	global.item_inv[# itemid.panadon, itemstat.name] = "Panadon"
	global.item_inv[# itemid.panadon, itemstat.desc] = "|Panadon| \n A bottle of liquid medicine, made from herb.\n Recover your health, as well as your determination."
	global.item_inv[# itemid.panadon, itemstat.image] = 2

	global.item_inv[# itemid.oil, itemstat.name] = "Oil bottle"
	global.item_inv[# itemid.oil, itemstat.desc] = "|Oil bottle| \n Refill your latern with this bottle. \n Keep your courage up."
	global.item_inv[# itemid.oil, itemstat.image] = 3

	global.item_inv[# itemid.key, itemstat.name] = "Key"
	global.item_inv[# itemid.key, itemstat.desc] = "|Key| \n It's exactly what it is."

	global.item_inv[# itemid.spd_pill, itemstat.name] = "Speed pill"
	global.item_inv[# itemid.spd_pill, itemstat.desc] = "|Speed pill| \n Temporarily boost your speed in a short \n time period."
	global.item_inv[# itemid.spd_pill, itemstat.image] = 4

	// Create a grid to represent the menu item, to show that which slot contain which item
	global.slot_inv = ds_grid_create(INV_COL, INV_ROW)
	ds_grid_clear(global.slot_inv, 0)






}
