/**
 * @file magewitch.scad
 * @author Conlan Wesson
 * Mage and Witch Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 16;
dividers = [[1]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="magewitch.dxf", rot=90, mult=0.6, xoff=10, yoff=-3);
