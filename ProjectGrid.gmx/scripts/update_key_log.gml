if argument0 = 1
{
    if ds_list_find_index(argument2,argument1) = - 1
        ds_list_add(argument2,argument1)
    else
    {
        ds_list_delete(argument2,ds_list_find_index(argument2,argument1))
        ds_list_add(argument2,argument1)
    }
}
else
{
    if ds_list_find_index(argument2,argument1) != - 1
        ds_list_delete(argument2,ds_list_find_index(argument2,argument1))
}