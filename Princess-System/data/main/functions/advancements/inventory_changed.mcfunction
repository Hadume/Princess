#> main:advancements/inventory_changed
# 
# @within advancement main:inventory_changed

#> Advancement
# @within function
#   player:magic/cast
#   asset.lib:magic/cast/init/
 #declare advancement main:inventory_changed

## インベントリーを取得
  function api:get.nbt/inventory/
## 魔法を発動
  execute if data storage api: {Inventory:[{Slot:-106b,tag:{Magic:{}}}]} run function player:magic/cast
## アイテムを戻す
  function api:get.nbt/selected_item/
  execute unless data storage api: SelectedItem run item replace entity @s weapon.mainhand from entity @s weapon.offhand
  execute unless data storage api: SelectedItem run item replace entity @s weapon.mainhand from entity @s weapon.offhand
## 進捗を剥奪
  advancement revoke @s only main:inventory_changed
