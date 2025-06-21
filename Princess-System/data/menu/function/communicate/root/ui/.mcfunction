#> menu:communicate/root/ui/
#
# @within function menu:repair

say communicate:root.ui

## ページ番号を取得
    scoreboard players operation #page temp = @s menu
    scoreboard players operation #page temp %= #1000 const

## 大枠を用意
    execute in overworld run data remove block 0 -64 0 Items
    ### 前、次のページ番号
        scoreboard players operation #pageNext temp = @s menu
        scoreboard players operation #pageNext temp %= #1000 const
        scoreboard players operation #pagePrev temp = #pageNext temp
        scoreboard players add #pageNext temp 2

    execute in overworld run loot replace block 0 -64 0 container.0 loot menu:communicate/root/

## 次ページ
    execute if data storage dat: _.menu.Communicate.PlayerData[] if entity @s[scores={menu=..7099}] run loot replace entity @s inventory.26 loot menu:page.next
    execute if entity @s[scores={menu=7099}] run loot replace entity @s inventory.26 loot menu:frame.black
    execute unless data storage dat: _.menu.Communicate.PlayerData[] run loot replace entity @s inventory.26 loot menu:frame.black

## プレイヤー表示
    execute store result storage temp: pageNum int 1 run scoreboard players get #page temp
    function menu:communicate/root/ui/page/ with storage temp:
    execute in overworld run data modify block 0 -64 0 Items append from storage temp: pageData[]

## プレイヤーに表示
    execute in overworld run loot replace entity @s inventory.0 27 mine 0 -64 0 debug_stick

## 一時使用scoreHolderをリセット
    scoreboard players reset #pagePrev temp
    scoreboard players reset #pageNext temp
    scoreboard players reset #page temp

## 一時使用storageを削除
    data remove storage temp: pageNum
    data remove storage temp: pageData
