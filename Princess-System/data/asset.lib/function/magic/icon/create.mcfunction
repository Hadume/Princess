#> asset.lib:magic/icon/create
#
# @within function asset.lib:magic/icon/

## アイテムを設定
	item replace block 0 -64 0 container.0 with cod
	data modify block 0 -64 0 Items[0].id set from storage asset:magic Icon

## 名前を設定
	item modify block 0 -64 0 container.0 asset.lib:magic/icon/name

## 説明を設定
	item modify block 0 -64 0 container.0 asset.lib:magic/icon/description
