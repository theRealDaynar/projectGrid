///item_info(item number)
/*
a[0] name
a[1] sprite
*/
var a
switch(argument0)
{
    case 0:
        a[0] = "Knife"
        a[1] = sAttackPossibility
    break;        
    case 1:
        a[0] = "Spear"
        a[1] = sAttackPossibility
    break;
    case 2:
        a[0] = "Claymore"
        a[1] = sAttackPossibility
    break;
    case 3:
        a[0] = "Katana"
        a[1] = sAttackPossibility
    break;
    case 4:
        a[0] = "Wakizashi"
        a[1] = sAttackPossibility
    case 5:
        a[0] = "Daisho"
        a[1] = sAttackPossibility
    case 6:
        a[0] = "Yaelschwert"
        a[1] = sAttackPossibility
    break;
    default:
        a[0] = "ITEM"
        a[1] = sAttackPossibility
}
return a
