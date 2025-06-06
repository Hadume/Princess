#> asset.lib:dungeon/player//tick/
# ダンジョン内でのプレイヤーの処理
# @within function main:tick/player

## ダンジョンIDを取得
	function asset.lib:dungeon/get.id

## メイン処理を実行
	function asset.lib:dungeon/player/tick/main with storage asset:dungeon

## 一時使用ScoreHolderをリセット
	scoreboard players reset #DungeonID Temp
	scoreboard players reset #DungeonMisc Temp
