include <scad-lib/lib.scad>;

$fn = 64;

module clamp() {
    difference() {
        square([10, 10], true);
        square([6, 3], true);
        y(-2) square([5, 6], true);
    }
}

linear_extrude(15) smooth(0.5) fillet(0.5) union() {
    square([80, 4], true);
    x(-35) y(-5) clamp();
    x(35) y(-5) clamp();
}
