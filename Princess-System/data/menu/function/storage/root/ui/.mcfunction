#> menu:storage/root/ui/
#
# @within function menu:-common/repair

say storage:root.ui

## ページ番号
    scoreboard players operation #pageNext temp = @s menu
    scoreboard players operation #pageNext temp %= #1000 const
    scoreboard players operation #pagePrev temp = #pageNext temp
    scoreboard players add #pageNext temp 2

##
    ### 1行目
        loot replace entity @s inventory.0 loot menu:back
        execute if entity @s[scores={menu=5001..}] run loot replace entity @s inventory.8 loot menu:page.prev
        execute unless entity @s[scores={menu=5001..}] run loot replace entity @s inventory.8 loot menu:frame.black

    ### 2行目
        loot replace entity @s inventory.9 loot menu:storage/material
        loot replace entity @s inventory.17 loot menu:frame.black

    ### 3行目
        loot replace entity @s inventory.18 loot menu:storage/important
        execute if entity @s[scores={menu=..5098}] run loot replace entity @s inventory.26 loot menu:page.next
        execute if entity @s[scores={menu=5099}] run loot replace entity @s inventory.26 loot menu:frame.black


## 一時使用scoreHolderをリセット
    scoreboard players reset #pageNext temp
    scoreboard players reset #pagePrev temp
