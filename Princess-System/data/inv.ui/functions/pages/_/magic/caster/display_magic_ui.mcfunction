#> inv.ui:pages/_/magic/caster/display_magic_ui
#
# @within function inv.ui:pages/_/magic/

# Magicタグが存在していなかった場合break
	execute unless data entity @s Inventory[{Slot:13b}].tag.Magic run return -1

# 現在セットされている魔法データを取得
	data remove storage inv.ui: Magic.SelectedMagic
	data modify storage inv.ui: Magic.SelectedMagic set from entity @s Inventory[{Slot:13b}].tag.Magic

# データからUiを表示する関数実行
	## 初期値格納(格納値は-1番地のMagicID)
		data modify storage inv.ui: Magic.Temp set from storage inv.ui: Magic.SelectedMagic[-1]
	## 実行
		execute if data storage inv.ui: Magic.SelectedMagic run function inv.ui:pages/_/magic/caster/set_display with storage inv.ui: Magic.
