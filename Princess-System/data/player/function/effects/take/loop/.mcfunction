#> player:effects/take/loop/
# 効果を付与
# @within function player:effects/take/
# @private

## ループ終了
    execute unless data storage temp: Effects[] run return 1

## データを移動
    data modify storage temp: Effect set from storage temp: Effects[-1]

## 同じデータが無いか確認
    function player:effects/take/loop/check.same_effect with storage temp: Effect

## データを追加
    execute if data storage temp: Effect run function player:effects/take/loop/main with storage temp: Effect

## データを消す
    data remove storage temp: Effects[-1]

## ループ
    function player:effects/take/loop/
