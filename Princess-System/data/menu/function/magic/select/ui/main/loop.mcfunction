#> menu:magic/select/ui/main/loop
#
# @within function menu:magic/select/ui/

## ループ終了
	$execute unless data storage temp: Magics[$(Index)] run return 1
	execute unless data storage temp: Slots[] run return 10

## データを消す
	item replace block 0 -64 0 container.0 with air

## アイコンを設定
	$data modify storage asset:magic ID set from storage temp: Magics[$(Index)]
	function #asset:magic/icon with storage asset:magic

## アイテムを設定
	execute if items block 0 -64 0 container.0 * run function menu:magic/select/ui/main/icon

## Slotを消す
	data remove storage temp: Slots[-1]

## 増やす
	scoreboard players add #Index Temp 1
	execute store result storage temp: Index int 1 run scoreboard players get #Index Temp

## ループ
	function menu:magic/select/ui/main/loop with storage temp:
