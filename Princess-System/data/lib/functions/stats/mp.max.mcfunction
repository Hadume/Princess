#> lib:stats/mp.max
# 
# @public

## 個人ストレージ
  function data:please
## データをコピー
  data modify storage lib:temp Stats append from storage data: _.Armor[].tag.Stats[{Name:"MP.Max"}]
  data modify storage lib:temp Stats append from storage data: _.Mainhand.tag.Stats[{Name:"MP.Max"}]
## ステータスをコピー
  execute store result score #Amount Temp run data get storage data: _.Status.MP.MaxBase
## 追加効果があったら
  execute if data storage lib:temp Stats[] run function lib:stats/common/
## 1以上になるように
  execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
## ステータスを反映
  scoreboard players operation @s MP.Max = #Amount Temp
  execute if score @s MP < @s MP.Max run function lib:status/mp/update
## 一時使用Storageを削除
  execute if data storage lib:temp Stats run data remove storage lib:temp Stats
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount
