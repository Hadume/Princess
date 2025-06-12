#> lib:_common
# ライブラリ共通処理
# @within function lib:damage/

## 引数を設定
    $data modify storage temp:lib argument set value $(argument)

## 引数が足りなかったら
    $execute unless data storage temp:lib {argument:"null"} run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"$(function)$(argument)"]

## 引数を削除
    $execute if data storage $(function)input run data remove storage $(function)input

## 一時使用storageを削除
    data remove storage temp:lib argument
