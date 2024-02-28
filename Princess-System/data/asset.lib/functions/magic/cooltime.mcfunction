#> asset.lib:magic/cooltime
# クールタイム
# @within function main:tick/player

## 
  execute if score @s CT.Click matches 1.. run scoreboard players remove @s CT.Click 1
  execute if score @s CT.ClickS matches 1.. run scoreboard players remove @s CT.ClickS 1
  execute if score @s CT.Offhand matches 1.. run scoreboard players remove @s CT.Offhand 1
  execute if score @s CT.OffhandS matches 1.. run scoreboard players remove @s CT.OffhandS 1
