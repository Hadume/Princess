#> menu:
# インベントリUIを更新
# @within function main:advancements/inventory_changed

say menu:

## UIのアイテムの数を取得
    execute store result score #invCount temp if data storage api: Inventory[{components:{"minecraft:custom_data":{menu:{}}}}]

## ページごとの動作
    execute store result score #menu temp run function menu:main

## ページが変更されたら
    execute unless score #menu temp matches 0 run function menu:change_page

## 一時使用scoreHolderをリセット
    scoreboard players reset #menu temp
    scoreboard players reset #invCount temp

## 一時使用storageを削除
    execute if data storage temp: menu run data remove storage temp: menu
