use <pcb_mount.2d.scad>;

linear_extrude(height = 2, center = true, convexity = 10, twist = 0) {
  pcb_mount();
}
