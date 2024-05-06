#> main:advancements/shot_crossbow
# クロスボウを撃った
# @within function main:tick/player

## 
  data modify storage main: ShotCrossbow set value 1b
## 手に持っているアイテムを取得
  function api:get.nbt/selected_item/
## 魔法を唱える
  execute if data storage api: {SelectedItem:{tag:{Category:"Wand"}}} run function asset.lib:magic/cast/
## クロスボウをリロードする
  item modify entity @s weapon.mainhand main:charge_crossbow
## 一時使用Storageを削除
  data remove storage main: ShotCrossbow
## 進捗を剥奪
  advancement revoke @s only main:shot_crossbow
