#> lib:stats/update/calc/loop
#
# @within function lib:stats/update/main

## ループ終了
	execute unless data storage lib: Stats[] run return 1

## ステータスを移動
	data modify storage lib: Stat set from storage lib: Stats[-1]

## ステータスを計算
	function lib:stats/update/calc/main with storage lib:

## 例外処理
	execute if data storage lib: {Stat:"HP.Max"} run function lib:stats/update/calc/hp.max
	execute if data storage lib: {Stat:"MP.Max"} run function lib:stats/update/calc/mp.max
	execute if data storage lib: {Stat:"Speed"} run function lib:stats/update/calc/speed

## データを削除
	data remove storage lib: Stats[-1]

## ループ
	function lib:stats/update/calc/loop
