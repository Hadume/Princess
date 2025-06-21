#> asset.lib:dungeon/marker/set
# ダンジョンのマーカーを設置する
# @within tag/function asset.lib:dungeon/marker/set

## tagを追加
    tag @s add dungeon

## IDを設定
    $scoreboard players set @s dungeon $(ID)
