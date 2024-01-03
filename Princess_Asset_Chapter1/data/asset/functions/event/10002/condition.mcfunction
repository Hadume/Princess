#> asset:event/10002/condition
# 
# @within function asset:event/10002/

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## 
  data modify storage asset.temp: TalkedCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10002}]
## 話し
  execute unless data storage asset.temp: {TalkedCopy:{Event:2b}} run function asset:event/10002/contents/1
  #execute if data storage asset.temp: {TalkedCopy:{Event:2b}} run function asset:event/10002/contents/1
## イベント
  scoreboard players set @s Event 10002
