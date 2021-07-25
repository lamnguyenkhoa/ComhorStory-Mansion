/// @description Insert description here
// You can write your code in this editor
if global.scene[1] == true {
	instance_destroy()
}

obj_protag.sprite_index = spr_protag_lying
obj_protag.image_index = 0

alarm[0] = 120;
step = 0