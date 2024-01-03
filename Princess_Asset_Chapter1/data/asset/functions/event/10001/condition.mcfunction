#> asset:event/10001/condition
# 確認
# @within function asset:event/10001/

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## 
  data modify storage asset.temp: TalkedCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10001}]
## 
  execute unless data storage asset.temp: {TalkedCopy:{Event:2b}} run function asset:event/10001/event
  #execute if data storage asset.temp: {TalkedCopy:{Event:2b}}
## イベント
  scoreboard players set @s Event 10001
