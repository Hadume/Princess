#> asset.lib:magic/type/modify_type_value/pierce
# pierceの数値を調整
# @within function asset.lib:magic/type/

## 数値を取得
    execute store result score #value temp run data get storage asset:magic pierce

## 調整
    scoreboard players operation #value temp += @s mgcPierce

## 保存
    execute store result storage asset:magic pierce int 1 run scoreboard players get #value temp
