if oHero.parry = true
{
    event_user(1)
    if oHero.hat = 3
    with(oHero)
    {
        if ds_grid_get(grid_map,x/64+1,y/64) = 0
            with(instance_create(x+64,y,oMoney))
                speed = 64/turn_speed
        if ds_grid_get(grid_map,x/64,y/64+1) = 0
            with(instance_create(x,y+64,oMoney))
            {
                direction = 270
                speed = 64/turn_speed
            }
        if ds_grid_get(grid_map,x/64,y/64-1) = 0
            with(instance_create(x,y-64,oMoney))
            {
                direction = 90
                speed = 64/turn_speed
            }
        if ds_grid_get(grid_map,x/64-1,y/64) = 0
            with(instance_create(x-64,y,oMoney))
            {
                direction = 180
                speed = 64/turn_speed
            }
        if ds_grid_get(grid_map,x/64+1,y/64-1) = 0
            with(instance_create(x+64,y-64,oMoney))
            {
                direction = 45
                speed = 64/turn_speed
            }
        if ds_grid_get(grid_map,x/64-1,y/64-1) = 0
            with(instance_create(x-64,y-64,oMoney))
            {
                direction = 135
                speed = 64/turn_speed
            }
        if ds_grid_get(grid_map,x/64-1,y/64+1) = 0
            with(instance_create(x-64,y+64,oMoney))
            {
                direction = 225
                speed = 64/turn_speed
            }
        if ds_grid_get(grid_map,x/64+1,y/64+1) = 0
            with(instance_create(x+64,y+64,oMoney))
            {
                direction = 315
                speed = 64/turn_speed
            }
    }
    return 0
}
else
    oHero.hp--
return 1
