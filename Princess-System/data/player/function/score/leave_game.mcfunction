#> player:score/leave_game
# ゲームから退出したら
# @within function main:tick/player

## スピードを更新
    function #lib:status/speed/update

## メニューをホームへ
    execute unless entity @s[scores={menu=1}] store result score #menu temp run function menu:home
    execute if score #menu temp = #menu temp run function menu:change_page

## スコアをリセット
    scoreboard players reset @s leaveGame

## 一時使用scoreHolderをリセット
    scoreboard players reset #menu temp
