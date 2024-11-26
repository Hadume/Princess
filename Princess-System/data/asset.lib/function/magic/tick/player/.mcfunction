#> asset.lib:magic/tick/player/
#
# @within function main:tick/player

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## IDをコピー
	data modify storage temp: MagicCopy set from storage dat: _.Magic

## あったら実行
	function asset.lib:magic/tick/player/action.loop

## 一時使用Storageを削除
	data remove storage temp: MagicCopy
