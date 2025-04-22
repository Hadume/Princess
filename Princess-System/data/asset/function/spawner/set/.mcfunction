#> asset:spawner/set/
# スポナーを設置
# @within tag/function asset:spawner/set

## IDを移す
	$data modify storage asset:spawner ID set value $(ID)

##
	execute summon marker at @s run function asset:spawner/set/init with storage asset:spawner
