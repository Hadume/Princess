#> menu:storage/root/page/next
#
# @within function menu:storage/root/

## ページ番号を追加
    execute if entity @s[scores={Menu=..5098}] run scoreboard players add @s Menu 1

## アイテムを出す
    function menu:storage/root/items/

## ページ変更しました
    return run scoreboard players get @s Menu
