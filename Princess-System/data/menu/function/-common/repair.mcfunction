#> menu:-common/repair
# UI修復の共通処理
# @within function menu:**

## アイテムを消す
    clear @s *[custom_data~{Menu:{}}]
    execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Menu:{}}}}}] run kill @s

## UIを修復
    $function menu:$(Parent)/$(Child)/ui/

## アイテムを返す
    function menu:-common/return.items/
