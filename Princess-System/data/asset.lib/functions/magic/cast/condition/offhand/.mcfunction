#> asset.lib:magic/cast/condition/offhand/
# 
# @within function asset.lib:magic/cast/

## クールタイム中だったら
  execute if entity @s[scores={CT.Offhand=1..}] run tellraw @s [{"text": "クールタイム中だよ。あと"},{"score":{"name": "@s","objective": "CT.Offhand"},"color": "green"},{"text": "tick待ってねっ"}]
  execute if entity @s[scores={CT.Click=1..}] run playsound block.note_block.bass master @s
## 魔法を発動
  execute unless entity @s[scores={CT.Offhand=1..}] run function asset.lib:magic/cast/condition/offhand/cast
