/**
 * @file barbersurgeons.scad
 * @author Conlan Wesson
 * The Barber-Surgeons Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 6;
dividers = [[]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="barbersurgeons.dxf", rot=90, mult=0.4, xoff=9, yoff=-1);
