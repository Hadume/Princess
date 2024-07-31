#> inv.ui:pages/set/insert
# アイテムの生成とインサート
# @within function inv.ui:pages/set/

# プレイヤーのインベントリをシュルカーボックスにコピー
	## 初期化
        data remove storage inv.ui: Asset.SetWork
	## データ取得
		data modify storage inv.ui: Asset.PlayerInventoryData set from entity @s Inventory
	## ホットバーのデータ削除
		function inv.ui:pages/set/remove_hotbar
	## データ整形して格納
		data modify storage inv.ui: Asset.SlotLoop set value 27
        function inv.ui:pages/set/slot_num_convert with storage inv.ui: Asset.
		### 格納
			data modify block 0 0 0 Items set from storage inv.ui: Asset.SetWork
	## データ削除
		data remove storage inv.ui: Asset.PlayerInventoryData

# インサート
	loot insert 0 -64 0 loot inv.ui:asset/common

# プレイヤーにデータ代入
	loot replace entity @s inventory.0 26 mine 0 -64 0 minecraft:debug_stick
