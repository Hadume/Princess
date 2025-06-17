#> asset.lib:item/create/lore/modifiers/
# 効果の記述
# @within function asset.lib:item/create/

## 効果の共通処理
    item modify block ~ ~ ~ container.0 asset.lib:item/create/modifiers

## 効果値を追加
    function asset.lib:item/create/lore/modifiers/loop

## 一時使用storageを削除
    data remove storage temp: modifier
    data remove storage temp: amount
