///change_weapon(weapon number)
var wep_array
switch(argument0)
{
case 1:
    atk_speed = room_speed/2
    atk_num = 2
    wep_array[0,0] = 1
    wep_array[0,1] = 0
    wep_array[1,0] = -2.1
    wep_array[1,1] = atk_speed/4
    break;
case 2:
    atk_speed = room_speed*3/4
    atk_num = 1
    wep_array[0,0] = 2
    wep_array[0,1] = 0
    break;
case 3:
    atk_speed = room_speed
    atk_num = 2
    wep_array[0,0] = 1
    wep_array[0,1] = 0
    wep_array[1,0] = 2
    wep_array[1,1] = 0
    break;
}
return wep_array
