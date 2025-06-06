#> api:e_dat/release
# 個人ストレージを削除する
# @within tag/function api:e_dat/release

# データを消す
    execute store result storage temp: ID int 1 run scoreboard players get @s ID
    function api:e_dat/remove.data with storage temp:

## 最後にアクセスした奴をリセット
    data modify storage dat: LastID set value 0

## IDを剥奪
    scoreboard players reset @s ID
