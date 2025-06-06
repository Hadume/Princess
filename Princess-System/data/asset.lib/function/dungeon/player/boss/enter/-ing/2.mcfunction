#> asset.lib:dungeon/player/boss/enter/-ing/2
# ボス戦に入る前の演出、2
# @within function asset.lib:dungeon/player/tick/boss/enter

## 伝える
    tellraw @s {"text": "\nボスは相当怒っているようだ...","bold": true}

## 音
    playsound block.note_block.bell block @s ~ ~ ~ 0.75 1.0 0.0
