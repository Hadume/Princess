#> lib:die/player/spawn/tp
# プレイヤーをスポーン地点に戻す
# @within function lib:die/player/spawn/

##
	$execute in $(Dimension) run tp @s $(posx) $(posy) $(posz) $(rotx) $(roty)
