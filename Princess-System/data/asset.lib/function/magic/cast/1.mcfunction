#> asset.lib:magic/cast/1
#
# @within function asset.lib:magic/cast/

## 数値をコピー
    $scoreboard players operation #ct temp = @s ct$(condition)
    $data modify storage asset:magic ID set from storage player: Mainhand.components."minecraft:custom_data".Magic[$(index)]

## 魔法を発動
    execute unless data storage asset:magic {ID:0} run function asset.lib:magic/cast/2

## クールタイムを設定
    $execute if data storage asset:magic cooltime store result score @s ct$(condition) run data get storage asset:magic cooltime

## 一時使用scoreHolderをリセット
    scoreboard players reset #ct temp
