#> asset.lib:mob/summon/
#
# @input storage asset:mob
#   Name : TextComponent
#   Type : Type
#   Status : {Lvl : int, Exp : int, Money : int, HP : int, MP : int, ATK : int, DEF : int, Speed : int}
#   Armor? : [{id : id(minecraft:item), Count : int @ 1..64, tag : Compound} || {ID : id(asset:item)}] @ ..4
#   Weapon? : [{id : id(minecraft:item), Count : int @ 1..64, tag : Compound} || {ID : id(asset:item)}] @ ..2
#   NBT? : Compound
# @within tag/function asset.lib:mob/summon

## 足りていなかったら
    execute store success storage temp: Error byte 1 unless data storage asset:mob Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Name"]
    execute store success storage temp: Error byte 1 unless data storage asset:mob Type run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Type"]
    execute store success storage temp: Error byte 1 unless data storage asset:mob Status.Lvl run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Status.Lvl"]
    execute store success storage temp: Error byte 1 unless data storage asset:mob Status.Exp run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Status.Exp"]
    execute store success storage temp: Error byte 1 unless data storage asset:mob Status.Money run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Status.Money"]
    execute store success storage temp: Error byte 1 unless data storage asset:mob Status.HP run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Status.HP"]
    execute store success storage temp: Error byte 1 unless data storage asset:mob Status.MP run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Status.MP"]
    execute store success storage temp: Error byte 1 unless data storage asset:mob Status.Speed run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:mob Status.Speed"]
    ###
        execute if data storage temp: Error run tp @s ~ -3000 ~
        execute if data storage temp: Error run kill @s


## 足りていたら
    execute unless data storage temp: Error run function asset.lib:mob/summon/main

## Storageを削除
    data remove storage asset:mob Name
    data remove storage asset:mob Type
    data remove storage asset:mob Status
    execute if data storage asset:mob Armor run data remove storage asset:mob Armor
    execute if data storage asset:mob Weapon run data remove storage asset:mob Weapon
    execute if data storage asset:mob Drop run data remove storage asset:mob Drop
    execute if data storage asset:mob NBT run data remove storage asset:mob NBT

## 一時使用Storageを削除
    execute if data storage temp: Error run data remove storage temp: Error
