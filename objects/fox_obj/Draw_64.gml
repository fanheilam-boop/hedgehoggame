if (show_dialogue) {
    var _x1 = 100;
    var _y1 = display_get_gui_height() - 180;
    var _x2 = display_get_gui_width() - 100;
    var _y2 = display_get_gui_height() - 40;
    
    // Draw dark background box
    draw_set_alpha(0.85);
    draw_set_colour(c_black);
    draw_rectangle(_x1, _y1, _x2, _y2, false);
    
    // Draw white border
    draw_set_alpha(1);
    draw_set_colour(c_white);
    draw_rectangle(_x1, _y1, _x2, _y2, true);
    
    // Draw dialogue text
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text_ext(_x1 + 25, _y1 + 25, dialogue_text, 28, (_x2 - _x1) - 50);
}
