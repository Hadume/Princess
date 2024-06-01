#> asset.lib:magic/action/
# 
# @within function
#   asset:magic/*/tick/*
#   asset.lib:magic/cast/action
# @input
#   storage asset:temp Magic

## 魔法情報を取得
  execute if entity @s[tag=Spell] run function data.entity:please
  execute if entity @s[tag=Spell] run data modify storage asset:temp Magic set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic
## 各数値取得
  ## 範囲
    execute store result score #Range Lib run data get storage asset:temp Magic.Range 1000
  ## 貫通数
    execute if data storage asset:temp Magic.Pierce store result score #Pierce Lib run data get storage asset:temp Magic.Pierce
    execute unless data storage asset:temp Magic.Pierce run scoreboard players set #Pierce Lib 2147483647
  ## 対象
    data modify storage lib: Range.Target set from storage asset:temp Magic.Target
## 範囲内のMOBを特定
  function lib:range/
## 貫通数
  execute if entity @s[tag=Spell] if score #Pierce Lib matches 1.. store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Pierce int 1 run scoreboard players get #Pierce Lib
## 一時使用Storageを削除
  data remove storage asset:temp Magic
