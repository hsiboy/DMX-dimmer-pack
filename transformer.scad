$fn=50;
pad = 0.1; // Padding to maintain manifold
box_l = 23.7; // Length
box_w = 28; // Width
box_h = 27.8; // Height
round_r = 2; // Radius of round
smooth = 45; // Number of facets of rounding cylinder

union(){
difference() {
// bobin
difference() {
color("brown")
cube([box_l, box_w, box_h], center = true);

translate([-box_l/2+round_r, 0, box_h/2-round_r]) {
		difference() {
			translate([-round_r-pad, 0, round_r+pad])
color("brown")
				cube([round_r*2+pad, box_w+2*pad, round_r*2+pad], center = true);
			rotate(a=[0,90,90])
color("brown")
				cylinder(box_w+4*pad,round_r,round_r,center=true,$fn=smooth);
		}
	}
	translate([box_l/2-round_r, 0, box_h/2-round_r]) {
		difference() {
			translate([round_r+pad, 0, round_r+pad])
color("brown")
				cube([round_r*2+pad, box_w+2*pad, round_r*2+pad], center = true);
			rotate(a=[0,90,90])
color("brown")
				cylinder(box_w+4*pad,round_r,round_r,center=true,$fn=smooth);
		}
	}

}

// bobin core
translate([0,0,0]) {
color("brown") cube([13.3,28,13.60], center=true);
}
}

// laminates
translate([0,0,0]) {
color("Silver")
cube([38.5,32,17.6], center=true);
}

}


