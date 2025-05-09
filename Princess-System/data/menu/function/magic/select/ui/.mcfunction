#> menu:magic/select/ui/
#
# @within function menu:magic/select/open

## 何ページ目か
	scoreboard players operation #Index Temp = @s Menu
	scoreboard players operation #Index Temp %= #100 Const

## 前ページへ
	execute if score #Index Temp matches 1.. run loot replace block 0 -64 0 container.8 loot menu:page.prev

## 魔法のアイコンを設定
	### Slotリスト
		data modify storage temp: Slots set value [25b,24b,23b,22b,21b,20b,19b,16b,15b,14b,13b,12b,11b,10b,7b,6b,5b,4b,3b,2b,1b]

	### 取得済み魔法リスト
		data modify storage temp: Magics set from storage dat: _.Magic.Known
		execute if score #Index Temp matches 0 run function menu:magic/select/ui/first.page

	### 魔法の数
		scoreboard players operation #Index Temp *= #21 Const
		execute store result storage temp: Index int 1 run scoreboard players get #Index Temp

	###
		execute store result score #UntilList Temp in overworld run function menu:magic/select/ui/main/loop with storage temp:


## 外枠
	### 1行目
		execute in overworld run loot replace block 0 -64 0 container.0 loot menu:back
		execute in overworld run loot replace block 0 -64 0 container.1 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.2 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.3 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.4 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.5 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.6 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.7 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.8 loot menu:frame.black

	### 2行目
		execute in overworld run loot replace block 0 -64 0 container.9 loot menu:frame.black
		execute in overworld run loot replace block 0 -64 0 container.10 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.11 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.12 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.13 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.14 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.15 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.16 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.17 loot menu:frame.black

	### 3行目
		execute in overworld run loot replace block 0 -64 0 container.18 loot menu:frame.black
		execute in overworld run loot replace block 0 -64 0 container.19 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.20 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.21 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.22 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.23 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.24 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.25 loot menu:frame.light_gray
		execute in overworld run loot replace block 0 -64 0 container.26 loot menu:frame.black


## 魔法アイコンを反映
	execute in overworld run data modify block 0 -64 0 Items append from storage temp: Items[]

## インベントリーに反映
	execute in overworld run loot replace entity @s inventory.0 27 mine 0 -64 0 debug_stick

## 次ページにいく
	execute if score #UntilList Temp matches 10 run loot replace entity @s inventory.26 loot menu:page.next

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Index Temp

## 一時使用Storageを削除
	data remove storage temp: Magics
	data remove storage temp: Slots
	data remove storage temp: Index
	data remove storage temp: Icon
	data remove storage temp: Items
