#> inv.ui:asset/magic/option_description
# オプションの説明文を追加
# @within function inv.ui:asset/magic/**

# オプションストレージの初期化
	data remove storage inv.ui: Asset.Option

# オプションの確認と説明文の追加
	## Amount
		execute if data storage asset:magic Raw.Duration run data modify storage inv.ui: Asset.Option append value '{"text":"持続時間があります。\\n"}'
	## Amount
		execute if data storage asset:magic Raw.Pierce run data modify storage inv.ui: Asset.Option append value '{"text":"貫通します。\\n"}'
	## Amount
		execute if data storage asset:magic Raw.Range run data modify storage inv.ui: Asset.Option append value '{"text":"効果範囲があります。\\n"}'
	## Amount
		execute if data storage asset:magic Raw.Speed run data modify storage inv.ui: Asset.Option append value '{"text":"速度があります。\\n"}'
	## Amount
		execute if data storage asset:magic Raw.Targets run data modify storage inv.ui: Asset.Option append value '{"text":"効果対象があります。\\n"}'
