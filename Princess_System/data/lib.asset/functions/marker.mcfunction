#> lib.asset:marker
# 
# @within function player:tick

## マーカーを一体に絞る
  execute as @e[type=marker,tag=Object,sort=nearest,limit=1] run tag @s add Object.This
## マーカーのdataを取得
  execute as @e[type=marker,tag=Object.This] run data modify storage asset.temp: dataCopy set from entity @s data
  data modify storage asset: ObjectID set from storage asset.temp: dataCopy.ID
## イベント処理
  execute if data storage asset.temp: {dataCopy:{Move:1b}} run function #asset:move/main
  execute unless data storage asset.temp: {dataCopy:{Move:1b}} run function #asset:event/marker
## tagを削除
  execute as @e[type=marker,tag=Object.This] run tag @s remove Object.This
## 一時使用Storageを削除
  data remove storage asset.temp: dataCopy
  execute if data storage asset.temp: Door run data remove storage asset.temp: Door
