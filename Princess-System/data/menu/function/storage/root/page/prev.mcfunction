#> menu:storage/root/page/prev
#
# @within function menu:storage/root/

## ページ番号を減らす
    scoreboard players remove @s Menu 1

## アイテムを出す
    function menu:storage/root/items/

## ページ変更しました
    return run scoreboard players get @s Menu
