/**
 * @file cropcircles.scad
 * @author Conlan Wesson
 * The Crop Circles Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 6;
dividers = [[1]];
columns = 1;

carcassonne_box(count, dividers, columns);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="cropcircles.dxf", rot=0, mult=0.4, xoff=-5, yoff=-9);
