#> api:e_dat/please
# 個人ストレージを提供
# @within tag/function api:e_dat/please

# IDを持っていなければ、IDを割り当て
    execute unless score @s ID matches 1.. run function api:e_dat/id/allocate

# IDを一時変数にコピー
    execute store result storage dat: ID int 1 run scoreboard players get @s ID

# 取得するIDに変化があるかどうか確認
    data modify storage temp: LastID set from storage dat: LastID
    execute store result storage temp: update byte 1 run data modify storage temp: LastID set from storage dat: ID

# データの書き込み＆読み取り
    execute if data storage temp: {update:true} run function api:e_dat/write_and_read with storage dat:

## 一時使用Storageを削除
    data remove storage dat: ID
    data remove storage temp: LastID
    data remove storage temp: update
