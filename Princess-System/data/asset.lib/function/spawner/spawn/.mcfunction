#> asset.lib:spawner/spawn/
# スポーン
# @within function asset.lib:spawner/tick/spawn

#> scoreHolder
# @within function asset.lib:spawner/spawn/*
    #declare score_holder #spawnCount
    #declare score_holder #listLength
#> scoreHolder.Private
# @private
    #declare score_holder #countMin
    #declare score_holder #countMax

## データをコピー
    data modify storage temp: data set from entity @s data

## 何体スポーンさせるか
    ### 数値を取得
        execute store result score #countMin temp run data get storage temp: data.countMin
        execute store result score #countMax temp run data get storage temp: data.countMax

    ### ランダム
        scoreboard players operation #countMax temp -= #countMin temp
        scoreboard players add #countMax temp 1
        execute store result score #rand temp run random value 1..
        scoreboard players operation #rand temp %= #countMax temp

    ### 値を設定
        scoreboard players operation #countMin temp += #rand temp
        scoreboard players operation #spawnCount temp = #countMin temp


## MOBを召喚
    function asset.lib:spawner/spawn/main.loop

## 次のスポーン
    function asset.lib:spawner/common/set.delay

## 一時使用scoreHolderをリセット
    scoreboard players reset #countMin temp
    scoreboard players reset #countMax temp
    scoreboard players reset #spawnCount temp
    scoreboard players reset #listLength temp
    scoreboard players reset #rand temp

## 一時使用storageを削除
    data remove storage temp: data
