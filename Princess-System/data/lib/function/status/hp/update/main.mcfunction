#> lib:status/hp/update/main
# HPを更新
# @within function lib:status/hp/update/

## 最大体力を取得
    scoreboard players operation #hpMax temp = @s hpMax

## 表示
    scoreboard players set #hpDisplay temp 2000
    scoreboard players operation #hpDisplay temp *= #hp temp
    scoreboard players operation #hpDisplay temp /= #hpMax temp
    scoreboard players operation @s ScoreToHealth = #hpDisplay temp

## プレイヤーを回復
    execute if entity @s[type=player] unless score @s hpRgnTimer matches 1.. if score #hp temp < #hpMax temp run scoreboard players operation @s hpRgnTimer = @s hpRgnIntrvl

## MOBのステータス表示
    execute if entity @s[tag=enemy] run function #api:display/mob.name
    execute if entity @s[tag=boss,tag=aj.catboss.root] run scoreboard players operation $catboss ok_boss_health = @s hp

## 一時使用scoreHolderをリセット
    scoreboard players reset #hpMax temp
    scoreboard players reset #hpDisplay temp
