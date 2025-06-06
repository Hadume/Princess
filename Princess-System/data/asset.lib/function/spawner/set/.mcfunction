#> asset.lib:spawner/set/
#
# @input storage asset:spawner
#   Data : [{ID : id(asset:mob)}] @ N
#   Count
#     Min : int
#     Max : int
#   Delay
#     Min : int
#     Max : int
#   Range : float
#   MaxNearbyEntities : int
#   RequiredPlayerRange : float
# @within tag/function asset:spawner/set

## 引数が足りてるか確認
    execute store success storage temp: Error byte 1 unless data storage asset:spawner Data run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:spawner Data"]
    execute store success storage temp: Error byte 1 unless data storage asset:spawner Count run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:spawner Count"]
    execute store success storage temp: Error byte 1 unless data storage asset:spawner Delay run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:spawner Delay"]
    execute store success storage temp: Error byte 1 unless data storage asset:spawner Range run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:spawner Range"]
    execute store success storage temp: Error byte 1 unless data storage asset:spawner MaxNearbyEntities run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:spawner MaxNearbyEntities"]
    execute store success storage temp: Error byte 1 unless data storage asset:spawner RequiredPlayerRange run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:spawner RequiredPlayerRange"]
    ### 足りなかったら
        execute if data storage temp: Error run kill @s


## 足りていたら
    execute unless data storage temp: Error run function asset.lib:spawner/set/main

## Storageを削除
    data remove storage asset:spawner Data
    data remove storage asset:spawner Count
    data remove storage asset:spawner Delay
    data remove storage asset:spawner Range
    data remove storage asset:spawner MaxNearbyEntities
    data remove storage asset:spawner RequiredPlayerRange

## 一時使用Storageを削除
    execute if data storage temp: Error run data remove storage temp: Error
