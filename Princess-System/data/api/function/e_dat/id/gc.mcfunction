#> api:e_dat/id/gc
# ガーベージコレクタ
# @within function api:e_dat/id/allocate

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## 前回存在を確認したidを移動させる
    data modify storage dat: id append from storage dat: id[0]
    data remove storage dat: id[0]

## 割り当て済みid[0]以下の最大値を取得(_ idに入る)
    execute store result score #datId temp run data get storage dat: id[0]
    scoreboard players remove #datId temp 2147483647
    scoreboard players set #id id 0
    scoreboard players operation * id -= #datId temp
    scoreboard players operation #id id > * id
    scoreboard players operation * id += #datId temp

## 不要なデータを解放(先頭から続く基準より大きいidは全部要らない)
    scoreboard players operation #datId temp >< #id id
    execute store result score #id id run data get storage dat: id[0]
    execute if score #id id > #datId temp run function api:e_dat/id/gc_loop
    scoreboard players operation #datId temp >< #id id

## loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
    ### 2prev
        execute store result score #datId temp run data get storage dat: id[-1]
        execute if score #datId temp matches 0 run scoreboard players add #datId temp 268435456
        execute if score #id id matches 0 run scoreboard players add #datId temp 268435456
        execute if score #id id matches 0 run scoreboard players add #id id 268435456
        scoreboard players operation #datId temp *= #2 const

    ### 2prev - 2x
        scoreboard players operation #datId temp -= #id id
        scoreboard players operation #datId temp -= #id id

    ### 3x - 2prev
        scoreboard players operation #id id -= #datId temp

    ### 3x - 2prev - next
        execute store result score #datId temp run data get storage dat: id[1]
        scoreboard players operation #id id -= #datId temp
        execute if score #id id matches -1.. run function api:e_dat/id/gc
