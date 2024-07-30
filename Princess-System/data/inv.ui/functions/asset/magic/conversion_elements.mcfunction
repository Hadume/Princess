#> inv.ui:asset/magic/conversion_elements
# 属性の名前を変換して格納
# @within  inv.ui:asset/magic/**

# 比較対象データ格納
	data modify storage inv.ui: Asset.Temp set from storage inv.ui: Asset.Argument[-1]

# データ比較して格納
	execute if data storage inv.ui: {Asset:{Temp:"Flamme"}} run data modify storage inv.ui: Asset.Elements append value "炎"
	execute if data storage inv.ui: {Asset:{Temp:"Wasser"}} run data modify storage inv.ui: Asset.Elements append value "水"
	execute if data storage inv.ui: {Asset:{Temp:"Wind"}} run data modify storage inv.ui: Asset.Elements append value "風"
	execute if data storage inv.ui: {Asset:{Temp:"Licht"}} run data modify storage inv.ui: Asset.Elements append value "光"
	execute if data storage inv.ui: {Asset:{Temp:"Dunkel"}} run data modify storage inv.ui: Asset.Elements append value "闇"

# 再帰処理?
	# データ再格納
		data remove storage inv.ui: Asset.Argument[-1]
		data modify storage inv.ui: Asset.Temp set from storage inv.ui: Asset.Argument[-1]
	# データが残っていれば再帰
		execute if data storage inv.ui: Asset.Argument[-1] run function inv.ui:asset/magic/conversion_elements
