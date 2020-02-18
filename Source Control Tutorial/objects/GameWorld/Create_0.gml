vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();

format = vertex_format_end();

draw_set_lighting(true);
draw_light_define_point(1, 0, 0, 0, room_width, c_white);
draw_light_define_point(2, room_width, room_height, 96, room_width, c_white);
draw_light_enable(1, true);
draw_light_enable(2, true);
gpu_set_cullmode(cull_noculling);

var merry = instance_create_depth(500, 500, 0, GameObject);
merry.model = load_obj("merry_mtl.obj", "merry_mtl.mtl");
merry.z = 32;