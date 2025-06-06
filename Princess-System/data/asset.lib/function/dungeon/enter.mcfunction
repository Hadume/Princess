#> asset.lib:dungeon/enter
# ダンジョンに入場する
# @within tag/function asset.lib:dungeon/enter

## ダンジョン内に移動
    function #asset:dungeon/enter with storage asset:dungeon

## ダンジョンIDを記録
    scoreboard players operation @s Dungeon = #DungeonID Temp

## 少し暗くする
    effect give @s blindness 2 0 true

## 音を鳴らす
    execute at @s run playsound block.portal.travel block @s ~ ~ ~ 0.25 1.0 0.0
