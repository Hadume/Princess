#> asset:event/10001/process/condition
# 
# @within function asset:event/10001/process/

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## データをコピー
  data modify storage asset.temp: TalkedCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10001}]
## 
  execute if data storage asset.temp: {TalkedCopy:{Event:1b}} run function asset:event/10001/process/success
  execute if data storage asset.temp: {TalkedCopy:{Event:11b}} run function asset:event/10001/process/failure
  #execute if data storage asset.temp: {Talked:{Event:2b}}
