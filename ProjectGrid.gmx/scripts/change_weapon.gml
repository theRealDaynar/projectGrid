var wep_array
switch(argument0)
{
case 1:
    atk_speed = room_speed/2
    wep_array[0] = 1
    wep_array[1] = 1
    break;
case 2:
    atk_speed = room_speed*3/4
    wep_array[0] = 1
    wep_array[1] = 2
    break;
case 3:
    atk_speed = room_speed
    wep_array[0] = 2
    wep_array[1] = 1
    wep_array[2] = 2
    break;
}
return wep_array
