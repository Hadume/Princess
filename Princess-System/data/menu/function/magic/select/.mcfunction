#> menu:magic/select/
#
# @within function menu:magic/

## どこかをクリックしたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:magic/root/open
    execute if items entity @s player.cursor *[custom_data~{menu:{Magic:{}}}] run return run function menu:magic/select/set.magic

## 欠けていたら修復
    execute unless score #invCount temp matches 27 run function menu:-common/repair {Parent:"magic",Child:"select"}
