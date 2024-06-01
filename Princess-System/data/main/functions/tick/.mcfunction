#> main:tick/
# 常時実行
# @within tag/function tick

## スポナー
  execute as @e[type=marker,tag=Spawner] at @s run function asset.lib:spawner/tick/
## 魔法常時実行
  execute as @e[type=armor_stand,tag=Spell] at @s run function asset.lib:magic/tick/spell/
## 魔法
  function #asset:magic/tick/
## プレイヤーで常時実行
  execute as @a at @s run function main:tick/player
## MOBで常時実行
  execute as @e[tag=Enemy] at @s run function mob:tick
## ダメージ表示
  execute as @e[type=item,tag=Lib.Damage] run function lib:damage/tick
