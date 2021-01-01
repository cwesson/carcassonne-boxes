/**
 * @file abbot.scad
 * @author Conlan Wesson
 * The Abbot Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 6;
dividers = [[1]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="abbot.dxf", rot=90, mult=0.5, xoff=10, yoff=1);
