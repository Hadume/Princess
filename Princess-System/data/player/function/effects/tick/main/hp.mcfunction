#> player:effects/tick/main/hp
# 体力を回復
# @within function player:effects/tick/loop

## 値を取得
	data modify storage lib: RcvrHP.Amount set from storage temp: Effect.Amount

##
	function #lib:status/hp/recover
