#> menu:storage/root/items/
#
# @within function
#   menu:storage/root/ui/
#   menu:storage/root/page/*

## ストレージのアイテムを出す
    scoreboard players operation #page temp = @s menu
    execute store result storage temp: page int 1 run scoreboard players operation #page temp %= #1000 const
    function menu:storage/root/items/main with storage temp:

## UI
    function menu:-common/repair {Parent:"storage",Child:"root"}

## 一時使用scoreHolderをリセット
    scoreboard players reset #page temp

## 一時使用storageを削除
    data remove storage temp: page
