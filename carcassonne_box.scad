/**
 * @file carcassonne_box.scad
 * @author Conlan Wesson
 * Template for Carcossonne boxes.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

mm = 1;
cm = 10*mm;

width = 47*mm;
thick = 2.5*mm;
wall = 2*mm;

/**
 * Lid for box.
 * @param count Number of cards.
 * @param columns Number of columns.
 * @param icon Path to icon DXF file.
 * @param rot Icon rotation in degrees.
 * @param mult Icon scale.
 * @param xoff X-offset of icon from center.
 * @param yoff Y-offset of icon from center.
 */
module carcassonne_lid(count, columns=1, icon=false, rot=0, mult=1, xoff=0, yoff=0, g=0){
	length = (thick * count) + ((width/2) - ((thick * count) % (width/2)));
	w = length+(1.5*wall)+.1;
	l = (width*columns)+wall;
	h = wall;
	d = 2;

	CubePoints = [
		[ 0-g, 0-g,   0 ],  //0
		[ w+g, 0-g,   0 ],  //1
		[ w+g, l+g,   0 ],  //2
		[ 0-g, l+g,   0 ],  //3
		[   d,   d, h+g ],  //4
		[   w,   d, h+g ],  //5
		[   w, l-d, h+g ],  //6
		[   d, l-d, h+g ]   //7
	];
	
	CubeFaces = [
		[0,1,2,3],  // bottom
		[4,5,1,0],  // front
		[7,6,5,4],  // top
		[5,6,2,1],  // right
		[6,7,3,2],  // back
		[7,4,0,3]   // left
	];
	
	
	difference(){
		union(){
			polyhedron( CubePoints, CubeFaces );
			translate([w-wall-.15,0,0]) cube([wall+.2,l, (1.5*wall)+.1]);
		}
		if(icon){
			translate([w/2+xoff,l/3+yoff,h-(wall/2)]){
				linear_extrude(height=(wall)+.1){
					rotate(rot) scale(mult) import(icon);
				}
			}
		}
	}
}

/**
 * Carcassonne card box.
 * @param count Number of cards.
 * @param dividers Array of divider positions.
 * @param columns Number of columns.
 */
module carcassonne_box(count, dividers=[], columns=1){
	length = (thick * count) + ((width/2) - ((thick * count) % (width/2)));
	difference(){
		union(){
			difference(){
				// Outer walls
				cube([length+(2*wall), (width*columns)+(2*wall), width+(2*wall)]);
				// Cavity
				translate([wall, wall, wall]){
					cube([length, width*columns, (width+wall)+.1]);
				}
			}
			// Dividers
			for(col = [0:columns-1]){
				for(div = dividers[col]){
					translate([(div*(width/2))+(wall/2), width*col+wall, 0]) cube([wall/2, width, width-(2*wall)]);
				}
				if(col > 0){
					translate([0, width*col+(wall/2), 0]) cube([length+(2*wall), wall/2, width-(2*wall)]);
				}
			}
		}
		union(){
			// Notch
			for(col = [0:columns-1]){
				translate([wall, wall+(width*col), wall]){
					translate([0, width/2, width])
					rotate([0, 90, 0]){
						cylinder(r=10, h=length+(2*wall), $fn=100);
					}
				}
			}
			// Track
			translate([wall/2,wall/2,width+wall/2]) carcassonne_lid(count, columns, g=0.4);
		}
	}
}
