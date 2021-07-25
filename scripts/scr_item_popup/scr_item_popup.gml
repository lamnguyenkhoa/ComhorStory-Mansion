/// @function scr_item_popup
/// @description Notify what item just picked-up
/// @param iid
function scr_item_popup(argument0) {

	var iid = argument0
	popup = instance_create_depth(obj_protag.x - 10, obj_protag.y, -10000, obj_popup)
	with (popup) {
		sprite_index = spr_item_sheet
		image_index = global.item_inv[# iid, itemstat.image]
	}


}
