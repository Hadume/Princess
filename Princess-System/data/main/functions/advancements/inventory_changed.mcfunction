#> main:advancements/inventory_changed
# インベントリーを更新した
# @within advancement main:inventory_changed

## 
  data modify storage main: InventoryChanged set value 1b
## インベントリーUI
  function inv_ui:clicked
## インベントリーを取得
  function api:get.nbt/inventory/
## オフハンドにアイテムがあったら
  execute if data storage api: {Inventory:[{Slot:-106b}]} run function player:offhand
## 一時使用Storageを削除
  data remove storage main: InventoryChanged
## 進捗を剥奪
  advancement revoke @s only main:inventory_changed
