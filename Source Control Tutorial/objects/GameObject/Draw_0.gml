draw_set_color(c_white);

var tsine = dsin(current_time / 2);
var t = current_time / 50;

var matrix_translate =  matrix_build(x, y, z,       0, 0, 0,        1, 1, 1);

matrix_set(matrix_world, matrix_translate);

//vertex_submit(model, pr_trianglelist, -1);

matrix_set(matrix_world, matrix_build_identity());