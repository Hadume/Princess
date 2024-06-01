#> asset.lib:magic/cast/spell/
# 魔法を初期化
# @within function asset.lib:magic/cast/check.condition

## 実行者tagを追加
  tag @s add This
## 魔法で初期化
  execute as @e[type=armor_stand,tag=Spell.Init] at @s run function asset.lib:magic/cast/spell/init
## 実行者tagを削除
  tag @s remove This
