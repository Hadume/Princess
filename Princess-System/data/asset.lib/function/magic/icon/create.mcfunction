#> asset.lib:magic/icon/create
#
# @within function asset.lib:magic/icon/

## アイテムを設定
	execute in overworld run item replace block 0 -64 0 container.0 with cod
	execute in overworld run data modify block 0 -64 0 Items[0].id set from storage asset:magic Icon

## 名前を設定
	execute in overworld run item modify block 0 -64 0 container.0 asset.lib:magic/icon/name

## 説明を設定
	execute in overworld run item modify block 0 -64 0 container.0 asset.lib:magic/icon/description
