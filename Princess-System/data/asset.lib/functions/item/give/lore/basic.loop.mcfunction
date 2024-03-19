#> asset.lib:item/give/lore/basic.loop
# 
# @within function asset.lib:item/give/main
# @private

## 説明を取得
  loot replace block 0 -64 0 container.0 loot asset.lib:item/lore/basic
## 取得したデータを移行
  data modify storage asset:temp Lore append from block 0 -64 0 Items[0].tag.display.Name
## 元のデータを削除
  data remove storage asset: Item.Lore[0]
## ループ
  execute if data storage asset: Item.Lore[] run function asset.lib:item/give/lore/basic.loop
