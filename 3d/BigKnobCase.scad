/*
big knob
by stahl
office@stahlnow.com

released under the permissive MIT license

file history
v1.0 - born
*/

/*********************************************** START OF USER VARIABLES */

// what to build
3d(); // 3d model
//laser(); // uncomment for laser cutting

thickness = 1.8; // thickness of material

t_joints = true;   // make t-joints
slots = true;      // make slots

// define inner volume in mm
length = 80;
width = 45;
height = 38; // 31.75 (height of jacks) + 1.6 (PCB) + 5 (spacer screws)

// overlap of top/bottom panels in mm
overlap = 0;
// round edge or not (applies only if overlap > 0)
round_edges = true;

// slots configuration
num_slots_right_left = 2;
slot_width_right_left = 10;
slot_clearance_right_left = 4; // inset to slot >= 0

num_slots_front_back = 2;       // number of slots
slot_width_front_back = 10;     // width of slot
slot_clearance_front_back = 0.0;  // inset to slot >= 0, add plus or minus 0.1 if last tooth is missing

// t-joints configuration
num_t_joints = 1; // number of t-joints
bolt_size = 2; // bolt size in mm (M2,M3,M4,M5, etc.)
bolt_length = 10; // bolt length in mm

// clearence between panel edge and t-joint
// could be set to a number instead of calculation
t_joints_top_left_clearance = length/(2*num_t_joints); 
t_joints_right_left_clearance = height/(2*num_t_joints);
t_joints_front_back_clearance = width/(2*num_t_joints);

joints_inset = 1; // clearance between panel edge and hole
nut_size = 4.5;// M3: 5.5, M5: 8.0
nut_thickness = 2.4;// M3: 2.4, M5: 5.6
// clearance for laser cutting in mm
laser_clearance = 5;


// colors
col_alpha = 0.9;
col_top =  "WhiteSmoke";
col_bottom = "WhiteSmoke";
col_left = "WhiteSmoke";
col_right = "WhiteSmoke";
col_front = "WhiteSmoke";
col_back = "WhiteSmoke";

// number of fragments for round edges
$fn = 100;

/************************************************* END OF USER VARIABLES */

module 3d() {
    translate([0.0, 0.0, -31.75/2+1.6/2+5/2])
    import("BigKnob.stl");
    top();
    bottom();
    front();
    //front_plate();
    back();
    left();
    right();
}

module laser() {
    // top
    if (slots) {
        projection() difference() {
            top();
            right();
            left();
            slots_front_back(-(length+thickness)/2.0);
            slots_front_back((length+thickness)/2.0);
        }
    } else {
        projection() top();
    }

    // bottom
    bottom_offset = -(length+2*thickness+2*overlap+laser_clearance);
    translate([0,bottom_offset,0])
    
    if (slots) {
        projection() difference() {
            bottom();
            right();
            left();        
            slots_front_back(-(length+thickness)/2.0);
            slots_front_back((length+thickness)/2.0);
        }
    } else {
        projection() bottom();
    }
    
    // front
    front_offset = bottom_offset-(length+height)/2-overlap-2*thickness-laser_clearance;
    projection() translate([0,front_offset,0]) rotate([-90,0,0])
    
    if (slots) {
        difference() {
            front();
            slots_right_left(-(width+thickness)/2);
            slots_right_left((width+thickness)/2);
        }
    } else {
        projection() front();
    }
    
    
    // back
    back_offset = front_offset-height-2*thickness-laser_clearance;
    projection() translate([0,back_offset,0]) rotate([-90,0,0])
    if (slots) {
        difference() {
            back();
            slots_right_left(-(width+thickness)/2);
            slots_right_left((width+thickness)/2);
        }
    } else {
        projection() back();
    }

    // left
    left_offset = back_offset-height-2*thickness-laser_clearance;
    projection() translate([0,left_offset,0]) rotate([0,90,90]) left();
    
    // right
    right_offset = left_offset-height-2*thickness-laser_clearance;
    projection() translate([0,right_offset,0]) rotate([0,90,90]) right();
    
    // front_plate
    front_plate_offset = right_offset-height-100-laser_clearance;
    projection() translate([0,front_plate_offset,0]) rotate([-90,0,0])
    front_plate();
    
}


module top() {
    if (round_edges) {
        p = 0;
    } else {
        p = overlap;
    }
    
    difference() {
        union() color(col_top, col_alpha) {
            minkowski()
            {
                translate([0,0, (height+thickness)/2])
                if (!round_edges) {
                    cube([width+2*thickness+overlap, length+overlap+2*thickness, thickness-0.01], center=true);
                } else {
                    cube([width+2*thickness, length+2*thickness, thickness-0.01], center=true);
                }
                if (round_edges) cylinder(r=overlap, h=0.001, $fn=100);
            }
        }
        if (t_joints) {
            t_joints_holes_top_bottom();
            t_joints_holes_front_back();
        }
        // cutouts
        color("silver")
        translate([0.0, 0.0, (height-thickness)/2])
        linear_extrude(thickness*3)
        import(file = "top_cutout.dxf", layer = "0");
    }
}

