#> lib:damage/schedule.loop
# ダメージ表示用Entityで常時実行
# @within function lib:damage/display
# @private

## スコアを増加
    execute as @e[type=item,tag=Lib.Damage] run scoreboard players add @s Lib 1

## 表示を消す
    execute as @e[type=item,tag=Lib.Damage,scores={Lib=10..}] run kill @s

## ループ
    execute if entity @e[type=item,tag=Lib.Damage] run schedule function lib:damage/schedule.loop 1t
