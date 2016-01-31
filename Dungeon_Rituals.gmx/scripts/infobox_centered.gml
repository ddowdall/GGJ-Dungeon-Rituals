///infobox_centered(text,x,y)

width = string_width(argument0)+16
height = string_height(argument0)+12
draw_set_alpha(.6)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_rectangle(argument1-width/2,argument2-height/2,argument1+8+width/2,argument2+height/2,0)
draw_set_color(c_black)
draw_rectangle(argument1-width/2,argument2-height/2,argument1+8+width/2,argument2+height/2,1)
draw_set_color(c_yellow)
draw_set_alpha(1)
draw_text(argument1,argument2,argument0)

