#> asset:magic/52401/types
#
# @within function asset:magic/52401/cast/check.condition

## タイプを設定
	### 魔法名; JsonText
		data modify storage asset:magic Raw.Name set value '{"text":"ルシフェル","color":"red"}'
	### 消費魔力; Int
		data modify storage asset:magic Raw.MP set value 5
	### クールタイム; Int
		data modify storage asset:magic Raw.Cooltime set value 200
	### 持続時間; Int; (任意)
		data modify storage asset:magic Raw.Duration set value 200
	### 範囲; Float; (任意)
		data modify storage asset:magic Raw.Range set value 5.0f
	### 対象; List.String; ["Enemy", "Player"]; (任意)
		data modify storage asset:magic Raw.Targets set value ["Player"]
	### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
		data modify storage asset:magic Raw.Elements set value ["Licht"]
##
	function asset.lib:magic/types/check.condition/
