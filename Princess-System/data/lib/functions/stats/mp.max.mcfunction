#> lib:stats/mp.max
# 最大魔力
# @public

## 個人ストレージ
  function data:please
## ステータスをコピー
  scoreboard players operation #Amount Temp = @s MP.Max.Base
## データをコピー
  data modify storage lib:temp Stats append from storage data: _.Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"MP.Max"}]
  data modify storage lib:temp Stats append from storage data: _.Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"MP.Max"}]
## 
  execute if data storage lib:temp Stats[] run function lib:stats/common/
## ステータスを反映
  execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
  scoreboard players operation @s MP.Max = #Amount Temp
## 更新
  function lib:status/mp/update
## 一時使用Storageを削除
  execute if data storage lib:temp Stats run data remove storage lib:temp Stats
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount
