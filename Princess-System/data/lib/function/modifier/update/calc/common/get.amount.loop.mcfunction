#> lib:stats/update/calc/common/get.amount.loop
#
# @within function lib:stats/update/calc/common/
# @private

## ループ終了
    execute unless data storage temp: CalcStats[] run return 1

## データをコピー
    data modify storage temp: Stat set from storage temp: CalcStats[-1]

## 数値を取得
    execute store result score #amountStored temp run data get storage temp: Stat.amount

## 数値を保存
    execute if data storage temp: {Stat:{Operation:1}} run scoreboard players operation #amountStored1 temp += #amountStored temp
    execute if data storage temp: {Stat:{Operation:2}} run scoreboard players operation #amountStored2 temp += #amountStored temp
    execute unless data storage temp: {Stat:{Operation:1}} unless data storage temp: {Stat:{Operation:2}} run scoreboard players operation #amount temp += #amountStored temp

## データを削除
    data remove storage temp: CalcStats[-1]

## ループ
    function lib:stats/update/calc/common/get.amount.loop
