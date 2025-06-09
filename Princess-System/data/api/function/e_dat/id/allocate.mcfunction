#> api:e_dat/id/allocate
# idを割り当てる
# @within function api:e_dat/read

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
    function api:e_dat/id/gc

## id[0] + id[-1] / 2 を割り当てidに取る
    execute store result score #id id run data get storage dat: id[-1]
    execute store result score #datId temp run data get storage dat: id[0]
    execute if score #id id matches 0 run scoreboard players set #id id 268435456
    scoreboard players operation #id id += #datId temp
    scoreboard players operation #id id /= #2 const

## 割り当てidに追加
    data modify storage dat: id append value -1
    execute store result storage dat: id[-1] int 1 run scoreboard players get #id id

## 割り当てる
    scoreboard players operation @s id = #id id

## ストレージを初期化
    execute store result storage temp:api dat.id int 1 run scoreboard players get #id id
    function api:e_dat/id/init with storage temp:

## 一時使用scoreHolderをリセット
    scoreboard players reset #datId temp

## 一時使用storageを削除
    data remove storage temp:api dat
