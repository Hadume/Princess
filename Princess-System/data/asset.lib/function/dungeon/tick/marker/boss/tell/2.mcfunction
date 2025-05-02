#> asset.lib:dungeon/tick/marker/boss/tell/2
# ボス戦に入る前の演出、2
# @within function asset.lib:dungeon/tick/marker/boss/tell/tick

## 伝える
	tellraw @s {"text": "\nボスは相当怒っているようだ...","bold": true}

## 音
	playsound block.note_block.bell block @s ~ ~ ~ 0.75 1.0 0.0
