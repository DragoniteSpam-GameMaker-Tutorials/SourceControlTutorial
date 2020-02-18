/// @description Move around

if (window_has_focus()) {
    // This is pretty much all movement code from 3D in older versions of Game Maker.
    direction += (display_mouse_get_x() - display_get_width() / 2) / 10;
    pitch = clamp(pitch + (display_mouse_get_y() - display_get_height() / 2) / 10, -80, 80);
    
    display_mouse_set(display_get_width() / 2, display_get_height() / 2);
    
    if (keyboard_check(vk_escape)) {
        game_end();
    }
    
    var vertical = keyboard_check(ord("W")) - keyboard_check(ord("S"));
    var horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    
    var move_direction = point_direction(0, 0, horizontal, vertical);
    var move_distance = point_distance(0, 0, horizontal, vertical);
    
    x += dcos(move_direction + direction + 90) * move_distance * 4;
    y -= dsin(move_direction + direction + 90) * move_distance * 4;
}