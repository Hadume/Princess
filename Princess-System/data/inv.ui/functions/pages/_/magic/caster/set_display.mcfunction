#> inv.ui:pages/_/magic/caster/set_display
#
# @within
#   function inv.ui:pages/_/magic/caster/display_magic_ui
#   function inv.ui:pages/_/magic/caster/set_display

# Slot番号の指定
	execute if data storage inv.ui: {Magic:{Loop:0}} run data modify storage inv.ui: Asset.Slot set value 11
	execute if data storage inv.ui: {Magic:{Loop:1}} run data modify storage inv.ui: Asset.Slot set value 12
	execute if data storage inv.ui: {Magic:{Loop:2}} run data modify storage inv.ui: Asset.Slot set value 14
	execute if data storage inv.ui: {Magic:{Loop:3}} run data modify storage inv.ui: Asset.Slot set value 15

# MagicIDに対応するアセット呼び出し
	$function inv.ui:asset/magic/$(Temp)/

# 次のデータをセットして再帰
	## Temp削除
		data remove storage inv.ui: Magic.Temp
	## ループ番号のインクリメント
		execute store result score #InventoryUI Temp run data get storage inv.ui: Magic.Loop
		scoreboard players add #InventoryUI Temp 1
		execute store result storage inv.ui: Magic.Loop int 1.0 run scoreboard players get #InventoryUI Temp
	## データ再セット
		$data modify storage inv.ui: Magic.Temp set from storage inv.ui: Magic.SelectedMagic[$(Loop)]
	## データがあれば再帰呼び出し
		execute if data storage inv.ui: Magic.Temp run function inv.ui:pages/_/magic/caster/set_display with storage inv.ui: Magic.
