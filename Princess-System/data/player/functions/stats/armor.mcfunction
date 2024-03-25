#> player:stats/armor
# 
# @within function main:advancements/inventory_changed

## データを用意
  data modify storage main:temp Armor set value [{},{},{},{}]
## 各装備を変更
  execute if data storage api: Inventory[{Slot:103b}] run data modify storage main:temp Armor[-4] set from storage api: Inventory[{Slot:103b}]
  execute if data storage api: Inventory[{Slot:102b}] run data modify storage main:temp Armor[-3] set from storage api: Inventory[{Slot:102b}]
  execute if data storage api: Inventory[{Slot:101b}] run data modify storage main:temp Armor[-2] set from storage api: Inventory[{Slot:101b}]
  execute if data storage api: Inventory[{Slot:100b}] run data modify storage main:temp Armor[-1] set from storage api: Inventory[{Slot:100b}]
## 装備が変更されたか確認
  execute store success storage main:temp Updated byte 1 run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Armor set from storage main:temp Armor
## ステータスを更新
  execute if data storage main:temp {Updated:1b} run function #lib:stats
## 一時使用Storageを削除
  data remove storage main:temp Updated
  data remove storage main:temp Armor
