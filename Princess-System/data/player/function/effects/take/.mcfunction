#> player:effects/take/
# 効果を付与
# @within function main:advancements/take_effects

## 手に持っていたアイテムの効果を取得
    data modify storage temp: Effects set from storage dat: _.NBT.SelectedItem.Data.components."minecraft:custom_data".Effects

## ループ
    function player:effects/take/loop/

## 一時使用scoreHolderをリセット
    scoreboard players reset #effectAmount1 temp
    scoreboard players reset #effectAmount2 temp

## 一時使用storageを削除
    data remove storage temp: Effects
    data remove storage temp: Effect
