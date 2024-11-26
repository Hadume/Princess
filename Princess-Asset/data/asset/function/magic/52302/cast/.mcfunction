#> asset:magic/52302/cast/
# 魔法を発動
# @within function asset:magic/cast

## データをコピー
	data modify storage temp: Activating set from storage dat: _.Magic[{ID:52302}].Activating

## 発動を解除
	execute if data storage temp: {Activating:1b} run data modify storage dat: _.Magic[{ID:52302}] set value {ID:52302}
	execute if data storage temp: {Activating:1b} at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 2

##
	execute unless data storage temp: Activating run function asset:magic/52302/cast/main

## 一時使用Storageを削除
	data remove storage temp: Activating
