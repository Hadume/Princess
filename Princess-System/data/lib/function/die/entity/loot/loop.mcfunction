#> lib:die/entity/loot/loop
# 報酬を渡すプレイヤーの特定
# @within function lib:die/entity/loot/
# @private

## IDをコピー
	execute store result score #ID Temp run data get storage temp: AttackBy[-1]

## IDが同じプレイヤーにドロップ品を
	execute as @a[tag=!Looted] if score @s ID = #ID Temp run function lib:die/entity/loot/main

## データを消す
	data remove storage temp: AttackBy[-1]

## ループ
	execute if data storage temp: AttackBy[] run function lib:die/entity/loot/loop
