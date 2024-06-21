#> asset.lib:spawner/common/set.delay
# Delayを設定
# @within function
#   asset.lib:spawner/set/main
#   asset.lib:spawner/spawn/

#> ScoreHolder
# @private
 #declare score_holder #Delay.Min
 #declare score_holder #Delay.Max

## データをコピー
  data modify storage asset:temp Delay set from entity @s data.Delay
## 数値を取得
  execute store result score #Delay.Min Temp run data get storage asset:temp Delay.Min
  execute store result score #Delay.Max Temp run data get storage asset:temp Delay.Max
## ランダム
  scoreboard players operation #Delay.Max Temp -= #Delay.Min Temp
  scoreboard players add #Delay.Max Temp 1
  execute store result score #Rand Temp run random value 1..
  scoreboard players operation #Rand Temp %= #Delay.Max Temp
## 値を設定
  scoreboard players operation #Delay.Min Temp += #Rand Temp
  scoreboard players operation @s Spawner.Delay = #Delay.Min Temp
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Delay.Min
  scoreboard players reset #Delay.Max
  scoreboard players reset #Rand
## 一時使用Storageを削除
  data remove storage asset:temp Delay
