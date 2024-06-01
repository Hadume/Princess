#> asset:magic/52501/tick/main
# 
# @within tag/function asset:magic/tick/

## スコア
  execute as @e[scores={TimeLock=1..}] run scoreboard players remove @s TimeLock 1
  execute as @e[scores={TimeLock=..0}] run data modify entity @s NoAI set value 0b
