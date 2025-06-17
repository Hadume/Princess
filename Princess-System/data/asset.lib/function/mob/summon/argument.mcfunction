#> asset.lib:mob/summon/argument
#
# @within function asset.lib:mob/summon/

## 引数を設定
    $data modify storage temp:asset.lib argument set value $(argument)

## 引数が足りなかったら
    $execute unless data storage temp:asset.lib {argument:"null"} run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"asset:mob $(argument)"]
    execute unless data storage temp:asset.lib {argument:"null"} run tp @s ~ -3000 ~
    execute unless data storage temp:asset.lib {argument:"null"} run kill @s

## 引数を削除
    data remove storage asset:mob name
    data remove storage asset:mob type
    data remove storage asset:mob status
    execute if data storage asset:mob armor run data remove storage asset:mob armor
    execute if data storage asset:mob weapon run data remove storage asset:mob weapon
    execute if data storage asset:mob loot run data remove storage asset:mob loot
    execute if data storage asset:mob NBT run data remove storage asset:mob NBT


## 一時使用storageを削除
    data remove storage temp:asset.lib argument
