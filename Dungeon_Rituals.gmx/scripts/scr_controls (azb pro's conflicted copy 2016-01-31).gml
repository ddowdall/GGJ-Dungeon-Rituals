moving = 0
movespd = 12

if keyboard_check(vk_left) || keyboard_check(ord("A"))
if !collision_circle(x-32,y,10,obj_wall,1,1)
{x-=movespd moving = 1 m = -1}
if keyboard_check(vk_right) || keyboard_check(ord("D"))
if !collision_circle(x+32,y,10,obj_wall,1,1)
{x+=movespd moving = 1 m = 1}
if keyboard_check(vk_up) || keyboard_check(ord("W"))
if !collision_circle(x,y-32,10,obj_wall,1,1)
{y-=movespd moving = 1}
if keyboard_check(vk_down) || keyboard_check(ord("S"))
if !collision_circle(x,y+32,10,obj_wall,1,1)
{y+=movespd moving = 1}

ok = 1
if joystick_xpos(1) > .2
if collision_circle(x+32,y,10,obj_wall,1,1)
ok = 0
if joystick_xpos(1) < .2
if collision_circle(x-32,y,10,obj_wall,1,1)
ok = 0
if ok
if abs(joystick_xpos(1)) > .2
{
x += joystick_xpos(1) * movespd
if joystick_xpos(1) > .2 m = 1 else m = -1
moving = 1
}

ok = 1
if joystick_ypos(1) > .2
if collision_circle(x,y+32,10,obj_wall,1,1)
ok = 0
if joystick_ypos(1) < .2
if collision_circle(x,y-32,10,obj_wall,1,1)
ok = 0

dir1 = point_direction(0,0,joystick_xpos(1),joystick_ypos(1))
x1 = x + lengthdir_x(32,dir1)
y1 = y + lengthdir_y(32,dir1)

ok = 1
if collision_circle(x1,y1,10,obj_wall,1,1)
ok = 0

if ok
if abs(joystick_ypos(1)) > .2
{
y += joystick_ypos(1) * movespd
moving = 1
}

if global.jpressed[0,1] || keyboard_check_pressed(vk_space) if z = 0
    {
    zspeed = 15
    audio_play_sound(snd_jumping,0,0)
    }

scr_gravity()
    
image_speed = moving / 5
if moving 
    {
    //draw_getpixel
    //if round(image_index) = 0 || round(image_index) = round(image_number/2)
    if canstep && z = 0
        {
        //,snd_walk_m2
        //snd_woodchip_step2,snd_woodchip_step3,snd_step_hard_floor,snd_woodchip_step3,
            audio_play_sound(choose(snd_walk,snd_walk_p1,snd_walk_p2,snd_walk_m2),0,0) //choose(snd_step1,snd_step2,snd_step3)
        canstep = 0
        alarm[1] = 10
        }
    }
else
    {
    image_index = 0
    }
/*
if collision_circle(x,y-32,10,obj_wall,1,1)
y+=1
