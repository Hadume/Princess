#> asset.lib:item/give/main
# アイテムを生成
# @within function asset.lib:item/give/check.condition

## Storageを初期化
  data remove storage asset:temp Item
## Countを設定
  data modify storage asset:temp Item.Count set value 1b
## データを移行
  data modify storage asset:temp Item.id set from storage asset:item id
  data modify storage asset:temp Item.tag.Category set from storage asset:item Category
  data modify storage asset:temp Item.tag.rawText.Name set from storage asset:item Name
  execute if data storage asset:item Lore run data modify storage asset:temp Item.tag.rawText.Lore set from storage asset:item Lore
  execute if data storage asset:item Stats run data modify storage asset:temp Item.tag.Stats set from storage asset:item Stats
## NBT
  ### 設定
    data modify storage asset:temp Item.tag.Unbreakable set value 1b
    data modify storage asset:temp Item.tag.RepairCost set value -2147483648
    data modify storage asset:temp Item.tag.AttributeModifiers set value []
    data modify storage asset:temp Item.tag.HideFlags set value 127
  ### 上書き
    execute if data storage asset:item NBT run data modify storage asset:temp Item.tag merge from storage asset:item NBT
## 名前を設定
  loot replace block 0 -64 0 container.0 loot asset.lib:item/name/basic
  data modify storage asset:temp Item.tag.display.Name set from block 0 -64 0 Items[0].tag.display.Name
## 説明を設定
  ### 通常
    function asset.lib:item/give/lore/basic.loop
  ### 効果
    execute if data storage asset:item Stats run function asset.lib:item/give/lore/stats/
  ### レアリティ
    data modify storage asset:temp Lore append value '{"text":""}'
    loot replace block 0 -64 0 container.0 loot asset.lib:item/lore/rarity
    data modify storage asset:temp Lore append from block 0 -64 0 Items[0].tag.display.Name
  ### 代入
    data modify storage asset:temp Item.tag.display.Lore set from storage asset:temp Lore
## アイテムを用意
  item replace block 0 -64 0 container.0 with cod
  data modify block 0 -64 0 Items[0] set from storage asset:temp Item
## 一時使用Storageを削除
  data remove storage asset:temp Item
  data remove storage asset:temp Lore
