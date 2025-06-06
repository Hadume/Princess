#> asset.lib:item/create/lore/basic/loop
#
# @within function asset.lib:item/create/lore/basic/
# @private

## ループ終了
    execute unless data storage asset:item Lore[] run return 1

## 説明を取得
    execute in overworld run item modify block 0 -64 0 container.0 asset.lib:item/create/lore/basic

## データを削除
    data remove storage asset:item Lore[0]

## ループ
    function asset.lib:item/create/lore/basic/loop
