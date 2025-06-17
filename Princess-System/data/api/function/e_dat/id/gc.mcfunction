#> api:e_dat/id/gc
# ガーベージコレクタ
# @within function api:e_dat/id/allocate

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## 前回存在を確認したIDを移動させる
    data modify storage dat: ID append from storage dat: ID[0]
    data remove storage dat: ID[0]

## 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
    execute store result score #datID temp run data get storage dat: ID[0]
    scoreboard players remove #datID temp 2147483647
    scoreboard players set #ID ID 0
    scoreboard players operation * ID -= #datID temp
    scoreboard players operation #ID ID > * ID
    scoreboard players operation * ID += #datID temp

## 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
    scoreboard players operation #datID temp >< #ID ID
    execute store result score #ID ID run data get storage dat: ID[0]
    execute if score #ID ID > #datID temp run function api:e_dat/id/gc_loop
    scoreboard players operation #datID temp >< #ID ID

## loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
    ### 2prev
        execute store result score #datID temp run data get storage dat: ID[-1]
        execute if score #datID temp matches 0 run scoreboard players add #datID temp 268435456
        execute if score #ID ID matches 0 run scoreboard players add #datID temp 268435456
        execute if score #ID ID matches 0 run scoreboard players add #ID ID 268435456
        scoreboard players operation #datID temp *= #2 const

    ### 2prev - 2x
        scoreboard players operation #datID temp -= #ID ID
        scoreboard players operation #datID temp -= #ID ID

    ### 3x - 2prev
        scoreboard players operation #ID ID -= #datID temp

    ### 3x - 2prev - next
        execute store result score #datID temp run data get storage dat: ID[1]
        scoreboard players operation #ID ID -= #datID temp
        execute if score #ID ID matches -1.. run function api:e_dat/id/gc
