//scr_talk_check(greeting sound effect)
if obj_player.talking=-1
if obj_player.sl=1
if point_distance(x,y,obj_player.x,obj_player.y)<74 //158
    {
    infobox_centered('Press <E> to#talk to '+name,x,y-96)
    if global.interact 
    //or mouse_check_button_pressed(1) and point_distance(mouse_x,mouse_y,x,y)<32
        {
        sound_play(argument0)
        obj_player.talking=id
        obj_player.speed=0
        obj_player.target_x=0
        if obj_player.x<x m=-1 else m=1
        }
    }
