#> asset:magic/52301/cast/mob
# MOBを引き寄せる
# @within function asset:magic/52301/cast/

## データを移行
	data modify storage lib: Spread.At set from storage temp: 52301.Pos
	data modify storage lib: Spread.Amount set value [1.5f,0.0f]
	data modify storage lib: Spread.OnGround set value 1b

##
	function lib:spread/
