module side_top_bottom(inner_x,inner_y,width) {
  x = inner_x/2;
  y = inner_y/2;

  polygon(points=[
      [-x-width,-y-width],
      [-x*1/3,-y-width],
      [-x*1/3,-y],
      [x*1/3,-y],
      [x*1/3,-y-width],
      [x+width,-y-width],
      [x+width,-y*1/3],
      [x,-y*1/3],
      [x,y*1/3],
      [x+width,y*1/3],
      [x+width,y+width],
      [x*1/3,y+width],
      [x*1/3,y],
      [-x*1/3,y],
      [-x*1/3,y+width],
      [-x-width,y+width],
      [-x-width,y*1/3],
      [-x,y*1/3],
      [-x,-y*1/3],
      [-x-width,-y*1/3],
    ],convexity=10);
}

module side_left_right(inner_x,inner_z,width) {
  x = inner_x/2;
  z = inner_z/2;

  polygon(points=[
      [-x-width,-z],
      [-x*1/3,-z],
      [-x*1/3,-z-width],
      [x*1/3,-z-width],
      [x*1/3,-z],
      [x+width,-z],
      [x+width,-z*1/3],
      [x,-z*1/3],
      [x,z*1/3],
      [x+width,z*1/3],
      [x+width,z],
      [x*1/3,z],
      [x*1/3,z+width],
      [-x*1/3,z+width],
      [-x*1/3,z],
      [-x-width,z],
      [-x-width,z*1/3],
      [-x,z*1/3],
      [-x,-z*1/3],
      [-x-width,-z*1/3],
    ],convexity=10);
}


module side_front_back(inner_y,inner_z,width) {
  y = inner_y/2;
  z = inner_z/2;

  polygon(points=[
      [-y,-z],
      [-y*1/3,-z],
      [-y*1/3,-z-width],
      [y*1/3,-z-width],
      [y*1/3,-z],
      [y,-z],
      [y,-z*1/3],
      [y+width,-z*1/3],
      [y+width,z*1/3],
      [y,z*1/3],
      [y,z],
      [y*1/3,z],
      [y*1/3,z+width],
      [-y*1/3,z+width],
      [-y*1/3,z],
      [-y,z],
      [-y,z*1/3],
      [-y-width,z*1/3],
      [-y-width,-z*1/3],
      [-y,-z*1/3],
    ],convexity=10);
}