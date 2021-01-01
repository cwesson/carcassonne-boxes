/**
 * @file river.scad
 * @author Conlan Wesson
 * The River Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 12;
dividers = [[]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="river.dxf", rot=90, mult=0.2, xoff=13, yoff=-11);
