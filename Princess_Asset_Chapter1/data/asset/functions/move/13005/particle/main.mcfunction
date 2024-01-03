#> asset:move/13005/particle/main
# 
# @within function asset:move/13005/particle/

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## データをコピー
  data modify storage asset.temp: UnlockedDoor set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UnlockedDoor
## パーティクル表示
  ### 閉まっていたら
    #execute unless data storage asset.temp: {UnlockedDoor:[13005]} positioned ~-1 ~ ~ run function lib.asset:move/particle/locked
    #execute unless data storage asset.temp: {UnlockedDoor:[13005]} positioned ~1 ~ ~ run function lib.asset:move/particle/locked
  ### 開いていたら
    execute if data storage asset.temp: {UnlockedDoor:[13005]} positioned ~-1 ~ ~ run function lib.asset:move/particle/unlocked
    #execute if data storage asset.temp: {UnlockedDoor:[13005]} positioned ~1 ~ ~1 run function lib.asset:move/particle/unlocked
