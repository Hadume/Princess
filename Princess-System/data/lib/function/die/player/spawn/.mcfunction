#> lib:die/player/spawn/
# スポーン地点に戻す
# @within function lib:die/player/tick/

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## スポーン地点が設定されてかったら、初期化
	execute unless data storage dat: _.SpawnPoint run data modify storage dat: _.SpawnPoint set value {Dimension:"5main",posx:-94.5d,posy:66.5d,posz:-19.5d,rotx:-90.0f,roty:0.0f}

## データをコピー
	data modify storage temp: SpawnPoint set from storage dat: _.SpawnPoint

##
	function lib:die/player/spawn/tp with storage temp: SpawnPoint

## 体力を回復
	data modify storage lib: RcvrHP.Amount set value 2147483647
	function #lib:status/hp/recover

## ゲームモードを戻す
	scoreboard players operation #Gamemode Temp = @s Gamemode
	execute if score #Gamemode Temp matches 0 run gamemode survival @s
	execute if score #Gamemode Temp matches 1 run gamemode creative @s
	execute if score #Gamemode Temp matches 2 run gamemode adventure @s
	execute if score #Gamemode Temp matches 3 run gamemode spectator @s

## スコアをリセット
	scoreboard players reset @s DeathTime
	scoreboard players reset @s Gamemode
	scoreboard players reset @s Dungeon

## 一時使用Storageを削除
	data remove storage temp: SpawnPoint
