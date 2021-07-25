/// @function scr_item_effect(item_id)
/// @description Contain list of effects of item in game, also check wheter they are consumable
/// @param item_id
function scr_item_effect(argument0) {

	var iid = argument0

	if iid == itemid.latern {
		// Latern
		global.item_inv[# iid, itemstat.toggle] = !global.item_inv[# iid, itemstat.toggle]
	}
	if iid == itemid.panadon {
		// Panadon
		obj_protag.hp += 30
		if (obj_protag.hp > 100) obj_protag.hp = 100
	}
	if iid == itemid.oil {
		// Oil
		obj_protag.oil_percent += 25
		if (obj_protag.oil_percent > 100) obj_protag.oil_percent = 100
	}
	if iid == itemid.spd_pill {
		// Speed pill
		obj_protag.spd = 3
		obj_protag.alarm[0] = room_speed * 30;
	}



	// General after effect
	if (iid != itemid.latern) {
		// Latern is not consumable
		global.item_inv[# iid, itemstat.amount] -= 1
	}

	if global.item_inv[# iid, itemstat.amount] <= 0 {
		global.slot_inv[# item_cursor_col, item_cursor_row] = 0
	}


}
