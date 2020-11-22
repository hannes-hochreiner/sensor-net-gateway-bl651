all: svg stl

svg: bld/top.svg bld/bottom.svg bld/left.svg bld/front.svg bld/back.svg bld/box_mount.svg bld/pcb_mount.svg

stl: bld/top.stl bld/bottom.stl bld/left.stl bld/front.stl bld/back.stl bld/box_mount.stl bld/pcb_mount.stl

bld/%.svg: src/%.2d.scad lib/side.scad
	openscad -o $@ $<

bld/%.stl: src/%.3d.scad src/%.2d.scad lib/side.scad
	openscad -o $@ $<
