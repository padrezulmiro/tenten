///scr_init_vars()

//Constants

//TODO Fuel vars shouldn't be global
global.MAX_FUEL = 100;

//Vars

global.fuel = global.MAX_FUEL;

//Object Membership

// Drawed in liftoff stage
LIFTOFF_DRAWABLE[3] = "obj_grav_soi";
LIFTOFF_DRAWABLE[2] = "obj_planet";
LIFTOFF_DRAWABLE[1] = "obj_end_target";
LIFTOFF_DRAWABLE[0] = "obj_timer";

// Saved to the room's configuration JSON
ROOM_CONF_SAVEABLE[2] = "obj_grav_soi";
ROOM_CONF_SAVEABLE[1] = "obj_planet";
ROOM_CONF_SAVEABLE[0] = "obj_end_target";




