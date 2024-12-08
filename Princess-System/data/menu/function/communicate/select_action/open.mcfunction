#> menu:communicate/select_action/open
# コミュニケートの動き
# @within function menu:communicate/root/

## スコアを変更
	scoreboard players set @s Menu 7100

## 選択したプレイヤーを保存
	item replace block 0 -64 0 container.0 from entity @s player.cursor
	data modify storage dat: _.Menu.Communicate.SelectedPlayer set from block 0 -64 0 Items[0]

## いらないデータを削除
	data remove storage dat: _.Menu.Communicate.Page
	data remove storage dat: _.Menu.Communicate.PlayerData

## UI
	data modify storage menu: Function set value {Parent:"communicate",Child:"select_action"}
	function menu:_common/repair with storage menu: Function

## 音
	playsound ui.button.click master @s ~ ~ ~ 0.25 1 0
