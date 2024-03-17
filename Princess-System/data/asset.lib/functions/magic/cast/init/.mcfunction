#> asset.lib:magic/cast/init/
# 魔法を初期化
# @within function asset:magic/*/cast/main

## 実行者tagを追加
  tag @s add This
## 魔法で初期化
  execute as @e[type=armor_stand,tag=Spell.Init] at @s run function asset.lib:magic/cast/init/spell
## MPを減らす
  scoreboard players operation @s MP -= #MagicMP Asset
  function lib:status/mp/update
## 魔法名を叫ぶ
  tellraw @a[distance=..8] [{"storage":"asset:","nbt":"Magic.Name","interpret": true,"bold": true},{"text": "ッ!"}]
## 実行者tagを削除
  tag @s remove This
