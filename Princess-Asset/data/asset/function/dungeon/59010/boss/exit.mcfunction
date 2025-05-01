#> asset:dungeon/59010/boss/exit
# ダンジョンクリア処理
# @within function asset:mob/53006/death/

## IDを設定
	data modify storage asset:dungeon ID set value 59010

## プレイヤーをダンジョンの外に出す
	execute as @a[scores={Dungeon=59011}] run function #asset.lib:dungeon/exit
