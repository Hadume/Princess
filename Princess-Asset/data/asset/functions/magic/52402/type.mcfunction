#> asset:magic/52402/type
#
# @within function asset:magic/52402/cast/check.condition

## タイプを設定
	### 魔法名; JsonText
		data modify storage asset:magic Raw.Name set value '{"text":"レクイエム","color":"red"}'
	### 消費魔力; Int
		data modify storage asset:magic Raw.MP set value 15
	### クールタイム; Int
		data modify storage asset:magic Raw.Cooltime set value 40
	### 効果値; Int; (任意)
		data modify storage asset:magic Raw.Amount set value 10
	### 範囲; Float; (任意)
		data modify storage asset:magic Raw.Range set value 5.0f
	### 対象; List.String; ["Enemy", "Player"]; (任意)
		data modify storage asset:magic Raw.Targets set value ["Player"]
	### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
		data modify storage asset:magic Raw.Elements set value ["Licht"]
##
	function asset.lib:magic/type/check.argument
