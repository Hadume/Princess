#> menu:magic/root/ui/icon
# 魔法ごとのアイコンを取得
# @within function menu:magic/root/ui/

## ID
	$data modify storage asset:magic ID set from storage temp: Magics[$(Index)]

## アイコン生成
	execute unless data storage asset:magic {ID:0} run return run function #asset:magic/icon with storage asset:magic

## からのアイコンを設定
	execute if data storage asset:magic {ID:0} in overworld run loot replace block 0 -64 0 container.0 loot menu:magic/root/no_wand
