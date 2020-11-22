use <../lib/side.scad>

module back() {
  difference() {
    side_front_back(36,12,2);
    translate([-5,-12/2+6.85,0]) {
      offset(r=.3,$nf=50)
      polygon(points=[[-4.1,-1.5],[4.1,-1.5],[4.1,1.5],[-4.1,1.5],],convexity=10);
    }
  }
}

back();
