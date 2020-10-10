include <scad-lib/lib.scad>;

$fn = 64;

union() {
    cylinder(d=10, h=50);
    z(45) hull() {
        cylinder(d=10, h=5);
        x(-5) cylinder(d=10, h=5);
    }
    hull() {
        cylinder(d=20, h=10);
        x(45) y(30) cylinder(d=10, h=10);
        x(45) y(-30) cylinder(d=10, h=10);
    }
    hull() {
        x(45) y(30) cylinder(d=10, h=50);
        x(45) y(-30) cylinder(d=10, h=50);
    }
}
