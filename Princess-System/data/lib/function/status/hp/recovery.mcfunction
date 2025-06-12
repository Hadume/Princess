#> lib:status/hp/recovery
# HPを回復
# @within tag/function lib:status/hp/recovery

## 引数の確認
    execute unless data storage lib:status hp.recovery.input run return run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"lib:status : storage[lib:status hp.recovery.input]"]

## 回復量を取得
    execute store result score #recovery temp run data get storage lib:status hp.recovery.input

## 回復
    scoreboard players operation @s hp += #recovery temp

## 回復しすぎたら、最大値まで戻す
    execute if score @s hp > @s hpMax run scoreboard players operation @s hp = @s hpMax

## 体力表示を更新
    function #lib:status/hp/update

## 引数を削除
    data remove storage lib:status hp.recovery.input

## 一時使用scoreHolderをリセット
    scoreboard players reset #recovery temp
