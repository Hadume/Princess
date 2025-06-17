#> api:e_dat/please
# 個人ストレージを提供
# @within tag/function api:e_dat/please

# IDを持っていなければ、IDを割り当て
    execute unless score @s ID matches 1.. run function api:e_dat/id/allocate

# IDを一時変数にコピー
    execute store result storage temp: ID int 1 run scoreboard players get @s ID

# 取得するIDに変化があるかどうか確認
    data modify storage temp: lastID set from storage dat: lastID
    execute store result storage temp: updated byte 1 run data modify storage temp: lastID set from storage temp: ID

# データの書き込み＆読み取り
    execute if data storage temp: {updated:true} run function api:e_dat/write_and_read with storage dat:

## 一時使用storageを削除
    data remove storage temp: ID
    data remove storage temp: lastID
    data remove storage temp: updated
