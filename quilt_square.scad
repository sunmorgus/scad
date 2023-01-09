size_inches_x = 6.5;
size_inches_y = 8.5;

cube_size_x = size_inches_x * 25.4;
cube_size_y = size_inches_y * 25.4;

text_size = cube_size_x * .1;

cube_z = 2.8;

hole_radius = 4.5;

label =  str(size_inches_x, "\"x", size_inches_y, "\"");

rotate([0,0,-90]) { 
    difference() {
        color([ 1, 0, 0 ]) 
        cube([ cube_size_x, cube_size_y, cube_z ], center = true);
        translate([ -cube_size_x / 2 + hole_radius * 2, 0, 0 ]) 
            color([ 0, 1, 0 ]) 
            cylinder(h = 10, r = hole_radius, center = true);
    }

    translate([cube_size_x / 2 - text_size, -cube_size_y / 2 + text_size,0])
        color([0,0,1])
        rotate([0,0,90])
        linear_extrude(height = 2.8) 
        text(text = label, font = "Arial", size = text_size);
}