#> asset:event/10003/condition
# 
# @within function asset:event/10003/

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## 
  data modify storage asset.temp: TalkedCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10003}]
## 
  execute unless data storage asset.temp: {TalkedCopy:{Event:2b}} unless score @s Event.Timer = @s Event.Timer if entity @s[x=171,y=81,z=-21,dx=0,dy=1,dz=0] run function asset:event/10003/contents/1
## イベント
  scoreboard players set @s Event 10003
