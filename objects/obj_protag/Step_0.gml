/// @description Control movement
depth = -y
// Setting key
if global.allow_control {
	left_key = -keyboard_check(vk_left)
	right_key = keyboard_check(vk_right)
	up_key = -keyboard_check(vk_up)
	down_key = keyboard_check(vk_down)
	interact_key = keyboard_check_pressed(vk_space)
	back_key = keyboard_check_pressed(vk_escape)
	menu_key = keyboard_check_pressed(ord("I"))
}



// Prevent player moving while open menu
if menu_drawed == false {
	hspd = left_key + right_key
	vspd = up_key + down_key
} else {
	hspd = 0
	vspd = 0
}

// Movement + Avoid get stuck near collision box
if place_free(x + hspd * spd, y) {
	x += hspd * spd
}
if place_free(x, y + vspd * spd) {
	y += vspd * spd
}

// Control sprite
if (global.allow_control) {
	if (hspd == 0) and (vspd == 0) {
		// stand still
		image_speed = 0
		image_index = 0
	} else { 
		image_speed = 1
		if (hspd < 0) {
			sprite_index = spr_protag_left
			image_xscale = 1
		} else if (hspd > 0) {
			sprite_index = spr_protag
			image_xscale = 1
		} else if (vspd < 0) {
			sprite_index = spr_protag_up
			image_xscale = 1
		}
		else if (vspd > 0) {
			sprite_index = spr_protag_down
			image_xscale = 1
		}
	}
}

// Consider direction player is facing
// Locked, not useful yet
/*
var dir = point_direction(0,0,hspd,vspd)
if (0 <= dir < 45) or (270 < dir < 360) face_dir = 0
else if (45 <= dir <= 135) face_dir = 1
else if (135 < dir < 270) face_dir = 2
else face_dir = 3
*/


// Reduce oil(true = turn off, false = turn on)
if (global.item_inv[# itemid.latern, itemstat.toggle] == false) and (global.allow_control) {
	time_counter++
}
if time_counter >= room_speed * OIL_RATE {
	time_counter = 0
	oil_percent -= 1
	if oil_percent < 0 oil_percent = 0
}
// Interact - Create a pixel obj_interact_collision that collide with other object
// in order to trigger event
if interact_key and !menu_drawed {
	if (sprite_index == spr_protag_up) instance_create_layer(x, y - 5, "Instances", obj_interact_collision)
	if (sprite_index == spr_protag_down) instance_create_layer(x, y + 15, "Instances", obj_interact_collision)
	if (sprite_index == spr_protag_left) instance_create_layer(x - 15, y, "Instances", obj_interact_collision)
	if (sprite_index == spr_protag) instance_create_layer(x + 15, y, "Instances", obj_interact_collision)
}



