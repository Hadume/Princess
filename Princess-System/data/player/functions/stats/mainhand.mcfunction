#> player:stats/mainhand
# 
# @within function main:tick/player

## SelectedItemを取得
  function api:get.nbt/selected_item/
## データを用意
  data modify storage main:temp Weapon set value [{},{}]
## 各装備を変更
  execute if data storage api: SelectedItem run data modify storage main:temp Weapon[-2] set from storage api: SelectedItem
## 装備が変更されたか確認
  execute store success storage main:temp Updated byte 1 run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Weapon set from storage main:temp Weapon
## 装備の効果を反映
  execute if data storage main:temp {Updated:1b} run function #lib:stats
## 一時使用Storageを削除
  data remove storage main:temp Updated
  data remove storage main:temp Weapon