module bottom() {
    if (round_edges) {
        p = 0;
    } else {
        p = overlap;
    }
    
    difference() {
        union() color(col_bottom, col_alpha) {
            minkowski()
            {
                translate([0,0, -(height+thickness)/2])
                if (!round_edges) {
                    cube([width+2*thickness+overlap, length+overlap+2*thickness, thickness-0.01], center=true);
                } else {
                    cube([width+2*thickness, length+2*thickness, thickness-0.01], center=true);
                }
                if (round_edges) cylinder(r=overlap, h=0.001, $fn=100);
            }
        }
        if (t_joints) {
            t_joints_holes_top_bottom();
            t_joints_holes_front_back();
        }
        // cutouts
        color("silver")
        translate([0.0, 0.0, -height/2-1.5*thickness])
        linear_extrude(thickness*2)
        import(file = "bottom_cutout.dxf", layer = "0");
    }
   
}

module front() { 
    difference() {
        union() color(col_front, col_alpha) {
            translate([0.0, -(length+thickness)/2.0, 0.0])
            cube([width+2.0*thickness, thickness, height], center=true);
            // slots
            if (slots)
                slots_front_back(-(length+thickness)/2.0);
        }
        if (t_joints) {
            // t-joints
            t_joints_front_back(-(length+thickness)/2.0);
            // t-joints holes (on the side)
            t_joints_holes_right_left();
        }
        
        // cutouts
        
        color("silver")
        translate([0,-length/2+thickness,0]) 
        rotate([90,0,0])
        linear_extrude(thickness*3)
        import(file = "front_cutout.dxf", layer = "0");
        
        
        
    }
}

module front_plate() {
    // front plate
    color(col_plate) difference() {
        hole_size = hole_size*1.2;  // make it a bit bigger than the box cutout
        scale([scale_plate,1.0,scale_plate])
        minkowski()
        {
            translate([0.0, -(length+thickness)/2.0-thickness, 0.0])
            cube([width+2.0*thickness-hole_size, thickness, height-hole_size], center=true);
            rotate([90,0,0])
            cylinder(r=hole_size/4,h=1);
        }
        minkowski()
        {
            translate([0.0, -(length+thickness)/2.0, 0.0])
            cube([width+2.0*thickness-hole_size, thickness*4, height-(hole_size*scale_inner)], center=true);
            rotate([90,0,0])
            cylinder(r=hole_size/scale_hole,h=1);
        }
    }
}

module back() {
    difference() {
        union()
        color(col_back, col_alpha) {
            translate([0.0, (length + thickness)/2.0, 0.0])
            cube([width+2.0*thickness, thickness, height], center=true);
            if (slots)
                slots_front_back((length+thickness)/2.0);
        }
        
        if (t_joints) {
            // t-joints
            t_joints_front_back((length+thickness)/2.0);
            // t-joints holes (on the side)
            t_joints_holes_right_left();
        }
        // cutouts
        color("silver")
        translate([0,(length-thickness)/2,0]) rotate([0,0,180]) rotate([90,0,0])
        linear_extrude(thickness*2)
        import(file = "back_cutout.dxf", layer = "0");
    }
}

module t_joints_holes_right_left() {
    t_joints_right_left(-(width+thickness)/2.0+joints_inset, true);
    t_joints_right_left((width+thickness)/2.0-joints_inset, true);
}

module t_joints_holes_top_bottom() {
    t_joints_top_bottom(-(width+thickness)/2.0+joints_inset, true);
    t_joints_top_bottom((width+thickness)/2.0-joints_inset, true);
}

module t_joints_holes_front_back() {
    t_joints_front_back(-(length+thickness)/2.0+joints_inset, true);
    t_joints_front_back((length+thickness)/2.0-joints_inset, true);
}

module slots_front_back(d) {
    of = slot_width_front_back/2.0-thickness + slot_clearance_front_back;
    for (z = [-(height+thickness)/2.0 : height+thickness : (height+thickness)/2.0 ])
        for (x = [-width/2.0+of: (width-(2.0*of))/(num_slots_front_back-1.0) : width/2.0-of])
            translate([x, d, z])
            cube([slot_width_front_back, thickness, thickness], center=true);
}

module left() {
    difference() {
        union()
        color(col_left, col_alpha)
        {
            // panel
            translate([-(width+thickness)/2, 0, 0])
            cube([thickness, length, height], center=true);
            // slots
            if (slots)
                slots_right_left(-(width+thickness)/2);
        }
        // t-joints
        if (t_joints) {
            t_joints_right_left(-(width+thickness)/2);
            t_joints_top_bottom(-(width+thickness)/2);
        }
        // cutouts
        color("silver")
        rotate([0,0,-90]) rotate([90,0,0]) translate([0,0,(width-thickness)/2])
        linear_extrude(thickness*2)
        import(file = "left_cutout.dxf", layer = "0");
    }
}

