#> asset:dungeon/59010/boss/exit
# ダンジョンクリア処理
# @within function asset:mob/53006/death/

## プレイヤーをダンジョンの外に出す
	execute as @a[scores={Dungeon=59011}] run scoreboard players set @s DungeonBossExit 40
