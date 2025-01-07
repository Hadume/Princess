#> menu:equipment/root/
# 装備メニューの処理
# @within function menu:

## どこかをクリックしていたら
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Back:1b}}] run return run function menu:home/root/open

## 欠けていたら修復
	execute unless score #InvCount Temp matches 19 run function menu:_common/repair {Parent:"equipment",Child:"root"}
