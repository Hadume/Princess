#> asset.lib:magic/spell/init/
#
# @within tag/function asset.lib:magic/spell/init

## 発動者のIDをコピー
    scoreboard players operation #ID temp = @s ID

## 魔法を初期化
    execute as @e[type=armor_stand,tag=spellInit] run function asset.lib:magic/spell/init/body/

## 表示用Entityを初期化
    execute if entity @e[type=block_display,tag=spellInit] run function asset.lib:magic/spell/init/display/

## 一時使用scoreHolderをリセット
    scoreboard players reset #ID temp
    scoreboard players reset #spellID temp
