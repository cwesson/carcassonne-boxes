/**
 * @file underbigtop.scad
 * @author Conlan Wesson
 * Under the Big Top Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 20;
dividers = [[1, 2]];
columns = 2;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="underbigtop.dxf", rot=-90, mult=0.075, xoff=-10, yoff=28);
