#> api:e_dat/write
# データの書き込み
# @within function api:e_dat/please

## 書き込み
	$data modify storage dat:$(LastID) _ set from storage dat: _

## 読み込み
	$data modify storage dat: _ set from storage dat:$(ID) _

## 読み込まれたIDを保存
	data modify storage dat: LastID set from storage dat: ID
