#> asset.lib:magic/action/range/argument
#
# @within function asset.lib:magic/action/range/

## 引数を設定
    $data modify storage temp: argument set value $(argument)

## 引数が足りなかったら
    $execute unless data storage temp: {argument:"null"} run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"asset:magic $(argument)"]

## 一時使用storageを削除
    data remove storage temp: argument
