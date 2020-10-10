include <scad-lib/lib.scad>;

$fn = 64;

module line(w, l) {
    hull() {
        circle(d=w);
        translate([l, 0, 0]) circle(d=w);
    }
}

linear_extrude(50) fillet(2.5) {
    line(5, 75);
    x(75) rotate(135) line(5, 75-8.2/2); // 8.2mm = Pixel 4 Thickness
    rotate(135) line(5, 7.5);
}
