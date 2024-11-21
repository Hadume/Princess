#> menu:_common/return.items/
# アイテムを返す
# @within function menu:_common/repair

## 要らないアイテムを消す
	data remove storage api: Inventory[{components:{"minecraft:custom_data":{Menu:{}}}}]

## 返すアイテムがあったら
	execute if data storage api: Inventory[] run function menu:_common/return.items/main.loop
