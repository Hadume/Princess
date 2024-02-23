#> main:tick/
# 常時実行
# @within tag/function tick

## プレイヤーで常時実行
  execute as @a at @s run function main:tick/player
## 魔法常時実行
  execute as @e[type=armor_stand,tag=Spell] at @s run function asset.lib:magic/tick
