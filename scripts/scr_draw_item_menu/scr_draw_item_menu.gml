function scr_draw_item_menu() {
	// @function

	// Menu - Item section  (1st slot is (434, 261), distance is (75, 90))


	for (var i = 0; i < 3; i += 1) {
		for (var j = 0; j < 4; j += 1) {
			var iid = global.slot_inv[# j, i]
			if iid != 0 {
				draw_sprite(spr_item_sheet, global.item_inv[# iid, itemstat.image], j*75+443, i*90+270)
				draw_text_color(j*75+443, i*90+270, global.item_inv[# iid, itemstat.amount],c_white,c_white,c_white,c_white,1)
			}
		}
	}




}
