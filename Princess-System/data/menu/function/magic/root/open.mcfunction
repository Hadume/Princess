#> menu:magic/root/open
# 魔法メニューを開く
# @within function menu:home/root/

## 杖を戻す
	execute if data storage dat: _.Menu.Magic.Wand run data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage dat: _.Menu.Magic.Wand
	item replace entity @s inventory.13 from entity 0-0-1-0-0 armor.head

## UI
	function menu:-common/repair {Parent:"magic",Child:"root"}

## ページを変更しました
	return 3000
