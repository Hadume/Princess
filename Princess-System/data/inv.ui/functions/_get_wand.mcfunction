#> inv.ui:_get_wand
# デバッグ用のワンドを取得 
# @user
data modify storage asset:item ID set value -54007
function #asset:item/create
loot spawn ~ ~ ~ mine 0 -64 0 minecraft:debug_stick
data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.Magic set value [0, 0, 0, 0]
