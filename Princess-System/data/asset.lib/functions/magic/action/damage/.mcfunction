#> asset.lib:magic/action/damage/
# 
# @within asset:magic/*/*/**

## 魔法データをコピー
  execute if entity @s[tag=Spell] run function data.entity:please
  execute if entity @s[tag=Spell] run data modify storage asset:temp Magic set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic
## 攻撃力
  execute store result score #Lib.ATK Lib run data get storage asset:temp Magic.Amount
## 
  tag @s add This
  execute as @e[tag=Lib.InRange] at @s run function asset.lib:magic/action/damage/entity
  tag @s remove This
## パーティクル表示
  execute if data storage asset:temp {Magic:{Element:"Flamme"}} as @e[tag=Lib.InRange] at @s run particle dust 0.75 0.25 0.25 1 ~ ~1 ~ 0.25 0.5 0.25 0 25
  execute if data storage asset:temp {Magic:{Element:"Wasser"}} as @e[tag=Lib.InRange] at @s run particle dust 0.5 0.5 0.9 1 ~ ~1 ~ 0.25 0.5 0.25 0 25
## 一時使用Storageを削除
  data remove storage asset:temp Magic
