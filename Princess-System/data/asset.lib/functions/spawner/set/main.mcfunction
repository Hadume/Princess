#> asset.lib:spawner/set/main
#
# @within function asset.lib:spawner/set/check.condition

## データを移行
  data modify storage asset:temp data.Data set from storage asset:spawner Data
  data modify storage asset:temp data.Count set from storage asset:spawner Count
  data modify storage asset:temp data.Range set from storage asset:spawner Range
  data modify storage asset:temp data.Delay set from storage asset:spawner Delay
  data modify storage asset:temp data.MaxNearbyEntities set from storage asset:spawner MaxNearbyEntities
  data modify storage asset:temp data.RequiredPlayerRange set from storage asset:spawner RequiredPlayerRange
  ###
    data modify entity @s data set from storage asset:temp data
## 召喚までの間隔
  function asset.lib:spawner/common/set.delay
## 一時使用Storageを削除
  data remove storage asset:temp data
