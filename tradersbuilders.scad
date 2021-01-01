/**
 * @file tradersbuilders.scad
 * @author Conlan Wesson
 * Traders and Builders Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 24;
dividers = [[1, 2]];
columns = 2;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="tradersbuilders.dxf", rot=90, mult=0.7, xoff=6, yoff=2);
