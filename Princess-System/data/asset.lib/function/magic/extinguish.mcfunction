#> asset.lib:magic/extinguish
# 魔法を消す
# @input as entity
# @within function
#   asset.lib:magic/tick/
#   asset.lib:magic/action/range/spell/

## IDをコピー
    scoreboard players operation #ID temp = @s ID

## 自分と同じIDのblock_displayを消す
    execute as @e[type=block_display,tag=spellDisplay] if score @s ID = #ID temp run kill @s

##
    kill @s

## 一時使用scoreHolderをリセット
    scoreboard players reset #ID temp
