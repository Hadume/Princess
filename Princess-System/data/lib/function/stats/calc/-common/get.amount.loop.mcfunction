#> lib:stats/calc/-common/get.amount.loop
#
# @within function lib:stats/calc/-common/
# @private

## ループ終了
	execute unless data storage temp: CalcStats[] run return 1

## データをコピー
	data modify storage temp: Stat set from storage temp: CalcStats[-1]

## 数値を取得
	execute store result score #Amount.Stored Temp run data get storage temp: Stat.Amount

## 数値を保存
	execute if data storage temp: {Stat:{Operation:1}} run scoreboard players operation #Amount.Stored.1 Temp += #Amount.Stored Temp
	execute if data storage temp: {Stat:{Operation:2}} run scoreboard players operation #Amount.Stored.2 Temp += #Amount.Stored Temp
	execute unless data storage temp: {Stat:{Operation:1}} unless data storage temp: {Stat:{Operation:2}} run scoreboard players operation #Amount Temp += #Amount.Stored Temp

## データを削除
	data remove storage temp: CalcStats[-1]

## ループ
	function lib:stats/calc/-common/get.amount.loop
