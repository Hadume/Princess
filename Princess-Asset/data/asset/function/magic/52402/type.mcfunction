#> asset:magic/52402/type
# 魔法のデータ
# @within function asset:magic/cast

## タイプを設定
	### 魔法名 : TextComponent
		data modify storage asset:magic Raw.Name set value '{"text":"レクイエム","color":"red"}'

	### 消費魔力 : int
		data modify storage asset:magic Raw.MP set value 15

	### クールタイム : int
		data modify storage asset:magic Raw.Cooltime set value 40

	### 効果値? : int
		data modify storage asset:magic Raw.Amount set value 10

	### 範囲? : float
		data modify storage asset:magic Raw.Range set value 5.0f

	### 対象? : [Target] @ ..2
		data modify storage asset:magic Raw.Targets set value ["Player"]

	### 属性? : [Element] @ ..5
		data modify storage asset:magic Raw.Elements set value ["Licht"]
