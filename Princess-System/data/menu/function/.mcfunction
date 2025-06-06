#> menu:
# インベントリUIを更新
# @within function main:advancements/inventory_changed

say menu:

## UIのアイテムの数を取得
    execute store result score #InvCount Temp if data storage api: Inventory[{components:{"minecraft:custom_data":{Menu:{}}}}]

## ページごとの動作
    execute store result score #Menu Temp run function menu:main

## ページが変更されたら
    execute unless score #Menu Temp matches 0 run function menu:change_page

## 一時使用ScoreHolderをリセット
    scoreboard players reset #Menu Temp
    scoreboard players reset #InvCount Temp

## 一時使用Storageを削除
    execute if data storage temp: Menu run data remove storage temp: Menu
