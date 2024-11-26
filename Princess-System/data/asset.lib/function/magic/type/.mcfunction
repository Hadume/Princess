#> asset.lib:magic/type/
# 魔法発動に必要な要素を確認
# @input storage asset:magic
#   Raw.Name : TextComponent
#   Raw.MP : int
#   Raw.Cooltime : int
#   Raw.Multiple? : int
#   Raw.Amount? : int
#   Raw.Duration? : int
#   Raw.Range? : float
#   Raw.Pierce? : float
#   Raw.Speed? : float
#   Raw.Targets? : [Target] @ ..2
#   Raw.Elements? : [Element] @ ..5
# @output storage asset:magic IsFull : boolean
# @within tag/function asset.lib:magic/type

## 引数を確認
	execute store success storage temp: Error byte 1 unless data storage asset:magic Raw.Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Name"}]
	execute store success storage temp: Error byte 1 unless data storage asset:magic Raw.MP run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic MP"}]
	execute store success storage temp: Error byte 1 unless data storage asset:magic Raw.Cooltime run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Cooltime"}]

##
	execute unless data storage temp: Error run data modify storage asset:magic IsFull set value 1b

## 一時使用Storageを削除
	execute if data storage temp: Error run data remove storage temp: Error
