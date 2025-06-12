#> lib:status/mp/recovery
# MPを回復
# @within tag/function lib:status/mp/recovery

## 引数の確認
    execute unless data storage lib:status mp.recovery.input run return run function lib:_common {function:"lib:status mp.recovery.",argument:"input"}

## 回復量を取得
    execute store result score #recovery temp run data get storage lib:status mp.recovery.input

## 回復
    scoreboard players operation @s mp += #recovery temp

## 回復しすぎたら、最大値まで戻す
    execute if score @s mp > @s mpMax run scoreboard players operation @s mp = @s mpMax

## 魔力表示を更新
    function #lib:status/mp/update

## 一時使用scoreHolderをリセット
    scoreboard players reset #recovery temp

## ライブラリ共通処理
    function lib:_common {function:"lib:status mp.recovery.",argument:"null"}
