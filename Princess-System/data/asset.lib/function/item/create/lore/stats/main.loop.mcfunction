#> asset.lib:item/create/lore/stats/main.loop
#
# @within function asset.lib:item/create/lore/stats/*

## 効果をコピー
	data modify storage temp: Stat set from storage asset:item Stats[0]

## 効果名
	execute if data storage temp: {Stat:{Name:"HPMax"}} run data modify storage temp: Amount.Name set value "最大体力"
	execute if data storage temp: {Stat:{Name:"MPMax"}} run data modify storage temp: Amount.Name set value "最大魔力"
	execute if data storage temp: {Stat:{Name:"ATK"}} run data modify storage temp: Amount.Name set value "攻撃力"
	execute if data storage temp: {Stat:{Name:"DEF"}} run data modify storage temp: Amount.Name set value "防御力"
	execute if data storage temp: {Stat:{Name:"Speed"}} run data modify storage temp: Amount.Name set value "スピード"

## 接尾
	execute if data storage temp: {Stat:{Operation:1}} run data modify storage temp: Amount.Suffix set value "%"
	execute if data storage temp: {Stat:{Operation:2}} run data modify storage temp: Amount.Suffix set value "%"

## 説明を生成
	loot replace block 0 -64 0 container.0 loot asset.lib:item/lore/stat

## 取得したデータを移行
	data modify storage temp: Item.components."minecraft:lore" append from block 0 -64 0 Items[0].components."minecraft:custom_name"

## 元のデータを削除
	data remove storage asset:item Stats[0]

## ループ
	execute if data storage asset:item Stats[] run function asset.lib:item/create/lore/stats/main.loop
