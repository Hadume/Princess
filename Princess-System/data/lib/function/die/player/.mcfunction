#> lib:die/player/
# プレイヤーの死亡処理
# @within function lib:die/

## 死亡タイマーを開始
    scoreboard players set @s DeathTime 40

## 目の前を暗くする
    effect give @s blindness 2 0 true

## ゲームモードを変更
    ### 現在のゲームモードを取得
        execute if entity @s[gamemode=survival] run scoreboard players set @s Gamemode 0
        execute if entity @s[gamemode=creative] run scoreboard players set @s Gamemode 1
        execute if entity @s[gamemode=adventure] run scoreboard players set @s Gamemode 2
        execute if entity @s[gamemode=spectator] run scoreboard players set @s Gamemode 3

    gamemode spectator @s

## 伝える
    tellraw @s {"text": "\n死んでしまった...","color": "red","bold": true}
