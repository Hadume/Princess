#> asset:magic/type
# 魔法発動に必要な要素を確認
# @within tag/function asset:magic/type

## typeを取得
    function asset:magic/type/main with storage asset:magic

## 引数を確認
    execute store success storage temp: Error byte 1 unless data storage asset:magic Raw.Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:magic Name"]
    execute store success storage temp: Error byte 1 unless data storage asset:magic Raw.MP run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:magic MP"]
    execute store success storage temp: Error byte 1 unless data storage asset:magic Raw.Cooltime run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:magic Cooltime"]

##
    execute unless data storage temp: Error run return 1

## 一時使用Storageを削除
    execute if data storage temp: Error run data remove storage temp: Error
