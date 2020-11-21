use <../lib/side.scad>;

module bottom() {
  difference() {
    side_top_bottom(50.2,36,2);
    translate([-22,-15,0]) {
      circle(d=2.2, $fn=50);
    }
    translate([22,15,0]) {
      circle(d=2.2, $fn=50);
    }
  }
}

bottom();
