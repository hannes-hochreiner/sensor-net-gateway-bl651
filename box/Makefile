all: svg stl

svg: bld/top.svg bld/bottom.svg bld/left.svg bld/front.svg bld/back.svg bld/mounting.svg

stl: bld/top.stl bld/bottom.stl bld/left.stl bld/front.stl bld/back.stl bld/mounting.stl

bld/%.svg: src/%.2d.scad lib/side.scad
	openscad -o $@ $<

bld/%.stl: src/%.3d.scad src/%.2d.scad lib/side.scad
	openscad -o $@ $<
