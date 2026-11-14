// Prevent any leftover built-in speed or path movement
speed = 0;
path_end();

// Check Arrow keys (and WASD)
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var _down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));
var _up    = keyboard_check(vk_up)    || keyboard_check(ord("W"));

// Calculate horizontal and vertical input (-1, 0, or 1)
var _hinput = _right - _left;
var _vinput = _down - _up;

// Normalize diagonal speed so moving diagonally isn't faster
var _xspd = 0;
var _yspd = 0;

if (_hinput != 0 || _vinput != 0) {
    var _dir = point_direction(0, 0, _hinput, _vinput);
    _xspd = lengthdir_x(move_speed, _dir);
    _yspd = lengthdir_y(move_speed, _dir);
}

// Flip sprite left or right while preserving its custom Room Editor size
if (_xspd > 0) {
    image_xscale = -abs(image_xscale); // Faces right
} else if (_xspd < 0) {
    image_xscale = abs(image_xscale);  // Faces left
}

// Move horizontally unless blocked by dirtobj
if (!place_meeting(x + _xspd, y, dirtobj)) {
    x += _xspd;
}

// Move vertically unless blocked by dirtobj
if (!place_meeting(x, y + _yspd, dirtobj)) {
    y += _yspd;
}
