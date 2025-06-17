#> api:e_dat/id/gc_loop
#
# @within function api:e_dat/id/gc

###################################################

# 赤石愛様の「OhMyDat」を参考にさせていただいております！ #

###################################################

## データを削除
    data modify storage temp:api dat.ID set from storage dat: ID[0]
    function api:e_dat/remove.data with storage temp:api

## 割り当て済みIDを削除
    data remove storage dat: ID[0]

## 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
    execute store result score #ID global run data get storage dat: ID[0]
    execute if score #ID global > #datID temp run function api:e_dat/id/gc_loop
