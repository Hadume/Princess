#> asset.lib:magic/cast/
# 魔法を唱える
# @within function
#   player:offhand
#   main:advancements/shot_crossbow

#> ScoreHolder
# @private
 #declare score_holder #MP.Consume

## 個人ストレージを呼ぶ
  function data.player:please
## データを削除
  data remove storage asset:magic ID
## IDをコピー
  execute if data storage main: {ShotCrossbow:1b} unless predicate player:sneaking run function asset.lib:magic/cast/condition/click/
  execute if data storage main: {ShotCrossbow:1b} if predicate player:sneaking run function asset.lib:magic/cast/condition/click_s/
  execute if data storage main: {InventoryChanged:1b} unless predicate player:sneaking run function asset.lib:magic/cast/condition/offhand/
  execute if data storage main: {InventoryChanged:1b} if predicate player:sneaking run function asset.lib:magic/cast/condition/offhand_s/
## MPを減らす
  execute if data storage asset:magic {CanCast:1b} store result score #MP.Consume Temp run data get storage asset:magic MP
  execute if data storage asset:magic {CanCast:1b} run scoreboard players operation @s MP -= #MP.Consume Temp
  execute if data storage asset:magic {CanCast:1b} run function lib:status/mp/update
## Storageを削除
  data remove storage asset:magic CanCast
  data remove storage asset:magic Name
  data remove storage asset:magic MP
  data remove storage asset:magic CoolTime
  data remove storage asset:magic Multiple
  execute if data storage asset:magic Amount run data remove storage asset:magic Amount
  execute if data storage asset:magic Duration run data remove storage asset:magic Duration
  execute if data storage asset:magic Range run data remove storage asset:magic Range
  execute if data storage asset:magic Targets run data remove storage asset:magic Targets
  execute if data storage asset:magic Elements run data remove storage asset:magic Elements
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Magic.Multiple
  scoreboard players reset #MP.Consume
## tagを削除
  execute as @e[tag=Lib.InRange] run tag @s remove Lib.InRange
