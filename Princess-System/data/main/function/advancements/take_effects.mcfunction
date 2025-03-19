#> main:advancements/take_effects
# 効果を受ける
# @within function main:tick/player

## 効果を付与
	execute if data storage dat: _.NBT.SelectedItem.Data.components."minecraft:custom_data".Effects run function player:effects/take/

## 進捗を剥奪
	advancement revoke @s only main:take_effects
