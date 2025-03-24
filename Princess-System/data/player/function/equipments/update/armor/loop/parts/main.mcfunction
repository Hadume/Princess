#> player:equipments/update/armor/loop/parts/main
# 部位ごとの装備が装備できるか確認
# @within function player:equipments/update/armor/loop/parts/

## Statsを削除
	$data remove storage dat: _.Stats[{id:"Armor.$(Parts)"}]

## Statsを移行
	execute if data storage temp: {Armor:{components:{"minecraft:custom_data":{Category:"Armor"}}}} run data modify storage lib: Stats.value set from storage temp: Armor.components."minecraft:custom_data".Stats
	$execute if data storage temp: {Armor:{components:{"minecraft:custom_data":{Category:"Armor.$(Parts)"}}}} run data modify storage lib: Stats.value set from storage temp: Armor.components."minecraft:custom_data".Stats

## idを設定
	$data modify storage lib: Stats.id set value "Armor.$(Parts)"
