#> asset.lib:magic/tick/spell/
# 魔法で常時実行
# @within function main:tick/

## 持続時間
  scoreboard players remove @s Mgc.Duration 1
## 魔法を消す
  execute if entity @s[scores={Mgc.Duration=..0}] run kill @s
## 
  execute if entity @s[scores={Mgc.Duration=1..}] store result storage asset:magic ID int 1 run scoreboard players get @s ID.Asset
  execute if entity @s[scores={Mgc.Duration=1..}] run function #asset:magic/tick/spell
## tagを削除
  execute as @e[tag=Lib.InRange] run tag @s remove Lib.InRange
  execute if score #Pierce Lib matches ..0 run kill @s
