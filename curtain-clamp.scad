include <scad-lib/lib.scad>;

$fn=32;

module line(w, l) {
    hull() {
        circle(d=w);
        x(l) circle(d=w);
    }
}

linear_extrude(15) {
    difference() {
        circle(d=11);
        circle(d=3);
        x(5.5) square([11, 11], true);
    }
    y(1.5+2) line(4, 50);
    y(-1.5-2) line(4, 50);
    x(30) {
        for (i = [0 : 4]) {
            y(1.5) x(4 * i) circle(d=2);
            y(-1.5) x(4 * i+2) circle(d=2);
            // y(1.5) x(4 * i) rotate(45) square([1, 1] * sqrt(2), true);
            // y(-1.5) x(4 * i) rotate(45) square([1, 1] * sqrt(2), true);
        }
    }
}
