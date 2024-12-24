#> menu:communicate/root/open/
# コミュニケートを開く
# @within function
#   menu:pages/menu/
#   menu:communicate/select_action/

## スコアを変更
	scoreboard players set @s Menu 7000

## アイテムを消す
	### 1行目
		item replace entity @s inventory.1 with air
		item replace entity @s inventory.2 with air
		item replace entity @s inventory.3 with air
		item replace entity @s inventory.4 with air
		item replace entity @s inventory.5 with air
		item replace entity @s inventory.6 with air
		item replace entity @s inventory.7 with air

	### 2行目
		item replace entity @s inventory.10 with air
		item replace entity @s inventory.11 with air
		item replace entity @s inventory.12 with air
		item replace entity @s inventory.13 with air
		item replace entity @s inventory.14 with air
		item replace entity @s inventory.15 with air
		item replace entity @s inventory.16 with air

	### 3行目
		item replace entity @s inventory.19 with air
		item replace entity @s inventory.20 with air
		item replace entity @s inventory.21 with air
		item replace entity @s inventory.22 with air
		item replace entity @s inventory.23 with air
		item replace entity @s inventory.24 with air
		item replace entity @s inventory.25 with air


## プレイヤーのデータを取得
	### シュルカーボックスのデータを消す
		data remove block 0 -64 0 Items

	### 各プレイヤーで
		tag @s add This
		execute as @a[gamemode=adventure,tag=!This] run function menu:communicate/root/open/player_data
		tag @s remove This

	### 保存
		data modify storage dat: _.Menu.Communicate.PlayerData set from storage temp: Players


## UI
	function menu:_common/repair {Parent:"communicate",Child:"root"}

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0

## 一時使用Storageを削除
	data remove storage temp: Players
