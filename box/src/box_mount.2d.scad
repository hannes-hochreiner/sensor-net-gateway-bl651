module box_mount() {
  difference() {
    polygon(points=[
          [-3,-3],
          [3,-3],
          [3,3],
          [-3,3],
        ],convexity=10);
    circle(d=3.2, $fn=50);
  }
}

box_mount();
