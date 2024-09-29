#> asset:magic/52102/tick/main
#
# @within function asset:magic/52102/tick/

## ダメージ
	data modify storage asset:magic Damage set value 1b
	function asset.lib:magic/action/range/spell/
## パーティクル
	particle flame ~ ~ ~ 1 0 1 0 20 force
	execute rotated 90 0 run function asset:magic/52102/tick/particle
