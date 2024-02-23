#> asset.lib:magic/tick
# 魔法で常時実行
# @within function main:tick/

## 持続時間
  scoreboard players remove @s Duration 1
## 魔法を消す
  execute if entity @s[scores={Duration=..0}] run kill @s
## 
  execute if entity @s[scores={Duration=1..}] run function #asset:magic/tick
