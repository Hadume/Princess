#> menu:skilltree/root/
# スキルツリーの処理
# @within function menu:skilltree/

## どこかをクリックしていたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:home/root/open
    execute unless entity @s[scores={skillTree=1..}] if items entity @s player.cursor *[custom_data~{menu:{skillTree:{}}}] run function menu:skilltree/root/move

## 欠けていたら修復
    execute unless score #invCount temp matches 27 run function menu:-common/repair {Parent:"skilltree",Child:"root"}
