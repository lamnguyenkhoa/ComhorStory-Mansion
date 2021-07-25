/// @description Move up and fade
image_alpha -= 0.01
x -= 0.05
y -= 0.15
if (image_alpha <= 0) instance_destroy()