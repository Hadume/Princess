#> asset.lib:spawner/common/set.delay
# Delayを設定
# @within function
#   asset.lib:spawner/set/main
#   asset.lib:spawner/spawn/

#> scoreHolder
# @private
    #declare score_holder #delayMin
    #declare score_holder #delayMax

## データをコピー
    data modify storage temp: Delay set from entity @s data.Delay

## 数値を取得
    execute store result score #delayMin temp run data get storage temp: delayMin
    execute store result score #delayMax temp run data get storage temp: delayMax

## ランダム
    scoreboard players operation #delayMax temp -= #delayMin temp
    scoreboard players add #delayMax temp 1
    execute store result score #rand temp run random value 1..
    scoreboard players operation #rand temp %= #delayMax temp

## 値を設定
    scoreboard players operation #delayMin temp += #rand temp
    scoreboard players operation @s spawnerDelay = #delayMin temp

## 一時使用scoreHolderをリセット
    scoreboard players reset #delayMin temp
    scoreboard players reset #delayMax temp
    scoreboard players reset #rand temp

## 一時使用storageを削除
    data remove storage temp: Delay
