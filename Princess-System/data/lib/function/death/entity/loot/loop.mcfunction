#> lib:death/entity/loot/loop
# 報酬を渡すプレイヤーの特定
# @within function lib:death/entity/loot/
# @private

## IDをコピー
    execute store result score #ID temp run data get storage temp: attackBy[-1]

## IDが同じプレイヤーにドロップ品を
    execute as @a[tag=!looted] if score @s ID = #ID temp run function lib:death/entity/loot/main

## データを消す
    data remove storage temp: attackBy[-1]

## ループ
    execute if data storage temp: attackBy[] run function lib:death/entity/loot/loop
