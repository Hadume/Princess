#> lib:stats/speed
# 
# @public

## 個人ストレージ
  function data.player:please
## データをコピー
  data modify storage lib:temp Stats append from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Armor[].tag.Stats[{Name:"Speed"}]
  data modify storage lib:temp Stats append from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Mainhand.tag.Stats[{Name:"Speed"}]
## ステータスをコピー
  execute store result score #Amount Temp run data get storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Base
## 追加効果があったら
  execute if data storage lib:temp Stats[] run function lib:stats/common/
## 1以上になるように
  execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
## ステータスを反映
  execute store result storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Amount int 1 run scoreboard players get #Amount Temp
  function lib:status/speed/update
## 一時使用Storageを削除
  execute if data storage lib:temp Stats run data remove storage lib:temp Stats
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount
