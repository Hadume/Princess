#> lib:death/player/spawn/
# スポーン地点に戻す
# @within function lib:death/player/tick/

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## スポーン地点が設定されてかったら、初期化
    execute unless data storage dat: _.spawnPoint run data modify storage dat: _.spawnPoint set value {dimension:"5main",posX:-94.5d,posY:66.5d,posZ:-19.5d,rotX:-90.0f,rotY:0.0f}

##
    function lib:death/player/spawn/tp with storage dat: _.spawnPoint

## 体力を回復
    data modify storage lib:status hp.recovery.input set value 2147483647
    function #lib:status/hp/recovery

## ゲームモードを戻す
    scoreboard players operation #gamemode temp = @s gamemode
    execute if score #gamemode temp matches 0 run gamemode survival @s
    execute if score #gamemode temp matches 1 run gamemode creative @s
    execute if score #gamemode temp matches 2 run gamemode adventure @s
    execute if score #gamemode temp matches 3 run gamemode spectator @s

## スコアをリセット
    scoreboard players reset @s deathTime
    scoreboard players reset @s gamemode
    scoreboard players reset @s dungeon
