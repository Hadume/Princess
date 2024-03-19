#> asset.lib:item/give/check.condition
# 
# @within asset:item/*/give/main
# @input storage asset.lib: Items
# @output storage asset.lib: Item

## 足りていなかったら
  execute store success storage asset:temp Error byte 1 unless data storage asset:item id run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "id","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:item Name run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "Name","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:item Ctgry run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "Ctgry","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless score #Rarity Asset = #Rarity Asset run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "Rarity","italic": true,"color": "red"}]
## 足りていたら
  execute unless data storage asset:temp Error run function asset.lib:item/give/main
## Storageを削除
  data remove storage asset:item id
  data remove storage asset:item Name
  data remove storage asset:item Lore
  data remove storage asset:item Ctgry
  data remove storage asset:item NBT
## ScoreHolderをリセット
  scoreboard players reset #Rarity
## 一時使用Storageを削除
  data remove storage asset:temp Error
