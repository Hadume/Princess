#> asset.lib:spawner/spawn/
# スポーン
# @within function asset.lib:spawner/tick/

#> ScoreHolder
# @within function asset.lib:spawner/spawn/*
 #declare score_holder #List.Length
 #declare score_holder #Spawn.Count
 #declare score_holder #Rand
## データをコピー
  data modify storage asset:temp dataCopy set from entity @s data
  execute store result score #Spawn.Count Temp run data get storage asset:temp dataCopy.Count
## MOBを召喚
  function asset.lib:spawner/spawn/main.loop
## 次のスポーン
  execute store result score @s Spawner.Delay run data get storage asset:temp dataCopy.Delay
