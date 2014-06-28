coneheight = 20.8;
radiusEyepiece = 14.05;
radiusLenscone = 23;
err = 0.01;
clearance = 0.25;
lipthickness = 3;
$fn=120;

difference(){
cylinder(h = coneheight, r1 = radiusEyepiece+0.5, r2 = radiusLenscone, center = false);
translate([0,0,-err/2])
cylinder(h = coneheight+err, r = 8.5, center=false
);
translate([0,0,lipthickness])
cylinder(h=coneheight, r = radiusEyepiece+clearance, center=false);
}