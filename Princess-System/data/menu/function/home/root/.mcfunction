#> menu:home/root/
# メニューの動作
# @within function menu:

## どこかをクリックしていたら
#execute if items entity @s player.cursor *[custom_data~{menu:{skillTree:1b}}] run return run function menu:skilltree/root/open
    execute if items entity @s player.cursor *[custom_data~{menu:{skillTree:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
    #execute if items entity @s player.cursor *[custom_data~{menu:{Equipment:1b}}] run return run function menu:equipment/root/open
    execute if items entity @s player.cursor *[custom_data~{menu:{Equipment:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
    execute if items entity @s player.cursor *[custom_data~{menu:{Magic:1b}}] run return run function menu:magic/root/open
    execute if items entity @s player.cursor *[custom_data~{menu:{Status:1b}}] run return run function menu:status/root/open
    execute if items entity @s player.cursor *[custom_data~{menu:{storage:1b}}] run return run function menu:storage/root/open
    execute if items entity @s player.cursor *[custom_data~{menu:{Quest:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
    #execute if items entity @s player.cursor *[custom_data~{menu:{Communicate:1b}}] run return run function menu:communicate/root/open/
    execute if items entity @s player.cursor *[custom_data~{menu:{Communicate:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}

## 欠けていたら修復
    execute unless score #invCount temp matches 27 run function menu:-common/repair {Parent:"home",Child:"root"}
