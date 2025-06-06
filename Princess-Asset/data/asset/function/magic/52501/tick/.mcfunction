#> asset:magic/52501/tick/
#
# @within function asset:magic/tick
# @private

## スコア
    execute as @e[scores={TimeLock=1..}] run scoreboard players remove @s TimeLock 1
    execute as @e[scores={TimeLock=..0}] run data modify entity @s NoAI set value 0b

## tick処理
    execute if entity @e[scores={TimeLock=1..}] run schedule function asset:magic/52501/tick/ 1t
