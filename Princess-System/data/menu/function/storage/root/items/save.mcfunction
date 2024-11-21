#> menu:storage/root/items/save
# アイテムを保存
# @within function menu:storage/root/

## 要らないデータを消す
	data modify storage temp: PageItems set from storage api: Inventory
	data remove storage temp: PageItems[{components:{"minecraft:custom_data":{Menu:{}}}}]

##
	$data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Menu.Storage[$(Page)] set from storage temp: PageItems

## 一時使用Storageを削除
	data remove storage temp: PageItems
