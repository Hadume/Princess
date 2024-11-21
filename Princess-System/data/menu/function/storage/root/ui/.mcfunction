#> menu:storage/root/ui/
#
# @within function menu:common/repair

say storage:root.ui

## ページ番号
	scoreboard players operation #InvPage.Next Temp = @s Menu
	scoreboard players operation #InvPage.Next Temp %= #1000 Const
	scoreboard players operation #InvPage.Prev Temp = #InvPage.Next Temp
	scoreboard players add #InvPage.Next Temp 2

##
	###
		loot replace entity @s inventory.0 loot menu:common/back
		execute if entity @s[scores={Menu=5001..}] run loot replace entity @s inventory.8 loot menu:common/page.prev
		execute if entity @s[scores={Menu=5000}] run loot replace entity @s inventory.8 loot menu:common/frame.black

	###
		loot replace entity @s inventory.9 loot menu:storage/material
		loot replace entity @s inventory.17 loot menu:common/frame.black

	###
		loot replace entity @s inventory.18 loot menu:storage/important
		execute if entity @s[scores={Menu=..5098}] run loot replace entity @s inventory.26 loot menu:common/page.next
		execute if entity @s[scores={Menu=5099}] run loot replace entity @s inventory.26 loot menu:common/frame.black


## 一時使用ScoreHolderをリセット
	scoreboard players reset #InvPage.Next
	scoreboard players reset #InvPage.Prev
