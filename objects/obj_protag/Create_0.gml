/// @description Init

// Constant for facing direction
// Locked, not useful yet
/*
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3
*/

scr_init_itemlist()
scr_init_macro()
scr_init()

image_speed = 0

left_key = 0
right_key = 0
up_key = 0
down_key = 0
interact_key = 0
back_key = 0
menu_key = 0
global.allow_control = false

time_counter = 0
spd = 2  // Player's movement speed
hp = 50  // Health
max_hp = 100
oil_percent = 25
menu_drawed = false  // Check if player opened menu or not

sprite_set_speed(spr_protag, 10, spritespeed_framespersecond)  // Set animation speed for player's sprite


