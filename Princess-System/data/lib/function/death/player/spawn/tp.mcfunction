#> lib:death/player/spawn/tp
# プレイヤーをスポーン地点に戻す
# @within function lib:death/player/spawn/

##
    $execute in $(dimension) run tp @s $(posX) $(posY) $(posZ) $(rotX) $(rotY)
