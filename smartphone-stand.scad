include <scad-lib/lib.scad>;

$fn = 64;

module line(w, l) {
    hull() {
        circle(d=w);
        translate([l, 0, 0]) circle(d=w);
    }
}

linear_extrude(50) fillet(2.5) {
    line(5, 50);
    x(50) rotate(120) line(5, 45);
    rotate(120) line(5, 5);
}
