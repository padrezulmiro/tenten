///pc_grav_assist(colliding_id)

/*
TODO Assuming a "thyphoon" kind of planet, then the vector v(ga) must be perpendicular 
     to the vector linking the ship and the planet's center-of-mass
*/

var col_id = argument0;
var ga_xx = 0;
var ga_yy = 0; 

if col_id {
    if add_assist {
        physics_apply_force(phy_com_x, 
                            phy_com_y, 
                            0,
                            -col_id.ASSIST_VELOCITY
                            );
    }
}
