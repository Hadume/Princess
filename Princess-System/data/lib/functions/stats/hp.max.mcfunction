#> lib:stats/hp.max
# 最大体力
# @public

## 個人ストレージ
  function data.player:please
## データをコピー
  data modify storage lib:temp Stats append from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Armor[].tag.Stats[{Name:"HP.Max"}]
  data modify storage lib:temp Stats append from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Mainhand.tag.Stats[{Name:"HP.Max"}]
## ステータスをコピー
  execute store result score #Amount Temp run data get storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.HP.MaxBase
## 追加効果があったら
  execute if data storage lib:temp Stats[] run function lib:stats/common/
## 1以上になるように
  execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
## ステータスを反映
  scoreboard players operation @s HP.Max = #Amount Temp
  execute if score @s HP < @s HP.Max run function lib:status/hp/update
## 一時使用Storageを削除
  data remove storage lib:temp Stats
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount
