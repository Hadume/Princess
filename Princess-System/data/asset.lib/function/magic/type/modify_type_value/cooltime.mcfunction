#> asset.lib:magic/type/modify_type_value/cooltime
# cooltimeの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic cooltime

## 調整
    scoreboard players operation #value temp -= @s mgcCooltime

## 0を下回ったら
    execute if score #value temp matches ..-1 run scoreboard players set #value temp 0

## 保存
    execute store result storage asset:magic cooltime int 1 run scoreboard players get #value temp
