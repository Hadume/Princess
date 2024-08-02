#> asset:magic/52202/type
#
# @within function asset:magic/52202/cast/check.condition

## タイプを設定
	### 魔法名; JsonText
		data modify storage asset:magic Raw.Name set value '{"text":"ウェーブ","color":"red"}'
	### 消費魔力; Int
		data modify storage asset:magic Raw.MP set value 20
	### クールタイム; Int
		data modify storage asset:magic Raw.Cooltime set value 40
	### 効果値; Int; (任意)
		data modify storage asset:magic Raw.Amount set value 20
	### 範囲; Float; (任意)
		data modify storage asset:magic Raw.Range set value 5.0f
	### 対象; List.String; ["Enemy", "Player"]; (任意)
		data modify storage asset:magic Raw.Targets set value ["Enemy"]
	### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
		data modify storage asset:magic Raw.Elements set value ["Wasser"]
##
	function asset.lib:magic/type/check.argument
