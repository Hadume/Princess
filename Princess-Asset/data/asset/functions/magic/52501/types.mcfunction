#> asset:magic/52501/types
#
# @within function asset:magic/52501/cast/check.condition

## タイプを設定
	### 魔法名; JsonText
		data modify storage asset:magic Raw.Name set value '{"text":"タイムロック","color":"red"}'
	### 消費魔力; Int
		data modify storage asset:magic Raw.MP set value 15
	### クールタイム; Int
		data modify storage asset:magic Raw.Cooltime set value 40
	### 持続時間; Int; (任意)
		data modify storage asset:magic Raw.Duration set value 40
	### 範囲; Float; (任意)
		data modify storage asset:magic Raw.Range set value 5.0f
	### 対象; List.String; ["Enemy", "Player"]; (任意)
		data modify storage asset:magic Raw.Targets set value ["Enemy"]
	### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
		data modify storage asset:magic Raw.Elements set value ["Dunkel"]
##
	function asset.lib:magic/types/check.condition/
