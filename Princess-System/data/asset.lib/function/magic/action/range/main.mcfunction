#> asset.lib:magic/action/range/main
# 範囲内のMOBを特定
# @within function asset.lib:magic/action/range/

## 各数値取得
	data modify storage lib: Range.Amount set from storage asset:magic Range
	execute if data storage asset:magic Targets run data modify storage lib: Range.Targets set from storage asset:magic Targets
	### 対象数
		execute if data storage asset:magic Pierce run data modify storage lib: Range.Pierce set from storage asset:magic Pierce
		execute unless data storage asset:magic Pierce run data modify storage lib: Range.Pierce set value 2147483647


## ダメージを受けているMOBを除外
	execute if data storage asset:magic {Damage:1b} run data modify storage lib: Range.NoHurtTime set value 1b

## 範囲内のMOBを特定
	function #lib:range

## ボスが特定されたら
	execute as @e[tag=Lib.InRange,tag=Boss] at @s run function asset.lib:magic/action/range/boss

## ついでに攻撃する
	execute if data storage asset:magic {Damage:1b} run function asset.lib:magic/action/damage/
