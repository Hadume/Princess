#> asset.lib:magic/cast/spell/main
# 魔法を初期化
# @within function asset.lib:magic/cast/spell/check.condition

## 発動者のIDを保存
  execute store result storage asset:temp CasterID int 1 run scoreboard players get @s PlayerID
## 魔法の向きを変更
  execute as @e[type=armor_stand,tag=Spell.Init] positioned as @s run tp @s ~ ~ ~ ~ ~
## 魔法で初期化
  execute as @e[type=armor_stand,tag=Spell.Init] at @s run function asset.lib:magic/cast/spell/init
## 一時使用Storageを削除
  data remove storage asset:temp CasterID
