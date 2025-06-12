#> lib:status/hp/update/
#
# @within tag/function lib:status/hp/update

## 体力を持ってなかったら、体力を最大体力と同じにする
    execute unless entity @s[scores={hp=..2147483647}] run scoreboard players operation @s hp = @s hpMax

## 体力をコピー
    scoreboard players operation #hp temp = @s hp

## 体力が0以下だったら
    execute if score #hp temp matches ..0 run function #lib:die

## 体力が1以上だったら
    execute if score #hp temp matches 1.. run function lib:status/hp/update/main

## 一時使用scoreHolderをリセット
    scoreboard players reset #hp temp
