#> api:e_dat/init
# eDatを初期化
# @within function api:init

#> Scoreboard
# @public
	scoreboard objectives add ID dummy

## 割り当て済みID保存ストレージ
	data modify storage dat: id set value [0]

## 最後にアクセスした奴
	data modify storage dat: LastID set value 0
