#> player:effects/tick/remove.effect/stat
#
# @within function player:effects/tick/remove.effect/

## データを消す
	$data remove storage dat: _.Stats[{Name:$(Name),From:"Effect"}]

## Statsを更新
	$data modify storage lib: Stats set value [$(Name)]
	function #lib:stats
