#> api:e_dat/id/gc_loop
#
# @within function api:e_dat/id/gc

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## データを削除
    data modify storage temp:api dat.id set from storage dat: id[0]
    function api:e_dat/remove.data with storage temp:api

## 割り当て済みidを削除
    data remove storage dat: id[0]

## 不要なデータを解放(先頭から続く基準より大きいidは全部要らない)
    execute store result score #id global run data get storage dat: id[0]
    execute if score #id global > #datId temp run function api:e_dat/id/gc_loop
