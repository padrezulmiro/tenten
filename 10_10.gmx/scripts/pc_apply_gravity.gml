///pc_apply_gravity(collided_id)

var col_id = argument0;
     
dir_planet = point_direction(phy_com_x, 
                             phy_com_y, 
                             col_id.phy_com_x, 
                             col_id.phy_com_y);
                             
dis_planet = point_distance(phy_com_x, 
                            phy_com_y, 
                            col_id.phy_com_x, 
                            col_id.phy_com_y);
                             
physics_apply_force(phy_com_x,
                    phy_com_y,
                    col_id.PLANET_GRAVITY*dcos(dir_planet),
                    -col_id.PLANET_GRAVITY*dsin(dir_planet));

