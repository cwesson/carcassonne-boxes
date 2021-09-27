/**
 * @file halflings.scad
 * @author Conlan Wesson
 * Halflings Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 24;
dividers = [[1.5]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="halflings.dxf", rot=90, mult=6, xoff=10, yoff=-2);
