if argument0 = 1
{
    if ds_list_find_index(key_log,argument1) = - 1
        ds_list_add(key_log,argument1)
    else
    {
        ds_list_delete(key_log,ds_list_find_index(key_log,argument1))
        ds_list_add(key_log,argument1)
    }
}
else
{
    if ds_list_find_index(key_log,argument1) != - 1
        ds_list_delete(key_log,ds_list_find_index(key_log,argument1))
}
