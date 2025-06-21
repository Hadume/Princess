#> menu:communicate/root/
#
# @within function menu:

## どこかをクリックしていたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:communicate/back
    execute if items entity @s player.cursor *[custom_data~{menu:{CommunicatePlayer:1b}}] run return run function menu:communicate/select_action/open
    #execute if entity @s[scores={menu=501..}] if items entity @s player.cursor *[custom_data~{menu:{pagePrev:1b}}] run return run function menu:pages/storage/-page/prev
    #execute if items entity @s player.cursor *[custom_data~{menu:{pageNext:1b}}] run return run function menu:pages/storage/-page/next

## 欠けていたら修復
    execute unless score #invCount temp matches 27 run function menu:-common/repair {Parent:"communicate",Child:"root"}
