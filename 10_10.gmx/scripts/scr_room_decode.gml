///scr_room_decode(file_path)

var fpath = argument0;

var json_file = file_text_open_read(fpath);
var json_string = "";

while (!file_text_eof(json_file))
{
    //Don't the next two commands do pretty much the same?
    json_string += file_text_readln(json_file);
}

file_text_close(json_file);
json_dict = json_decode(json_string);

var obj_list = json_dict[? "default"];

return obj_list;
