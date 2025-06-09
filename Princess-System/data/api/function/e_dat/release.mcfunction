#> api:e_dat/release
# 個人ストレージを削除する
# @within tag/function api:e_dat/release

# データを消す
    execute store result storage temp:api dat.id int 1 run scoreboard players get @s id
    function api:e_dat/remove.data with storage temp:api

## 最後にアクセスした奴をリセット
    data modify storage dat: lastId set value 0

## idを剥奪
    scoreboard players reset @s id

## 一時使用storageを削除
    data remove storage temp:api dat
