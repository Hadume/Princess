#> asset.lib:dungeon/tick/player/main
# ダンジョン内のプレイヤーが常時実行する処理
# @within function asset.lib:dungeon/tick/player/

## ボス戦の演出を実行
    execute if entity @s[scores={dungeonbossEnter=1..}] run function asset.lib:dungeon/player/tick/boss/enter
    execute if entity @s[scores={dungeonbossExit=1..}] run function asset.lib:dungeon/player/tick/boss/exit

## ダンジョンの範囲外に出たら、初期地点に戻す
    $execute if score #dungeonMisc temp matches 0 if entity @s[predicate=!asset:dungeon/$(ID)/] run return run function #asset.lib:dungeon/enter
    $execute unless score @s dungeonAnimation matches 1.. if entity @s[predicate=!asset:dungeon/$(ID)/boss/$(boss)] run return run function #asset:dungeon/boss/enter with storage asset:dungeon
