color("red")
    translate([0, -100, -20])
        linear_extrude(height = 4, center = true)
        cylinder(h=20, r=5, center=true);
            difference() {
                trapezoid(-140, -80, -80,5);
                translate([-30, -20, -1]) cylinder(h=4, r=19);
                translate([-70, -20, -1]) cylinder(h=4, r=19);
                translate([-110, -20, -1]) cylinder(h=4, r=19);
                translate([-50, -55, -1]) cylinder(h=4, r=19);
                translate([-90, -55, -1]) cylinder(h=4, r=19);
            }
      
module trapezoid(width_base, width_top,height,thickness) {

  linear_extrude(height = thickness) polygon(points=[[0,0],[width_base,0],[width_base-(width_base-width_top)/2,height],[(width_base-width_top)/2,height]], paths=[[0,1,2,3]]); 
  
}