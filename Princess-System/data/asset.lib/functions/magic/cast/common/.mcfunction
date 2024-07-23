#> asset.lib:magic/cast/common/
#
# @within asset:magic/*/cast/check.condition

#> ScoreHolder
# @private
# @within function asset.lib:magic/cast/common/**
 #declare score_holder #Value
 #declare score_holder #MP.Consume
#> MP取得用
# @private
 #declare score_holder #MP.Need
 #declare score_holder #MP.Copy

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
## MPを消費
  ### データをコピー
    execute store result score #MP.Need Temp run data get storage asset:magic MP
    scoreboard players operation #MP.Copy Temp = @s MP
  ###
    execute if score #MP.Copy Temp >= #MP.Need Temp run function asset.lib:magic/cast/common/consume.mp
  ### 足りなかった通知
    execute unless score #MP.Copy Temp >= #MP.Need Temp run tellraw @s {"text": "MPが足りないにゃん♡","color": "red"}
    execute unless score #MP.Copy Temp >= #MP.Need Temp run playsound block.note_block.bass master @s
## Storageを削除
  data remove storage asset:magic Raw
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Value
  scoreboard players reset #MP.Consume
  scoreboard players reset #MP.Need
  scoreboard players reset #MP.Copy
