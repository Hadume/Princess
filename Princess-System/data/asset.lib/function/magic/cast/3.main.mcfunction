#> asset.lib:magic/cast/player/3.main
#
# @within function asset.lib:magic/cast/player/2

## MPを減らす
    scoreboard players operation @s mp -= #mpNeed temp
    function #lib:status/mp/update

## 魔法を発動
    function #asset:magic/cast
