#> lib:damage/display/schedule.loop/
# ダメージ表示中に常時実行
# @within function lib:damage/display/
# @private

## ダメージ表示用アイテムで
    execute as @e[type=item,tag=libDamage] run function lib:damage/display/schedule.loop/item

## ループ
    execute if entity @e[type=item,tag=libDamage] run schedule function lib:damage/display/schedule.loop/ 1t
