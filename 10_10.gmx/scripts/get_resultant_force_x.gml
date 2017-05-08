///get_resultant_force_x(forces_x)

var forces = argument0;
var resultant_x = 0; 

var i;
for (i=0; i<array_length_1d(forces); i++) {
    result_x += forces[i];
}

return resultant_x
