/// @param	buffer
/// @param	x
/// @param	y
/// @param	z
/// @param	nx
///	@param	ny
///	@param	nz
///	@param	xtex
///	@param	ytex
///	@param	color
///	@param	alpha

var vbuffer = argument0;
var xx = argument1;
var yy = argument2;
var zz = argument3;
var nx = argument4;
var ny = argument5;
var nz = argument6;
var xtex = argument7;
var ytex = argument8;
var color = argument9;
var alpha = argument10;

vertex_position_3d(vbuffer, xx, yy, zz);
vertex_normal(vbuffer, nx, ny, nz);
vertex_texcoord(vbuffer, xtex, ytex);
vertex_color(vbuffer, color, alpha);