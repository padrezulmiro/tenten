///get_resultant_force_y(forces_y)

var forces = argument0;
var resultant_y = 0; 

var i;
for (i=0; i<array_length_1d(forces); i++) {
    resultant_y += forces[i];
}

return resultant_y
