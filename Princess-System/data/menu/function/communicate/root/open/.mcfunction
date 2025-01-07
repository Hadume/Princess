#> menu:communicate/root/open/
# コミュニケートを開く
# @within function
#   menu:pages/menu/
#   menu:communicate/select_action/

## スコアを変更
	scoreboard players set @s Menu 7000

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
