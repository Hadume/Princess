#> asset.lib:magic/action/damage/main
# ダメージを与える
# @within function asset.lib:magic/action/damage/

#> scoreHolder
# @within function asset.lib:magic/action/damage/*
    #declare score_holder #storedDamage

## 攻撃者のIDを保存
    execute unless data storage asset:magic CasterID store result storage asset:magic CasterID int 1 run scoreboard players get @s ID

##
    tag @s add this
    execute at @s as @e[tag=libInrange] run function asset.lib:magic/action/damage/entity
    tag @s remove this

## 保存されたダメージ
    execute store result storage asset:magic storedDamage int 1 run scoreboard players get #storedDamage temp

## パーティクル表示
    execute if data storage asset:magic {Elements:["Flamme"]} as @e[tag=libInrange] at @s run particle dust{color:[0.75,0.25,0.25], scale:1.0} ~ ~1 ~ 0.25 0.5 0.25 0 25 force
    execute if data storage asset:magic {Elements:["Wasser"]} as @e[tag=libInrange] at @s run particle dust{color:[0.5,0.5,0.9], scale:1.0} ~ ~1 ~ 0.25 0.5 0.25 0 25 force
    execute if data storage asset:magic {Elements:["Wind"]} as @e[tag=libInrange] at @s run particle dust{color:[0.5,0.9,0.5], scale:1.0} ~ ~1 ~ 0.25 0.5 0.25 0 25 force
    execute if data storage asset:magic {Elements:["Licht"]} as @e[tag=libInrange] at @s run particle dust{color:[1.0,1.0,0.0], scale:1.0} ~ ~1 ~ 0.25 0.5 0.25 0 25 force
    execute if data storage asset:magic {Elements:["Dunkel"]} as @e[tag=libInrange] at @s run particle dust{color:[0.25,0.25,0.25], scale:1.0} ~ ~1 ~ 0.25 0.5 0.25 0 25 force

## 一時使用scoreHolderをリセット
    scoreboard players reset #storedDamage temp
