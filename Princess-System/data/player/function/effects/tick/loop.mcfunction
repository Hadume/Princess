#> player:effects/tick/loop
# 効果の常時実行
# @within function player:effects/tick/

## ループ終了
	execute unless data storage temp: Effects[] run return 1

## データを移動
	data modify storage temp: Effect set from storage temp: Effects[-1]

## 時間を減らす
	execute store result score #Duration Temp run data get storage temp: Effect.Duration
	scoreboard players remove #Duration Temp 1
	execute store result storage temp: Effect.Duration int 1 run scoreboard players get #Duration Temp

## 効果
	execute if data storage temp: {Effect:{Name:"HP"}} run function player:effects/tick/main/hp
	execute if data storage temp: {Effect:{Name:"MP"}} run function player:effects/tick/main/mp

## データを消す
	execute if score #Duration Temp matches ..0 run function player:effects/tick/remove.effect/

## データを返す
	execute if score #Duration Temp matches 1.. run data modify storage temp: UpdatedEffects append from storage temp: Effect

## データを消す
	data remove storage temp: Effects[-1]

## ループ
	function player:effects/tick/loop
