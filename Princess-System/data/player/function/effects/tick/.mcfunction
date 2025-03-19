#> player:effects/tick/
# 効果の常時実行
# @within function main:tick/player

## データを移動
	data modify storage temp: Effects set from storage dat: _.Effects

## データを用意
	data modify storage temp: UpdatedEffects set value []

## ループ
	function player:effects/tick/loop

## データを返す
	data modify storage dat: _.Effects set from storage temp: UpdatedEffects

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Duration Temp

## 一時使用Storageを削除
	data remove storage temp: Effect
	data remove storage temp: Effects
	data remove storage temp: UpdatedEffects
