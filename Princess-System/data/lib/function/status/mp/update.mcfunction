#> lib:status/mp/update
# MPを更新
# @within tag/function lib:status/mp/update

## 魔力を持ってなかったら、魔力を最大魔力と同じにする
    execute unless score @s mp = @s mp run scoreboard players operation @s mp = @s mpMax

## 回復
    execute unless score @s mpRgnTimer matches 1.. if score @s mp < @s mpMax run scoreboard players operation @s mpRgnTimer = @s mpRgnIntrvl
