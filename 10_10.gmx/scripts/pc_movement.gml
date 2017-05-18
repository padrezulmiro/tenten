///pc_movement(up, left, right)

var up = argument0;
var left = argument1;
var right = argument2;

if up {
    // Impulse the ship in the faced direction 
    //TODO Add thruster afterburner that activates briefly on a single tap?
    if fuel > 0 {
        physics_apply_force(phy_com_x, 
                            phy_com_y, 
                            FRONT_THRUSTER*dcos(phy_rotation), 
                            FRONT_THRUSTER*dsin(phy_rotation)
                            );
        fuel--;
    }    
}

if left {
    // Rotate ship to the left and set new direction
    physics_apply_torque(-SIDE_THRUSTER);
}

if right {
    // Rotate ship to the right and set new direction
    physics_apply_torque(SIDE_THRUSTER);
}

