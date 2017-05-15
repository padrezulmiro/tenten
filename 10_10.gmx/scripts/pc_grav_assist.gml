///pc_grav_assist(colliding_id)

var col_id = argument0;
var dir_planet = point_direction(phy_com_x, 
                                 phy_com_y, 
                                 col_id.phy_com_x, 
                                 col_id.phy_com_y);
                                                              
var dis_planet = point_distance(phy_com_x, 
                                phy_com_y, 
                                col_id.phy_com_x, 
                                col_id.phy_com_y);

var gax = col_id.ASSIST_VELOCITY*dis_planet*dsin(dir_planet);
var gay = col_id.ASSIST_VELOCITY*dis_planet*dcos(dir_planet);

if add_assist physics_apply_force(phy_com_x, phy_com_y, gax, gay);

