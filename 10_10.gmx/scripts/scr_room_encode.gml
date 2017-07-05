///scr_room_encode(fname, obj_list)

var fname = argument0;
var obj_list = argument1;

var file, json_str;
var json_map = ds_map_create();

for (var i = 0; i < ds_list_size(obj_list); i++) ds_list_mark_as_map(obj_list, i);

ds_map_add_list(json_map, "default", obj_list);
json_str = json_encode(json_map);

// TODO Hackey algorithm to write JSON to a file
//I don't want overwrite to be possible, but this implementation allows it

file = file_text_open_write(working_directory + fname);
file_text_write_string(file, json_str);
file_text_close(file);

show_debug_message('Room JSON saved attempted: ' + working_directory + fname);

//Alternate algorithm to write JSON to a file

/*
if !file_exists(working_directory + fname) {
    file = file_text_open_write(working_directory + fname);
    file_text_write_string(file, json_str);
    file_text_close(file);
    
    show_debug_message('Room JSON saved: ' + working_directory + fname);
} else show_debug_message("Can't overwrite file: " + working_directory + fname);
*/


