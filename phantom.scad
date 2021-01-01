/**
 * @file phantom.scad
 * @author Conlan Wesson
 * Count, King, and Robber Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 6;

carcassonne_box(count);
translate([0,width+10,0]) carcassonne_lid(count, icon="phantom.dxf", rot=90, mult=0.5, xoff=8, yoff=1);
