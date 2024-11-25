#> api:e_dat/write
# データの書き込み
# @within function api:e_dat/please

## 書き込み
	$data modify storage dat:$(LastID) Data set from storage dat: Data

## 読み込み
	$data modify storage dat: Data set from storage dat:$(ID) Data

## 読み込まれたIDを保存
	data modify storage dat: LastID set from storage dat: ID
