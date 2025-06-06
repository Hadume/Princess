#> menu:communicate/root/ui/
#
# @within function menu:repair

say communicate:root.ui

## ページ番号を取得
    scoreboard players operation #Page Temp = @s Menu
    scoreboard players operation #Page Temp %= #1000 Const

## 大枠を用意
    execute in overworld run data remove block 0 -64 0 Items
    ### 前、次のページ番号
        scoreboard players operation #Page.Next Temp = @s Menu
        scoreboard players operation #Page.Next Temp %= #1000 Const
        scoreboard players operation #Page.Prev Temp = #Page.Next Temp
        scoreboard players add #Page.Next Temp 2

    execute in overworld run loot replace block 0 -64 0 container.0 loot menu:communicate/root/

## 次ページ
    execute if data storage dat: _.Menu.Communicate.PlayerData[] if entity @s[scores={Menu=..7099}] run loot replace entity @s inventory.26 loot menu:page.next
    execute if entity @s[scores={Menu=7099}] run loot replace entity @s inventory.26 loot menu:frame.black
    execute unless data storage dat: _.Menu.Communicate.PlayerData[] run loot replace entity @s inventory.26 loot menu:frame.black

## プレイヤー表示
    execute store result storage temp: PageNum int 1 run scoreboard players get #Page Temp
    function menu:communicate/root/ui/page/ with storage temp:
    execute in overworld run data modify block 0 -64 0 Items append from storage temp: PageData[]

## プレイヤーに表示
    execute in overworld run loot replace entity @s inventory.0 27 mine 0 -64 0 debug_stick

## 一時使用ScoreHolderをリセット
    scoreboard players reset #Page.Prev Temp
    scoreboard players reset #Page.Next Temp
    scoreboard players reset #Page Temp

## 一時使用Storageを削除
    data remove storage temp: PageNum
    data remove storage temp: PageData
