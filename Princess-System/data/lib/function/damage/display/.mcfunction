#> lib:damage/display/
# ダメージ表示
# @within function lib:damage/

## 表示を拡散
    data modify storage lib:spread {} set value {amount:[0.1d,0.2d]}
    function #lib:spread

## NBTを変更
    data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"
    data modify entity @s CustomNameVisible set value 1b
    data modify entity @s PickupDelay set value 32767s
    data modify entity @s Age set value -32768s
    data modify entity @s Invulnerable set value 1b
    data modify entity @s Item.components."minecraft:item_model" set value "air"

## tagを追加
    tag @s add libDamage

## 消えるまでのカウント
    schedule function lib:damage/display/schedule.loop/ 1t

## 初期化tagを削除
    data remove entity @s Item.components."minecraft:custom_data".lib.new
