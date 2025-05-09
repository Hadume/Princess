#> asset.lib:dungeon/player/boss/enter/-ing/1
# ボス戦に入る前の演出、1
# @within function asset.lib:dungeon/player/boss/enter/-ing/

## 伝える
	tellraw @s {"text": "\nボスの気配がする！","bold": true}

## 音
	playsound block.portal.travel block @s ~ ~ ~ 0.75 1.0 0.0
