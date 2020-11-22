use <../lib/side.scad>;

module top() {
  difference() {
    side_top_bottom(50.2,36,2);
    translate([-15,-10,0]) {
      circle(d=1, $fn=50);
    }
  }
}

top();
