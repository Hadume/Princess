#> asset:magic/52201/tick/
# 
# @within function asset:magic/52201/cast/main
# @private

## 魔法で
  execute as @e[type=armor_stand,tag=Spell,scores={ID.Asset=52201}] run function asset.lib:magic/tick/
  execute as @e[type=armor_stand,tag=Spell,scores={ID.Asset=52201}] at @s run function asset:magic/52201/tick/main
## tick処理
  execute if entity @e[type=armor_stand,tag=Spell,scores={ID.Asset=52201}] run schedule function asset:magic/52201/tick/ 1t
