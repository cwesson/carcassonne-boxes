/**
 * @file watchtowers.scad
 * @author Conlan Wesson
 * The Watchtowers Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 12;
dividers = [[]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="watchtowers.dxf", rot=90, mult=0.7, xoff=8, yoff=0);
