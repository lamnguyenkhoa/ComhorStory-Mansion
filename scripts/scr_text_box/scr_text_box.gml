/// @function scr_text_box(string)
/// @description Draw a text box then text on it
/// @param string
function scr_text_box(argument0) {

	var text = argument0
	var vw = view_wport[0]
	var vh = view_hport[0]
	draw_sprite(spr_text_box, 0, vw / 2, (vh / 2) + 150 )
	draw_text_color((vw / 2) - 200, (vh / 2) + 100, text, c_white, c_white, c_white, c_white, 1)


}
