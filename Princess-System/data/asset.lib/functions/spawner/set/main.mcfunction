#> asset.lib:spawner/set/main
# 
# @within function asset.lib:spawner/set/check.condition

## データを移行
  data modify storage asset:temp data.Data set from storage asset:spawner Data
  data modify storage asset:temp data.Count set from storage asset:spawner Count
  data modify storage asset:temp data.Range set from storage asset:spawner Range
  data modify storage asset:temp data.Delay set from storage asset:spawner Delay
  ### 
    data modify entity @s data set from storage asset:temp data
## 召喚までの間隔
  execute store result score @s Spawner.Delay run data get storage asset:spawner Delay
## 一時使用Storageを削除
  data remove storage asset:temp data
