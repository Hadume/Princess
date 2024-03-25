#> asset.lib:magic/cast/condition/click_s/
# 
# @within function asset.lib:magic/cast/

## クールタイム中だったら
  execute if entity @s[scores={CT.ClickS=1..}] run tellraw @s [{"text": "クールタイム中だよ。あと"},{"score":{"name": "@s","objective": "CT.ClickS"},"color": "green"},{"text": "tick待ってねっ"}]
## 魔法を発動
  execute unless entity @s[scores={CT.ClickS=1..}] run function asset.lib:magic/cast/condition/click_s/cast
