#> api:e_dat/id/allocate
# IDを割り当てる
# @within function api:e_dat/read

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## ごみ掃除(抜けるとID[0]とID[-1]が丁度良いスペースになる)
    function api:e_dat/id/gc

## ID[0] + ID[-1] / 2 を割り当てIDに取る
    execute store result score #ID ID run data get storage dat: ID[-1]
    execute store result score #datID temp run data get storage dat: ID[0]
    execute if score #ID ID matches 0 run scoreboard players set #ID ID 268435456
    scoreboard players operation #ID ID += #datID temp
    scoreboard players operation #ID ID /= #2 const

## 割り当てIDに追加
    data modify storage dat: ID append value -1
    execute store result storage dat: ID[-1] int 1 run scoreboard players get #ID ID

## 割り当てる
    scoreboard players operation @s ID = #ID ID

## ストレージを初期化
    execute store result storage temp: ID int 1 run scoreboard players get #ID ID
    function api:e_dat/id/init with storage temp:

## 一時使用scoreHolderをリセット
    scoreboard players reset #datID temp

## 一時使用storageを削除
    data remove storage temp: ID
