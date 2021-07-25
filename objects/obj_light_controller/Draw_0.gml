/// @description Insert description here
// You can write your code in this editor
if !surface_exists(surf) {
	var cw = camera_get_view_width(view_camera[0])
	var ch = camera_get_view_height(view_camera[0])
	surf = surface_create(cw, ch)
	surface_set_target(surf)
	draw_set_color(c_black)
	draw_set_alpha(0)
	draw_rectangle(0,0,cw,ch,false)
	surface_reset_target()
} else {
	var cw = camera_get_view_width(view_camera[0])
	var ch = camera_get_view_height(view_camera[0])
	var cx = camera_get_view_x(view_camera[0])
	var cy = camera_get_view_y(view_camera[0])
	surface_set_target(surf)
	draw_set_color(c_black)
	draw_set_alpha(DARK_LEVEL)
	draw_rectangle(0,0,cw,ch,false)
	gpu_set_blendmode(bm_subtract)
	with (obj_lightsource) {
		var sw = sprite_width / 2
		var sh = sprite_height / 2
		switch(object_index) {
			// Remember, these are drew on surface
			case obj_protag:
				var latern_off = global.item_inv[# itemid.latern, itemstat.toggle]
				if (obj_protag.oil_percent > 0) and (latern_off == false) draw_sprite_ext(spr_light_1,0,x-cx,y-cy,1,1,0,c_white,1)
				else draw_sprite_ext(spr_light_1,1,x-cx,y-cy,1,1,0,c_white,1)
				break
		}
		
	}
	gpu_set_blendmode(bm_normal)
	draw_set_alpha(1)
	surface_reset_target()
	draw_surface(surf, cx,cy)
}