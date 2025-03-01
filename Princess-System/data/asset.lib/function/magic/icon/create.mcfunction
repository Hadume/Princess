#> asset.lib:magic/icon/create
#
# @within function asset.lib:magic/icon/

## アイテムを設定
	data modify entity @s ArmorItems[-1] set from storage asset:magic Item

## 名前を設定
	item modify entity @s armor.head asset.lib:magic/icon/name

## 説明を設定
	item modify entity @s armor.head asset.lib:magic/icon/description
