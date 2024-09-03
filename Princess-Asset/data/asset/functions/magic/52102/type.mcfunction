#> asset:magic/52102/type
# 魔法のデータ
# @within function asset:magic/52102/cast/check.condition

## タイプを設定

	### 魔法名 : TextComponent
		data modify storage asset:magic Raw.Name set value '{"text":"フレア","color":"red"}'
	### 消費魔力 : int
		data modify storage asset:magic Raw.MP set value 15
	### クールタイム : int
		data modify storage asset:magic Raw.Cooltime set value 40
	### 発動数? : int
		data modify storage asset:magic Raw.Multiple set value 3
	### 効果値? : int
		data modify storage asset:magic Raw.Amount set value 10
	### 持続時間? : int
		data modify storage asset:magic Raw.Duration set value 100
	### 拡散範囲? : float
		data modify storage asset:magic Raw.Spread set value 4.0f
	### 範囲? : float
		data modify storage asset:magic Raw.Range set value 2.0f
	### 対象? : [Target] @ ..2
		data modify storage asset:magic Raw.Targets set value ["Enemy"]
	### 属性? : [Element] @ ..5
		data modify storage asset:magic Raw.Elements set value ["Flamme"]
## 引数の確認
	function asset.lib:magic/type/check.argument
