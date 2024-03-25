#> lib:stats/speed
# 
# @public

## 個人ストレージ
  function data:please
## データをコピー
  data modify storage lib:temp Stats append from storage data: _.Armor[].tag.Stats[{Name:"Speed"}]
  data modify storage lib:temp Stats append from storage data: _.Mainhand.tag.Stats[{Name:"Speed"}]
## ステータスをコピー
  execute store result score #Amount Temp run data get storage data: _.Status.Speed.Base
## 追加効果があったら
  execute if data storage lib:temp Stats[] run function lib:stats/common/
## 1以上になるように
  execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
## ステータスを反映
  execute if entity @s[type=player] store result storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Amount int 1 run scoreboard players get #Amount Temp
  execute if entity @s[type=!player] store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Amount int 1 run scoreboard players get #Amount Temp
  function lib:status/speed/update
## 一時使用Storageを削除
  execute if data storage lib:temp Stats run data remove storage lib:temp Stats
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount
