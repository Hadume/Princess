#> asset.lib:dungeon/player/boss/enter/cant
#
# @within function asset.lib:dungeon/player/boss/enter/

## 伝える
	tellraw @s [{"text": "資格石","color":"red","bold": true},{"text":"が足りないようだ。\nダンジョン内の魔物を倒して","bold": false},"資格石",{"text":"を手に入れよう！","bold": false}]

## 音
	playsound block.note_block.bass block @s ~ ~ ~ 0.75 1.0 0.0

## 移動
	function #asset:dungeon/boss/entrance with storage asset:dungeon
