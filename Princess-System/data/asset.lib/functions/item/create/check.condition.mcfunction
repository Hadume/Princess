#> asset.lib:item/create/check.condition
# アイテムを生成できるか確認
# @within asset:item/*/create/main
# @input storage asset.lib:item
# @output vector 0 -64 0 Items[0]

## 足りていなかったら
  execute store success storage asset:temp Error byte 1 unless data storage asset:item id run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "id","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:item Name run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "Name","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:item Category run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "Category","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless score #Rarity Asset = #Rarity Asset run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "Rarity","italic": true,"color": "red"}]
## 足りていたら
  execute unless data storage asset:temp Error run function asset.lib:item/create/main
## Storageを削除
  data remove storage asset:item id
  data remove storage asset:item Category
  data remove storage asset:item Name
  execute if data storage asset:item Lore run data remove storage asset:item Lore
  execute if data storage asset:item Stats run data remove storage asset:item Stats
  execute if data storage asset:item NBT run data remove storage asset:item NBT
## ScoreHolderをリセット
  scoreboard players reset #Rarity
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
