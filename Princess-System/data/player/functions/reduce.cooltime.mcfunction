#> player:reduce.cooltime
# クールタイム進行
# @within function main:tick/player

## 
  execute if entity @s[scores={CT.Click=1..}] run scoreboard players remove @s CT.Click 1
  execute if entity @s[scores={CT.ClickS=1..}] run scoreboard players remove @s CT.ClickS 1
  execute if entity @s[scores={CT.Offhand=1..}] run scoreboard players remove @s CT.Offhand 1
  execute if entity @s[scores={CT.OffhandS=1..}] run scoreboard players remove @s CT.OffhandS 1
