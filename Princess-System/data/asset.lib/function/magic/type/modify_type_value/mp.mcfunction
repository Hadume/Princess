#> asset.lib:magic/type/modify_type_value/mp
# mpの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic mp

## 調整
    scoreboard players operation #value temp -= @s mgcMp

## 0を下回ったら
    execute if score #value temp matches ..-1 run scoreboard players set #value temp 0

## 保存
    execute store result storage asset:magic mp int 1 run scoreboard players get #value temp
