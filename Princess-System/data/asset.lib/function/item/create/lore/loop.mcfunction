#> asset.lib:item/create/lore/loop
#
# @within function asset.lib:item/create/lore/
# @private

## ループ終了
    execute unless data storage asset:item lore[] run return 1

## 説明を取得
    item modify block ~ ~ ~ container.0 asset.lib:item/create/lore/basic

## データを削除
    data remove storage asset:item lore[0]

## ループ
    function asset.lib:item/create/lore/loop
