#> menu:communicate/root/
#
# @within function menu:

## どこかをクリックしていたら
    execute if items entity @s player.cursor *[custom_data~{Menu:{Back:1b}}] run return run function menu:communicate/back
    execute if items entity @s player.cursor *[custom_data~{Menu:{CommunicatePlayer:1b}}] run return run function menu:communicate/select_action/open
    #execute if entity @s[scores={Menu=501..}] if items entity @s player.cursor *[custom_data~{Menu:{PagePrev:1b}}] run return run function menu:pages/storage/-page/prev
    #execute if items entity @s player.cursor *[custom_data~{Menu:{PageNext:1b}}] run return run function menu:pages/storage/-page/next

## 欠けていたら修復
    execute unless score #InvCount Temp matches 27 run function menu:-common/repair {Parent:"communicate",Child:"root"}
