#> asset:magic/52102/tick/
# 
# @within function asset:magic/52102/cast/main
# @private

## 魔法で
  execute as @e[type=armor_stand,tag=Spell,scores={ID.Asset=52102}] run function asset.lib:magic/tick/
  execute as @e[type=armor_stand,tag=Spell,scores={ID.Asset=52102}] at @s run function asset:magic/52102/tick/main
## tick処理
  execute if entity @e[type=armor_stand,tag=Spell,scores={ID.Asset=52102}] run schedule function asset:magic/52102/tick/ 1t
