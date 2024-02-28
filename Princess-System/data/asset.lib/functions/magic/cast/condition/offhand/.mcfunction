#> asset.lib:magic/cast/condition/offhand/
# 
# @within function asset.lib:magic/cast/

## クールタイム中だったら
  execute if score @s CT.Offhand matches 1.. run tellraw @s [{"text": "クールタイム中だよ。あと"},{"score":{"name": "@s","objective": "CT.Offhand"},"color": "green"},{"text": "tick待ってねっ"}]
## 魔法を発動
  execute unless score @s CT.Offhand matches 1.. run function asset.lib:magic/cast/condition/offhand/cast
