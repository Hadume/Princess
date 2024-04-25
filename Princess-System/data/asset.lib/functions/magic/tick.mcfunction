#> asset.lib:magic/tick
# 魔法で常時実行
# @within function main:tick/

## 持続時間
  scoreboard players remove @s Mgc.Duration 1
## 魔法を消す
  execute if entity @s[scores={Mgc.Duration=..0}] run kill @s
## 
  execute if entity @s[scores={Mgc.Duration=1..}] store result storage asset:magic ID int 1 run scoreboard players get @s ID.Asset
  execute if entity @s[scores={Mgc.Duration=1..}] run function #asset:magic/tick