module right() {
    difference() {
        union()
        color(col_right, col_alpha)
        {
            // panel
            translate([(width+thickness)/2, 0, 0])
            cube([thickness, length, height], center=true);
            // slots
            if (slots)
                slots_right_left((width+thickness)/2);
        }
        // t-joints
        if (t_joints) {
            t_joints_right_left((width+thickness)/2);
            t_joints_top_bottom((width+thickness)/2);
        }
        // cutouts
        color("silver")
        rotate([0,0,90]) rotate([90,0,0]) translate([0,0,width/2-0.5*thickness])
        linear_extrude(thickness*2)
        import(file = "right_cutout.dxf", layer = "0");
    }
}

module t_joints_front_back(w, holes=false) {
    glitch_corr = 1.0; // visual glitch correction
    dx = (bolt_size < thickness) ? thickness : bolt_size;
    
    for (z = [-(height-bolt_length)/2, (height-bolt_length)/2, (height-bolt_length)/2])
        for (x = [-(width-bolt_size)/2+t_joints_front_back_clearance:(width-bolt_size-2*t_joints_front_back_clearance)/(num_t_joints-1):(width+bolt_size)/2-t_joints_front_back_clearance])
            color("silver")
            translate([0,w,0])
            translate([x, 0, z])
            if (holes) {
                cylinder(h=bolt_length*2, r=bolt_size, center=true);
            }
            else {
                rotate([90,0,0])
                cube([bolt_size, bolt_length, dx+glitch_corr], center=true);
                rotate([90,0,0])
                cube([nut_size, nut_thickness, nut_size+glitch_corr], center=true);
            }
}

module t_joints_right_left(w, holes=false) {   // w is for right / left side offset    
    glitch_corr = 1.0; // visual glitch correction
    dx = (bolt_size < thickness) ? thickness : bolt_size;
    
    for (y = [-(length-bolt_length)/2, (length-bolt_length)/2, (length-bolt_length)/2])
        for (z = [-(height-bolt_size)/2+t_joints_right_left_clearance:(height-bolt_size-2*t_joints_right_left_clearance)/(num_t_joints-1):(height+bolt_size)/2-t_joints_right_left_clearance])
            color("silver")
            translate([w,0,0])
            translate([0, y, z])
            if (holes) {
                rotate([90,0,0])
                cylinder(h=bolt_length*2, r=bolt_size, center=true);
            }
            else {
                cube([dx+glitch_corr, bolt_length, bolt_size+glitch_corr], center=true);
                //translate([0,bolt_length/2,0])
                cube([dx+glitch_corr, nut_thickness, nut_size+glitch_corr], center=true);
            }
}

module t_joints_top_bottom(w, holes=false) {   // w is for right / left side offset    
    glitch_corr = 1.0; // visual glitch correction
    dx = (bolt_size < thickness) ? thickness : bolt_size;
    
    // right + left side
    for (z = [-(height-bolt_length)/2.0 : height-bolt_length : (height-bolt_length)/2.0 ])
        for (y = [-(length-bolt_size)/2+t_joints_top_left_clearance:(length-bolt_size-2*t_joints_top_left_clearance)/(num_t_joints-1):(length+bolt_size)/2-t_joints_top_left_clearance])
            color("silver")
            translate([w,0,0])
            translate([0, y, z])
            if (holes) {
                cylinder(h=bolt_length*2, r=bolt_size, center=true);
            }
            else {
                cube([dx+glitch_corr, bolt_size+glitch_corr, bolt_length], center=true);
                //translate([0,bolt_length/2,0])
                cube([dx+glitch_corr, nut_size+glitch_corr, nut_thickness], center=true);
            }
    
            /*
    // front + back side
    for (z = [-(height-bolt_length)/2.0 : height-bolt_length : (height-bolt_length)/2.0 ])
        for (x = [-(width-bolt_size)/2+t_joints_top_left_clearance:(width-bolt_size-2*t_joints_top_left_clearance)/(num_t_joints-1):(width+bolt_size)/2-t_joints_top_left_clearance])
            color("silver")
            translate([w,0,0])
            translate([x, 0, z])
            if (holes) {
                cylinder(h=bolt_length*2, r=bolt_size, center=true);
            }
            else {
                cube([dx+glitch_corr, bolt_size+glitch_corr, bolt_length], center=true);
                //translate([0,bolt_length/2,0])
                cube([dx+glitch_corr, nut_size+glitch_corr, nut_thickness], center=true);
            }
            */
}

module slots_right_left(w) {    // w is for right / left side offset
    of = slot_width_right_left/2.0 + slot_clearance_right_left;
    // on top / bottom
    for (z = [-(height+thickness)/2 : height+thickness : (height+thickness)/2 ])
        for (x = [-length/2 + of : (length-(2.0*of))/(num_slots_right_left-1) : length/2.0 - of])
            translate([w, x, z])
            cube([thickness, slot_width_right_left, thickness], center=true);
    // sides
    for (y = [-(length+thickness)/2 : length+thickness : (length+thickness)/2 ])
        for (z = [-height/2 + of : (height-(2.0*of))/(num_slots_right_left-1) : height/2.0 - of])
            translate([w, y, z])
            cube([thickness, thickness, slot_width_right_left], center=true);
}




