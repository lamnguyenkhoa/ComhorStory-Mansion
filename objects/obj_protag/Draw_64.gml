/// @description Press I to open menu
var num_panadon = global.item_inv[# itemid.panadon, itemstat.amount]
var num_oil = global.item_inv[# itemid.oil, itemstat.amount]
draw_set_color(c_white)
draw_set_alpha(1)
draw_text(10, 10, "HP :" + string(hp))
draw_text(10, 30, "Oil :" + string(oil_percent))
draw_text(10,60,"index: " + string(image_index))

if menu_key and !menu_drawed {
	menu_drawed = true
	item_cursor_row = 0
	item_cursor_col = 0
}
if back_key and menu_drawed {
	menu_drawed = false
}

// Draw menu
if menu_drawed {
	
	draw_sprite(spr_menu_main,0,view_wport[0]/2, view_hport[0]/2)
	hp_percent = (hp / max_hp) * 100
	draw_healthbar(380, 264, 396, 360, hp_percent , c_black, c_maroon, c_red, 3, false, false)
	draw_healthbar(330, 264, 346, 360, oil_percent, c_black, c_olive, c_yellow, 3, false, false)
	// Draw Item sprite
	scr_draw_item_menu()
	// Cursor coordinate  (1st slot is (434, 261), distance is (75, 90))
	if keyboard_check_pressed(vk_down) item_cursor_row += 1
	if item_cursor_row > 2 item_cursor_row = 0
	if keyboard_check_pressed(vk_up) item_cursor_row -= 1
	if item_cursor_row < 0  item_cursor_row = 2
	if keyboard_check_pressed(vk_right) item_cursor_col += 1
	if item_cursor_col > 3 item_cursor_col = 0
	if keyboard_check_pressed(vk_left) item_cursor_col -= 1
	if item_cursor_col < 0  item_cursor_col = 3
	draw_sprite(spr_item_cursor, 0, item_cursor_col * 75 + 434, item_cursor_row * 90 + 261)
	// Draw description
	var iid = global.slot_inv[# item_cursor_col, item_cursor_row]
	draw_text_color(300,550,global.item_inv[# iid, itemstat.desc],c_white,c_white,c_white,c_white,1)
	// Choose item to use	
	if interact_key {
		if iid <= 0 {
			// play buzz audio sound here
			draw_text(10, 70, "Nothing here")
		} else {
			draw_text(10, 70, "Item ID used: " + string(iid))
			scr_item_effect(iid)				
		}
	}	
	
}

