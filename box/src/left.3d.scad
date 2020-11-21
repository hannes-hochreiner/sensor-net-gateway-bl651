use <left.2d.scad>;

rotate([90,0,0]) {
  linear_extrude(height = 2, center = true, convexity = 10, twist = 0) {
    left();
  }
}
