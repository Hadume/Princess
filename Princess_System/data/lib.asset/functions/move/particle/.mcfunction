#> lib.asset:move/particle/
# パーティクル表示
# @within function main:tick/interval.4

## IDを移動
  data modify storage asset: ObjectID set from entity @s data.ID
## 
  execute as @a[distance=..16] run function #asset:move/particle
## 一時使用Storageを削除
  execute if data storage asset.temp: UnlockedDoor run data remove storage asset.temp: UnlockedDoor
