#> asset.lib:magic/cast/condition/offhand_s/
# 
# @within function asset.lib:magic/cast/

## クールタイム中だったら
  execute if entity @s[scores={CT.OffhandS=1..}] run tellraw @s [{"text": "クールタイム中だよ。あと"},{"score":{"name": "@s","objective": "CT.OffhandS"},"color": "green"},{"text": "tick待ってねっ"}]
  execute if entity @s[scores={CT.Click=1..}] run playsound block.note_block.bass master @s
## クールタイムが終わっていたら
  execute unless entity @s[scores={CT.OffhandS=1..}] run function asset.lib:magic/cast/condition/offhand_s/cast
