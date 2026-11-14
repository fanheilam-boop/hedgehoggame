// Slightly enlarge the button when hovered over
var _scale = is_hovering ? 1.1 : 1.0;

draw_sprite_ext(sprite_index, image_index, x, y, _scale, _scale, 0, c_white, 1);

// Draw "PLAY" text on top of the button
draw_set_font(fnt_ui);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, "PLAY");
