#> asset:item/create/
# アイテム生成
# @within tag/function asset:item/create

## IDを設定
    $data modify storage asset:item ID set value $(ID)

##
    $function asset:item/$(ID)/create/

## アイテムを生成
    execute in overworld positioned 0 -64 0 as 0-0-1-0-0 run function asset.lib:item/create/
