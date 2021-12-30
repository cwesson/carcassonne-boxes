/**
 * @file tower.scad
 * @author Conlan Wesson
 * The Tower Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 18+24;
dividers = [[3]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="tower.dxf", rot=90, mult=0.075, xoff=15, yoff=0);
