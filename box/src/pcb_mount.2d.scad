module pcb_mount() {
  difference() {
    circle(d=5.9, $fn=50);
    circle(d=3.2, $fn=50);
  }
}

pcb_mount();
