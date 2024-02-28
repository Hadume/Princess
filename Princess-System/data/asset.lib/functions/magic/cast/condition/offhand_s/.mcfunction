#> asset.lib:magic/cast/condition/offhand_s/
# 
# @within function asset.lib:magic/cast/

## クールタイム中だったら
  execute if score @s CT.OffhandS matches 1.. run tellraw @s [{"text": "クールタイム中だよ。あと"},{"score":{"name": "@s","objective": "CT.OffhandS"},"color": "green"},{"text": "tick待ってねっ"}]
## クールタイムが終わっていたら
  execute unless score @s CT.OffhandS matches 1.. run function asset.lib:magic/cast/condition/offhand_s/cast
