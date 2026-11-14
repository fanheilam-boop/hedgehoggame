if (show_dialogue) {
    // Get the size of the game window
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();

    // Box dimensions near the bottom of the screen
    var _box_margin = 60;
    var _box_height = 140;
    var _x1 = _box_margin;
    var _y1 = _gui_h - _box_height - 30;
    var _x2 = _gui_w - _box_margin;
    var _y2 = _gui_h - 30;

    // Draw dark background box
    draw_set_color(c_black);
    draw_set_alpha(0.85);
    draw_rectangle(_x1, _y1, _x2, _y2, false);

    // Draw white border around the box
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_rectangle(_x1, _y1, _x2, _y2, true);

    // Draw the dialogue text inside the box with automatic line wrapping
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text_ext(_x1 + 25, _y1 + 25, dialogue_text, 28, (_x2 - _x1) - 50);}