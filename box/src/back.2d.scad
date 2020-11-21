use <../lib/side.scad>

module back() {
  difference() {
    side_front_back(36,12,2);
    translate([-5,-12/2+6.85,0]) {
      polygon(points=[[-4.3,-1.7],[4.3,-1.7],[4.3,1.7],[-4.3,1.7],],convexity=10);
    }
  }
}

back();
