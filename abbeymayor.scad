/**
 * @file abbeymayor.scad
 * @author Conlan Wesson
 * Abbey and Mayor Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 24;
dividers = [[1,2],[1]];
columns = 2;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="abbeymayor.dxf", rot=90, mult=0.07, xoff=10, yoff=3);
