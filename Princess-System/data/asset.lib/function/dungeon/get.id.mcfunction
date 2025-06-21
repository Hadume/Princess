#> asset.lib:dungeon/get.id
#
# @within function asset.lib:dungeon/**

## ダンジョン番号を取得
    scoreboard players operation #dungeonID temp = @s dungeon
    scoreboard players operation #dungeonMisc temp = #dungeonID temp

## ダンジョンID
    scoreboard players operation #dungeonID temp /= #10 const
    scoreboard players operation #dungeonID temp *= #10 const
    execute store result storage asset:dungeon ID int 1 run scoreboard players get #dungeonID temp

## ボス部屋番号
    scoreboard players operation #dungeonMisc temp %= #10 const
    execute store result storage asset:dungeon boss int 1 run scoreboard players get #dungeonMisc temp
