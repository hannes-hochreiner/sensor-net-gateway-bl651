use <back.2d.scad>;

rotate([90,0,90]) {
  linear_extrude(height = 2, center = true, convexity = 10, twist = 0) {
    back();
  }
}
