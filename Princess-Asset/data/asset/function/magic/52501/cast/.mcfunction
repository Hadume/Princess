#> asset:magic/52501/cast/
# 魔法を発動
# @within function asset:magic/cast

## 範囲内のMobを特定
    function #asset.lib:magic/action/range/

##
    execute as @e[tag=Lib.InRange] store result score @s TimeLock run data get storage asset:magic Duration
    execute as @e[tag=Lib.InRange] run data modify entity @s NoAI set value 1b

## tick処理
    schedule function asset:magic/52501/tick/ 1t

## 音を鳴らす
    playsound block.chain.place master @a
    playsound block.chain.break master @a ~ ~ ~ 0.25 0.5
