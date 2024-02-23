#> main:score/used.coas
# 人参棒を使ったら
# @within function main:tick/player

## 人参棒を使った
  data modify storage main: UsedCOAS set value 1b
## 手のアイテムを取得
  function api:get.nbt/selected_item/
## 魔法を唱える
  execute if data storage api: SelectedItem.tag.Magic run function player:magic/cast
## スコアをリセット
  scoreboard players reset @s Used.COAS
## 一時使用Storageを削除
  data remove storage main: UsedCOAS
