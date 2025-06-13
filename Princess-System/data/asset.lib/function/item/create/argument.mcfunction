#> asset.lib:item/create/index
# 引数関連の処理
# @within function asset.lib:item/create/

## 引数を設定
    $data modify storage temp:asset.lib argument set value $(argument)

## 引数が足りなかったら
    $execute unless data storage temp:asset.lib {argument:"null"} run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"asset:item $(argument)"]

## 引数を削除
    data remove storage asset:item id
    data remove storage asset:item name
    data remove storage asset:item category
    data remove storage asset:item rarity
    execute if data storage asset:item lore run data remove storage asset:item lore
    execute if data storage asset:item modifiers run data remove storage asset:item modifiers
    execute if data storage asset:item effects run data remove storage asset:item effects
    execute if data storage asset:item itemModel run data remove storage asset:item itemModel
    execute if data storage asset:item components run data remove storage asset:item components

## 一時使用storageを削除
    data remove storage temp:asset.lib argument
