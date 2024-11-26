#> asset:magic/52202/cast/
# 魔法を発動
# @within function asset:magic/cast

##
	data modify storage asset:magic Damage set value 1b
	function #asset.lib:magic/action/range/

## 音を鳴らす
	playsound entity.generic.splash master @a ~ ~ ~ 0.5 1
	playsound block.bubble_column.upwards_ambient master @a ~ ~ ~ 0.5 2
