#> asset.lib:magic/cast/condition/click/
# 
# @within function asset.lib:magic/cast/

## クールタイム中だったら
  execute if score @s CT.Click matches 1.. run tellraw @s [{"text": "クールタイム中だよ。あと"},{"score":{"name": "@s","objective": "CT.Click"},"color": "green"},{"text": "tick待ってねっ"}]
## 魔法を発動
  execute unless score @s CT.Click matches 1.. run function asset.lib:magic/cast/condition/click/cast
