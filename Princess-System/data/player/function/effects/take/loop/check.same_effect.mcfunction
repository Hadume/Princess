#> player:effects/take/loop/check.same_effect
# 同じ効果が付与されていないか確認
# @within function player:effects/take/loop/

## 同じデータがなかったら、それで終わり
	$execute unless data storage dat: _.Effects[{Name:$(Name)}] run return 1

## 効果値を取得
	execute store result score #EffectAmount.1 Temp run data get storage temp: Effect.Amount
	$execute if data storage dat: _.Effects[{Name:$(Name)}] store result score #EffectAmount.2 Temp run data get storage dat: _.Effects[{Name:$(Name)}].Amount

## 効果値がでかい方を残す
	execute if score #EffectAmount.1 Temp >= #EffectAmount.2 Temp run return 1
	execute if score #EffectAmount.1 Temp < #EffectAmount.2 Temp run return run data remove storage temp: Effect
