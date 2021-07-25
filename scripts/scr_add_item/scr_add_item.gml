/// @function scr_add_item(id, amount, override)
/// @description Add an "amount" of item "id" to inventory. Set instead if override is True
/// @param id_item
/// @param amount
/// @param override
function scr_add_item(argument0, argument1, argument2) {

	var iid = argument0
	var amount = argument1
	var override = argument2
	var found_empty_slot = false
	var amount_before = 0

	// Notification
	scr_item_popup(iid)

	// Increase its "amount" (or set it to "amount" if override == true)
	amount_before = global.item_inv[# iid, itemstat.amount]
	if override {
		global.item_inv[# iid, itemstat.amount] = amount 
	} else {
		global.item_inv[# iid, itemstat.amount] += amount
	}

	// If this is a new item, search for an empty slot and put it in
	if amount_before == 0 {  // mean this item is totally new, the 1st
		for (var i = 0; i < 3; i += 1) {
			for (var j = 0; j < 4; j += 1) {
				if global.slot_inv[# j, i] == 0 {  // empty
					global.slot_inv[# j, i] = iid
					found_empty_slot = true
					break;
				}
			}
			if found_empty_slot == true break;
		}
	}


}
