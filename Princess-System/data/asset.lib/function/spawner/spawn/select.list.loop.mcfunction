#> asset.lib:spawner/spawn/select.list.loop
# リストのn番目を選択
# @within function asset.lib:spawner/spawn/main.loop
# @private

## データを削除
    data remove storage temp: data.Data[-1]

## スコアを減らす
    scoreboard players remove #rand temp 1

## まだ減らすなら
    execute if score #rand temp matches 1.. run function asset.lib:spawner/spawn/select.list.loop
