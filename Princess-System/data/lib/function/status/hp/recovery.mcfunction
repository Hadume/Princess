#> lib:status/hp/recovery
# HPを回復
# @within tag/function lib:status/hp/recovery

## 引数の確認
    execute unless data storage lib:status hp.recovery.input run return run function lib:_common {function:"lib:status hp.recovery.",argument:"input"}

## 回復量を取得
    execute store result score #recovery temp run data get storage lib:status hp.recovery.input

## 回復
    scoreboard players operation @s hp += #recovery temp

## 回復しすぎたら、最大値まで戻す
    execute if score @s hp > @s hpMax run scoreboard players operation @s hp = @s hpMax

## 体力表示を更新
    function #lib:status/hp/update

## 一時使用scoreHolderをリセット
    scoreboard players reset #recovery temp

## ライブラリ共通処理
    function lib:_common {function:"lib:status hp.recovery.",argument:"null"}
