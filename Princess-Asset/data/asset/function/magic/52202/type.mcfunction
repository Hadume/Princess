#> asset:magic/52202/type
# 魔法のデータ
# @within function asset:magic/52202/cast/check.condition

## タイプを設定

	### 魔法名 : TextComponent
		data modify storage asset:magic Raw.Name set value '{"text":"ウェーブ","color":"red"}'
	### 消費魔力 : int
		data modify storage asset:magic Raw.MP set value 20
	### クールタイム : int
		data modify storage asset:magic Raw.Cooltime set value 40
	### 効果値? : int
		data modify storage asset:magic Raw.Amount set value 20
	### 範囲? : float
		data modify storage asset:magic Raw.Range set value 5.0f
	### 対象? : [Target] @ ..2
		data modify storage asset:magic Raw.Targets set value ["Enemy"]
	### 属性? : [Element] @ ..5
		data modify storage asset:magic Raw.Elements set value ["Wasser"]
## 引数の確認
	function asset.lib:magic/type/check.argument
