/**
 * @file princessdragon.scad
 * @author Conlan Wesson
 * Princess and Dragon Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 30;
dividers = [[1]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="princessdragon.dxf", rot=90, mult=0.1, xoff=11, yoff=-4);
