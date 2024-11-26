#> asset.lib:magic/action/damage/entity
#
# @within function asset.lib:magic/action/damage/main

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## 攻撃者のIDを保存
	data modify storage dat: _.AttackBy append from storage temp: Magic.CasterID

## 防御力を取得
	scoreboard players operation #Lib.DEF Lib = @s DEF

## ダメージを与える
	execute store result score #Lib.ATK Lib run data get storage asset:magic Amount
	execute at @s anchored eyes run function #lib:damage

## ダメージを保存
	scoreboard players operation #StoredDamage Temp += #Lib.Damage Lib

## ダメージ表示
	damage @s 0.00000000000000001 out_of_world by @e[tag=This,limit=1]
