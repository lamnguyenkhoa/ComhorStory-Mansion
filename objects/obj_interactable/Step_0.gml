/// @description Check for interactable
// 0 = NORMAL SPRITE
// 1 = HIGHLIGHTED SPRITE
//var test = place_meeting(x, y + 5, obj_protag) || place_meeting(x, y - 15, obj_protag) ||
//			place_meeting(x + 15, y, obj_protag) || place_meeting(x + 15, y, obj_protag)
var dist = sqr(x - obj_protag.x) + sqr(y - obj_protag.y)
dist = sqrt(dist)
if (dist < 30) and (!used) {
	image_index = 1
} else {
	image_index = 0
}	
