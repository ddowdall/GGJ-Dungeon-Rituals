
   sl = 0
   draw_set_color(c_black) 
   draw_set_alpha(1)
   draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+view_wview[0],view_yview[0]+96,0)
   draw_rectangle(view_xview[0],view_yview[0]+view_hview[0]-128,view_xview[0]+view_wview[0],view_yview[0]+view_hview[0],0)
   draw_set_color(c_yellow) 
   draw_set_halign(fa_center) 
   draw_set_valign(fa_center)
   if dialogue_draw_pos < string_length(dialogue_text) 
       dialogue_draw_pos += 1
   scr_paragraph(string_copy(dialogue_text,1,dialogue_draw_pos),view_xview[0]+view_wview[0]/2,view_yview[0]+48,view_wview[0]-128,c_yellow)
   //draw_text(view_xview[0]+view_wview[0]/2,view_yview[0]+48,dialogue)
   draw_set_color(c_white)
   
   for(i=0 ; i < replies ; i++)
       {
       if reply[i]>''
       if button_tab(spr_chat_button,view_xview[0]+32,view_yview[0]+view_hview[0]-120+52*i,view_wview[0]-64,48,reply[i],-1,0,'',reply_selected,i)
          {
          response = i
          dialogue_draw_pos = 0
          }
       }
       
/*
   if reply2>''
   if button(spr_chat_button,view_xview[0]+view_wview[0]/2-768/2,view_yview[0]+view_hview[0]-120+28,768,28,reply2,-1,0,'')
      {
      reply=2 dialogue_pos=0
      }
   if reply3>''
   if button(spr_chat_button,view_xview[0]+view_wview[0]/2-768/2,view_yview[0]+view_hview[0]-120+28*2,768,28,reply3,-1,0,'')
      {
      reply=3 dialogue_pos=0
      }
   if reply4>''
   if button(spr_chat_button,view_xview[0]+view_wview[0]/2-768/2,view_yview[0]+view_hview[0]-120+28*3,768,28,reply4,-1,0,'')
      {
      reply=4 dialogue_pos=0
      }
   */

