if !ds_exists(grid_map,ds_type_grid)
    grid_map = ds_grid_create(16,10)
for( var yy=0;yy<10;yy++)
{
    for( var xx=0;xx<16;xx++)
    {
        var t = tile_layer_find(1000000,xx * 64,yy * 64)
        if tile_exists(t) and tile_get_background(t) = bg_wall
            ds_grid_set(grid_map,xx,yy,-1)
        else
            ds_grid_set(grid_map,xx,yy,0) 
    }
}