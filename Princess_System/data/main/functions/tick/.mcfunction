#> main:tick/
# 常時実行
# @within tag/function tick

#> ScoreHolder
# @private
 #declare score_holder $Interval.4
## プレイヤーで常時実行
  execute as @a at @s run function player:tick
## 4tickごとに
  scoreboard players add $Interval.4 Global 1
  scoreboard players operation $Interval.4 Global %= $4 Const
  execute if score $Interval.4 Global matches 0 run function main:tick/interval.4
## 種を植えられるようにする
  #execute if data block 176 65 183 {Items:[{Slot:4b,id:"wheat_seeds",Count:64b}]}
  #execute if block 176 65 183 dispenser{Items:[{Slot:4b,id:"minecraft:wheat_seeds",Count:64b}]} run function princess:wheat
  #execute if block 176 65 183 dispenser{Items:[{Slot:4b,id:"minecraft:potato",Count:64b}]} run function princess:potato
  #execute if block 176 65 183 dispenser{Items:[{Slot:4b,id:"minecraft:carrot",Count:64b}]} run function princess:carrot
