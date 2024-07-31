#> inv.ui:pages/set/
# 生成方法の選択
# @within function inv.ui:asset/**

# シュルカーの中身をリセット
    data remove block 0 -64 0 Items

# Slotが指定されている場合
	execute if data storage inv.ui: Asset.Slot run function inv.ui:pages/set/common with storage inv.ui: Asset.

# Slotが指定されていない場合
	execute unless data storage inv.ui: Asset.Slot run function inv.ui:pages/set/insert

# アセットデータ削除
	data remove storage inv.ui: Asset.
