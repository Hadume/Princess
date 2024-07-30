#> inv.ui:pages/set/
# 生成方法の選択
# @within function inv.ui:asset/**

# Slotが指定されている場合
	execute if data storage inv.ui: Asset.Slot run function inv.ui:pages/set/common with storage inv.ui: Asset.

# Slotが指定されていない場合
	