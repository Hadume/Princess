#> asset.lib:magic/cast/common/
#
# @within asset:magic/*/cast/main

#> ScoreHolder
# @private
# @within function asset.lib:magic/cast/common/modify_type_value/*
 #declare score_holder #Value
 #declare score_holder #MP.Consume

## データを移行
  ### タイプの各数値を調整
    function asset.lib:magic/cast/common/modify_type_value/mp
    function asset.lib:magic/cast/common/modify_type_value/amount
    function asset.lib:magic/cast/common/modify_type_value/cooltime
    function asset.lib:magic/cast/common/modify_type_value/range
    execute if data storage asset:magic Raw.Multiple run function asset.lib:magic/cast/common/modify_type_value/multiple
    execute if data storage asset:magic Raw.Pierce run function asset.lib:magic/cast/common/modify_type_value/pierce
    execute if data storage asset:magic Raw.Duration run function asset.lib:magic/cast/common/modify_type_value/duration
    execute if data storage asset:magic Raw.Spread run function asset.lib:magic/cast/common/modify_type_value/spread
    execute if data storage asset:magic Raw.Speed run function asset.lib:magic/cast/common/modify_type_value/speed
  ### misc
    data modify storage asset:magic Name set from storage asset:magic Raw.Name
    execute if data storage asset:magic Raw.Targets run data modify storage asset:magic Targets set from storage asset:magic Raw.Targets
    execute if data storage asset:magic Raw.Elements run data modify storage asset:magic Elements set from storage asset:magic Raw.Elements
## MPを減らす
  execute store result score #MP.Consume Temp run data get storage asset:magic MP
  scoreboard players operation @s MP -= #MP.Consume Temp
  function lib:status/mp/update
## Storageを削除
  data remove storage asset:magic Raw
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Value
  scoreboard players reset #MP.Consume
