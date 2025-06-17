#> asset.lib:mob/summon/damage_flags/
# ダメージ識別用flag
# @within function asset.lib:mob/summon/

## 値を増加
    scoreboard players add #dmgFlag global 1

## MOBに渡す
    scoreboard players operation @s dmgFlag = #dmgFlag global

## tagを追加する
    function asset.lib:mob/summon/damage_flags/add.tags
