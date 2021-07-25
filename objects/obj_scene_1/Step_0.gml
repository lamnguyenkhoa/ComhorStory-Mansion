/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)) step += 1
if (step >= 3) {
	obj_protag.sprite_index = spr_protag
	obj_protag.image_index = 1	
	global.allow_control = true
	global.scene[1] = true
	scr_add_item(itemid.latern, 1, true)
	instance_destroy()
}