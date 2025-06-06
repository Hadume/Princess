#> asset.lib:magic/cast/spell/main
# 魔法を初期化
# @within function asset.lib:magic/cast/spell/

## 魔法を初期化
    execute as @e[type=armor_stand,tag=Spell.Init] run function asset.lib:magic/cast/spell/init/

## 表示用Entityを初期化
    execute if entity @e[type=block_display,tag=Spell.Init] run function asset.lib:magic/cast/spell/display/

## 一時使用ScoreHolderをリセット
    scoreboard players reset #ID Temp
    scoreboard players reset #SpellID Temp
