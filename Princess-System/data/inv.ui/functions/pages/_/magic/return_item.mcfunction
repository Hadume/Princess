#> inv.ui:pages/_/magic/return_item
# アイテムが設置されたままページ遷移が行われた際の返品処理
# @within function inv.ui:check/menu/magic

# シュルカーの中身を削除
	data remove block 0 -64 0 Items

# データセット
	data modify block 0 -64 0 Items[{Slot:0b}] set from entity @s Inventory[{Slot:13b}]

# プレイヤーに返品
	loot give @s mine 0 -64 0 debug_stick
