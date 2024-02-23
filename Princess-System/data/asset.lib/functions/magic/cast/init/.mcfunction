#> asset.lib:magic/cast/init/
# 魔法を初期化
# @within function asset:magic/*/cast/main

## 実行者tagを追加
  tag @s add This
## 魔法で初期化
  execute as @e[type=armor_stand,tag=Spell.Init] at @s run function asset.lib:magic/cast/init/spell
## クールタイムを設定
  execute if entity @s[scores={Used.COAS=1..},predicate=!player:sneaking] store result score @s CT.Click run data get storage asset: Magic.CoolTime
  execute if entity @s[scores={Used.COAS=1..},predicate=player:sneaking] store result score @s CT.ClickS run data get storage asset: Magic.CoolTime
  execute if entity @s[advancements={main:inventory_changed=true},predicate=!player:sneaking] store result score @s CT.Offhand run data get storage asset: Magic.CoolTime
  execute if entity @s[advancements={main:inventory_changed=true},predicate=player:sneaking] store result score @s CT.OffhandS run data get storage asset: Magic.CoolTime
## 実行者tagを削除
  tag @s remove This
## 一時使用Storageを削除
  data remove storage asset: Magic
