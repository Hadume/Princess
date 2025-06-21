#> player:effects/take/loop/check.same_effect
# 同じ効果が付与されていないか確認
# @within function player:effects/take/loop/

## 同じデータがなかったら、それで終わり
    $execute unless data storage dat: _.Effects[{Name:$(Name)}] run return 1

## 効果値を取得
    execute store result score #effectAmount1 temp run data get storage temp: Effect.amount
    $execute if data storage dat: _.Effects[{Name:$(Name)}] store result score #effectAmount2 temp run data get storage dat: _.Effects[{Name:$(Name)}].amount

## 効果値がでかい方を残す
    execute if score #effectAmount1 temp >= #effectAmount2 temp run return 1
    execute if score #effectAmount1 temp < #effectAmount2 temp run return run data remove storage temp: Effect
