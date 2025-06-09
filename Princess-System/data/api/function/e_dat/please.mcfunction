#> api:e_dat/please
# 個人ストレージを提供
# @within tag/function api:e_dat/please

# idを持っていなければ、idを割り当て
    execute unless score @s id matches 1.. run function api:e_dat/id/allocate

# idを一時変数にコピー
    execute store result storage temp:api dat.id int 1 run scoreboard players get @s id

# 取得するidに変化があるかどうか確認
    data modify storage temp:api dat.lastId set from storage dat: lastId
    execute store result storage temp:api dat.updated byte 1 run data modify storage temp:api dat.lastId set from storage temp:api dat.id

# データの書き込み＆読み取り
    execute if data storage temp:api {updated:true} run function api:e_dat/write_and_read with storage dat:

## 一時使用storageを削除
    data remove storage dat: id
    data remove storage temp:api dat
