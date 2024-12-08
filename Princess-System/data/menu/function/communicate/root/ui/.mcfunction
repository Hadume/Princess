#> menu:communicate/root/ui/
#
# @within function menu:common/repair

say communicate:root.ui

## ページ番号
	scoreboard players operation #InvPage.Copy Temp = @s Menu
	scoreboard players operation #InvPage.Copy Temp %= #1000 Const

## UIのプレイヤー表示
	execute store result storage temp: PageNum int 1 run scoreboard players get #InvPage.Copy Temp
	function menu:communicate/root/ui/page/ with storage temp:

##
	### プレイヤーヘッド
		data remove block 0 -64 0 Items
		data modify block 0 -64 0 Items append from storage temp: PageData[]
		loot replace entity @s inventory.0 27 mine 0 -64 0 debug_stick

	### 戻る
		loot replace entity @s inventory.0 loot menu:common/back

	### 前のページに戻る
		execute if entity @s[scores={Menu=7001..}] run loot replace entity @s inventory.8 loot menu:common/page.prev
		execute if entity @s[scores={Menu=7000}] run loot replace entity @s inventory.8 loot menu:common/frame.black

	### 枠
		loot replace entity @s inventory.9 loot menu:common/frame.black
		loot replace entity @s inventory.17 loot menu:common/frame.black
		loot replace entity @s inventory.18 loot menu:common/frame.black

	### 次のページへいく
		execute if data storage dat: _.Menu.Communicate.PlayerData[] if entity @s[scores={Menu=..7099}] run loot replace entity @s inventory.26 loot menu:common/page.next
		execute if entity @s[scores={Menu=7099}] run loot replace entity @s inventory.26 loot menu:common/frame.black
		execute unless data storage dat: _.Menu.Communicate.PlayerData[] run loot replace entity @s inventory.26 loot menu:common/frame.black


## 一時使用ScoreHolderをリセット
	scoreboard players reset #InvPage.Copy
