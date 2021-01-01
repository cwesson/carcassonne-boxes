/**
 * @file main.scad
 * @author Conlan Wesson
 * Carcossonne main box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 30;
dividers = [[1]];
columns = 3;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="main.dxf", rot=90, mult=1, xoff=30, yoff=-10);
