#> inv.ui:pages/_/magic/
# 魔法選択画面を開いたときの処理
# @within function inv.ui:pages/_/magic

# Wandがセットされていたら魔法UIをリプレイス
	## エラー処理用スコアのリセット
		scoreboard players set #InventoryUI Temp 0
	## 実行
		execute if data entity @s {Inventory:[{Slot:13b,tag:{Category:"Wand"}}]} store result score #InventoryUI Temp run function inv.ui:pages/_/magic/caster/display_magic_ui
	## エラー処理
		execute if score #InventoryUI Temp matches -1 run tellraw @s [{"storage":"main:","nbt":"Tell.Error"},{"text":"魔法の杖からMagicが取得できませんでした"}]
		scoreboard players reset #InventoryUI Temp
