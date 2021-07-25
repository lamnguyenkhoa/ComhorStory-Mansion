/// @description 
with (other) {
	
	// If other object is a chest / drawer / sth contain item
	if type == CONTAINER {
		if used == false {
			used = true
			scr_add_item(ContainerItem, ContainerAmount, false)
		}	
	}
	
	// If other is a door / transport to another area	
	if type == DOOR {
		room_goto(TeleportRoom)
		obj_protag.x = TeleportX
		obj_protag.y = TeleportY
		obj_camera.x = TeleportX
		obj_camera.y = TeleportY
		break
	}
}
instance_destroy()