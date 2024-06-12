#> main:tick/
# 常時実行
# @within tag/function tick

## スポナー
  execute as @e[type=marker,tag=Spawner] at @s run function asset.lib:spawner/tick/
## プレイヤーで常時実行
  execute as @a at @s run function main:tick/player
## MOBで常時実行
  execute as @e[tag=Enemy] at @s run function mob:tick
## tagを削除する
  execute as @e[tag=Lib.InRange] run tag @s remove Lib.InRange
