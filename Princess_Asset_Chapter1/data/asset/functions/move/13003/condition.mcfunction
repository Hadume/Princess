#> asset:move/13003/condition
# 
# @within function asset:move/13003/

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## データをコピー
  data modify storage asset.temp: Door.Unlocked set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UnlockedDoor
## 範囲内にいるか
  execute if entity @s[x=178,y=81,z=-47,dx=0,dy=1,dz=0] store success storage asset.temp: Door.Front byte 1 run data modify storage asset.temp: Door.In set value 1b
  execute if entity @s[x=178,y=81,z=-45,dx=0,dy=1,dz=0] store success storage asset.temp: Door.Front byte 1 run data modify storage asset.temp: Door.Out set value 1b
## 鍵を開けてなかったら
  execute unless data storage asset.temp: {Door:{Unlocked:[13003]}} run function asset:move/13003/open/
## 中に入る
  execute if data storage asset.temp: {Door:{Unlocked:[13003],In:1b}} run function asset:move/13003/in
  execute if data storage asset.temp: {Door:{Unlocked:[13003],Out:1b}} run function asset:move/13003/out
