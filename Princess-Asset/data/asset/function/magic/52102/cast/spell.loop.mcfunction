#> asset:magic/52102/cast/spell.loop
# 魔法の本体
# @within function asset:magic/52102/cast/
# @private

## 発動数が0以下なら終了
    execute if score #multiple temp matches 0.. run return 1

## 召喚位置
    data modify storage lib:spread input.amount set from storage asset:magic spread
    data modify storage lib:spread input.onGround set value 1b
    summon marker ~ ~ ~ {Tags:["spread"]}
    execute as @e[type=marker,tag=spread] at @s run function #lib:spread

## 本体
    execute as @e[type=marker,tag=spread] at @s unless block ~ ~-0.001 ~ #main:no_collision run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["spell","spellInit"]}

## 初期化
    execute if entity @e[type=armor_stand,tag=spellInit] run function #asset.lib:magic/cast/spell

## 仮markerを消す
    kill @e[type=marker,tag=spread]

## 発動数を減らす
    scoreboard players remove #multiple temp 1

## まだ発動する
    function asset:magic/52102/cast/spell.loop
