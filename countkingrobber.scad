/**
 * @file countkingrobber.scad
 * @author Conlan Wesson
 * Count, King, and Robber Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 30;
dividers = [[1,2.5]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="countkingrobber.dxf", rot=-90, mult=0.175, xoff=-10, yoff=20);
