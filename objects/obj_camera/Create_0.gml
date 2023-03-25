/// @desc ??
display_reset(0, false);
view_width = 640;
view_height = 360;

display_width = display_get_width();
display_height = display_get_height();

window_scale = display_width/view_width;

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);