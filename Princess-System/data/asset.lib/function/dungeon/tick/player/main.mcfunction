#> asset.lib:dungeon/tick/player/main
# ダンジョン内のプレイヤーが常時実行する処理
# @within function asset.lib:dungeon/tick/player/

## ボス戦の演出を実行
	execute if entity @s[scores={DungeonAnimation=1..}] run function asset.lib:dungeon/tick/marker/boss/tell/tick

## ダンジョンの範囲外に出たら、初期地点に戻す
	$execute if score #DungeonBossID Temp matches 0 if entity @s[predicate=!asset:dungeon/$(ID)/] run return run function #asset.lib:dungeon/enter with storage asset:dungeon
	$execute if entity @s[predicate=!asset:dungeon/$(ID)/boss/$(Boss)] run return run function #asset:dungeon/boss/enter with storage asset:dungeon
