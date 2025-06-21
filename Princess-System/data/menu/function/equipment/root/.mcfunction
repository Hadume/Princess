#> menu:equipment/root/
# 装備メニューの処理
# @within function menu:

## どこかをクリックしていたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:home/root/open

## 欠けていたら修復
    execute unless score #invCount temp matches 19 run function menu:-common/repair {Parent:"equipment",Child:"root"}
