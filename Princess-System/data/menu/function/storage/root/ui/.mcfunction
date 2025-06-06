#> menu:storage/root/ui/
#
# @within function menu:-common/repair

say storage:root.ui

## ページ番号
    scoreboard players operation #Page.Next Temp = @s Menu
    scoreboard players operation #Page.Next Temp %= #1000 Const
    scoreboard players operation #Page.Prev Temp = #Page.Next Temp
    scoreboard players add #Page.Next Temp 2

##
    ### 1行目
        loot replace entity @s inventory.0 loot menu:back
        execute if entity @s[scores={Menu=5001..}] run loot replace entity @s inventory.8 loot menu:page.prev
        execute unless entity @s[scores={Menu=5001..}] run loot replace entity @s inventory.8 loot menu:frame.black

    ### 2行目
        loot replace entity @s inventory.9 loot menu:storage/material
        loot replace entity @s inventory.17 loot menu:frame.black

    ### 3行目
        loot replace entity @s inventory.18 loot menu:storage/important
        execute if entity @s[scores={Menu=..5098}] run loot replace entity @s inventory.26 loot menu:page.next
        execute if entity @s[scores={Menu=5099}] run loot replace entity @s inventory.26 loot menu:frame.black


## 一時使用ScoreHolderをリセット
    scoreboard players reset #Page.Next Temp
    scoreboard players reset #Page.Prev Temp
