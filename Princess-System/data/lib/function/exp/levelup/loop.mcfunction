#> lib:exp/levelup/loop
# レベルアップ
# @within function lib:exp/levelup/*

## レベルを上げる
    scoreboard players add @s lvl 1

## ステータス上昇
    scoreboard players add @s hpMaxBase 10
    scoreboard players add @s mpMaxBase 10
    scoreboard players add @s atkBase 1
    scoreboard players add @s defBase 1

## 次レベルで必要な経験値量を計算
    scoreboard players operation #expNeed temp = @s expNeed
    scoreboard players operation #expNeed temp /= #10 const
    scoreboard players operation @s expNeed += #expNeed temp

## 経験値を反映
    scoreboard players operation @s exp += @s expNeed

## まだレベルアップできるなら
    execute if entity @s[scores={exp=..0}] run function lib:exp/levelup/loop
