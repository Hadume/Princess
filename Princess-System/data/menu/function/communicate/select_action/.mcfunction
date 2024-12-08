#> menu:communicate/select_action/
# コミュニケート：行動選択
# @within function menu:communicate/

## どこかをクリックしていたら
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Back:1b}}] run return run function menu:communicate/root/open/
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{CommunicateParty:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{CommunicateTrade:1b}}] run function menu:communicate/select_action/trade/

## 欠けていたら修復
	execute unless score #InvCount Temp matches 27 run data modify storage menu: Function set value {Parent:"communicate",Child:"select_action"}
	execute unless score #InvCount Temp matches 27 run function menu:_common/repair with storage menu: Function
