///spawn_enemey_rand(object,number to spawn)
repeat(argument1)
{
    randomize()
    repeat(10)
    {
        var xx = irandom(13)+1
        var yy = irandom(3)+1
        if ds_grid_get(grid_map,xx,yy) = 0 
        {
            instance_create(xx*64,yy*64,argument0)
            break;
        }
    }
}
