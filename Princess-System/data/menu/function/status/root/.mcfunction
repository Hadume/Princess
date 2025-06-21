#> menu:status/root/
#
# @within function menu:

## どこかをクリックしていたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:home/root/open

## 欠けていたら修復
    execute unless score #invCount temp matches 27 run function menu:-common/repair {Parent:"status",Child:"root"}
