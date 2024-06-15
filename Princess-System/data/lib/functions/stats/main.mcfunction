#> lib:stats/main
# ステータスを計算
# @within function lib:stats/

#> ScoreHolder
# @within function lib:stats/**
 #declare score_holder #Amount

## 個人ストレージ
  function api:get.nbt/inventory
  function api:get.nbt/selected_item/
## データを用意
  data modify storage lib:temp Armor set value [{},{},{},{}]
  data modify storage lib:temp Weapon set value [{},{}]
## 各装備を変更
  ### 装備
    execute if data storage api: Inventory[{Slot:103b}] run data modify storage lib:temp Armor[-4] set from storage api: Inventory[{Slot:103b}]
    execute if data storage api: Inventory[{Slot:102b}] run data modify storage lib:temp Armor[-3] set from storage api: Inventory[{Slot:102b}]
    execute if data storage api: Inventory[{Slot:101b}] run data modify storage lib:temp Armor[-2] set from storage api: Inventory[{Slot:101b}]
    execute if data storage api: Inventory[{Slot:100b}] run data modify storage lib:temp Armor[-1] set from storage api: Inventory[{Slot:100b}]
  ### 武器
    execute if data storage api: SelectedItem run data modify storage lib:temp Weapon[-2] set from storage api: SelectedItem
    execute if data storage api: Inventory[{Slot:-106b}] run data modify storage lib:temp Weapon[-1] set from storage api: Inventory[{Slot:-106b}]
## 更新
  execute if data storage lib: {Stats:["HPMax"]} run function lib:stats/calc/hp.max
  execute if data storage lib: {Stats:["MPMax"]} run function lib:stats/calc/mp.max
  execute if data storage lib: {Stats:["ATK"]} run function lib:stats/calc/atk
  execute if data storage lib: {Stats:["DEF"]} run function lib:stats/calc/def
  execute if data storage lib: {Stats:["Speed"]} run function lib:stats/calc/speed
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount
## 一時使用Storageを削除
  data remove storage lib:temp Armor
  data remove storage lib:temp Weapon
