#> menu:magic/select/open
#
# @within function menu:magic/root/set/click

## メニューのスコア設定
	execute store result score @s Menu run data get storage temp: Menu

## 杖を保存しておく
	data modify storage dat: _.Menu.Magic.Wand set from storage api: Inventory[{Slot:22b}]

## UI
	data remove storage api: Inventory[{Slot:22b}]
	function menu:-common/repair {Parent:"magic",Child:"select"}
