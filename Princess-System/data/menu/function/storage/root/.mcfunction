#> menu:storage/root/
#
# @within function menu:

#> ページ番号
# @private
    #declare score_holder #page

## アイテムをセーブ
    scoreboard players operation #page temp = @s menu
    execute store result storage temp: page int 1 run scoreboard players operation #page temp %= #1000 const
    function menu:storage/root/items/save with storage temp:

## いらないアイテムを消す
    ###
        data remove storage api: Inventory[{slot:10b}]
        data remove storage api: Inventory[{slot:11b}]
        data remove storage api: Inventory[{slot:12b}]
        data remove storage api: Inventory[{slot:13b}]
        data remove storage api: Inventory[{slot:14b}]
        data remove storage api: Inventory[{slot:15b}]
        data remove storage api: Inventory[{slot:16b}]

    ###
        data remove storage api: Inventory[{slot:19b}]
        data remove storage api: Inventory[{slot:20b}]
        data remove storage api: Inventory[{slot:21b}]
        data remove storage api: Inventory[{slot:22b}]
        data remove storage api: Inventory[{slot:23b}]
        data remove storage api: Inventory[{slot:24b}]
        data remove storage api: Inventory[{slot:25b}]

    ###
        data remove storage api: Inventory[{slot:28b}]
        data remove storage api: Inventory[{slot:29b}]
        data remove storage api: Inventory[{slot:30b}]
        data remove storage api: Inventory[{slot:31b}]
        data remove storage api: Inventory[{slot:32b}]
        data remove storage api: Inventory[{slot:33b}]
        data remove storage api: Inventory[{slot:34b}]


## 一時使用scoreHolderをリセット
    scoreboard players reset #page temp

## 一時使用storageを削除
    data remove storage temp: page

## どこかをクリックしていたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:home/root/open
    execute if entity @s[scores={menu=5001..}] if items entity @s player.cursor *[custom_data~{menu:{pagePrev:1b}}] run return run function menu:storage/root/page/prev
    execute if items entity @s player.cursor *[custom_data~{menu:{pageNext:1b}}] run return run function menu:storage/root/page/next
    execute if items entity @s player.cursor *[custom_data~{menu:{storageImportant:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
    execute if items entity @s player.cursor *[custom_data~{menu:{storageMaterial:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}

## 欠けていたら修復
    execute unless score #invCount temp matches 6 run function menu:-common/repair {Parent:"storage",Child:"root"}
