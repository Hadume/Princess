#> asset.lib:magic/type/argument
# 引数を削除
# @within function asset.lib:magic/type/

## 引数を設定
    $data modify storage temp: argument set value $(argument)

## 引数が足りなかったら
    $execute unless data storage temp: {argument:"null"} run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"asset:magic $(argument)"]

## 引数を削除
    data remove storage asset:magic name
    data remove storage asset:magic mp
    data remove storage asset:magic cooltime
    execute if data storage asset:magic amount run data remove storage asset:magic amount
    execute if data storage asset:magic multiple run data remove storage asset:magic multiple
    execute if data storage asset:magic duration run data remove storage asset:magic duration
    execute if data storage asset:magic pierce run data remove storage asset:magic pierce
    execute if data storage asset:magic spread run data remove storage asset:magic spread
    execute if data storage asset:magic range run data remove storage asset:magic range
    execute if data storage asset:magic speed run data remove storage asset:magic speed
    execute if data storage asset:magic targets run data remove storage asset:magic targets
    execute if data storage asset:magic elements run data remove storage asset:magic elements

## 一時使用storageを削除
    data remove storage temp: argument
