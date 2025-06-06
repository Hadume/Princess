#> api:e_dat/id/allocate
# IDを割り当てる
# @within function api:e_dat/read

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
    function api:e_dat/id/gc

## id[0] + id[-1] / 2 を割り当てIDに取る
    execute store result score #ID ID run data get storage dat: id[-1]
    execute store result score #DatID Temp run data get storage dat: id[0]
    execute if score #ID ID matches 0 run scoreboard players set #ID ID 268435456
    scoreboard players operation #ID ID += #DatID Temp
    scoreboard players operation #ID ID /= #2 Const

## 割り当てIDに追加
    data modify storage dat: id append value -1
    execute store result storage dat: id[-1] int 1 run scoreboard players get #ID ID

## 割り当てる
    scoreboard players operation @s ID = #ID ID

## ストレージを初期化
    execute store result storage temp: id int 1 run scoreboard players get #ID ID
    function api:e_dat/id/init with storage temp:

## 一時使用ScoreHolderをリセット
    scoreboard players reset #DatID Temp

## 一時使用Storageを削除
    data remove storage temp: id
