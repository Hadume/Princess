#> asset:magic/52501/type
# 魔法のデータ
# @within function asset:magic/cast

## タイプを設定
	### 魔法名 : TextComponent
		data modify storage asset:magic Raw.Name set value '{"text":"タイムロック","color":"red"}'

	### 消費魔力 : int
		data modify storage asset:magic Raw.MP set value 15

	### クールタイム : int
		data modify storage asset:magic Raw.Cooltime set value 40

	### 持続時間? : int
		data modify storage asset:magic Raw.Duration set value 40

	### 範囲? : float
		data modify storage asset:magic Raw.Range set value 5.0f

	### 対象? : [Target] @ ..2
		data modify storage asset:magic Raw.Targets set value ["Enemy"]

	### 属性? : [Element] @ ..5
		data modify storage asset:magic Raw.Elements set value ["Dunkel"]


## 引数の確認
	function #asset.lib:magic/type
