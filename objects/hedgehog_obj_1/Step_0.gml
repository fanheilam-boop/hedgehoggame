// Check if the mouse cursor is over the button
if (position_meeting(mouse_x, mouse_y, id)) {
    is_hovering = true;
    
    // Go to Room1 when left-clicked
    if (mouse_check_button_pressed(mb_left)) {
        room_goto(Room1);
    }
} else {
    is_hovering = false;
}
