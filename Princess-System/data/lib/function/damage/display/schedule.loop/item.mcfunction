#> lib:damage/display/schedule.loop/item
# ダメージ表示用アイテムで
# @within function lib:damage/display/schedule.loop/

## スコアを増加
    scoreboard players add @s libDamageDisplay 1

## 表示を消す
    execute if entity @s[scores={libDamageDisplay=10..}] run return run kill @s
