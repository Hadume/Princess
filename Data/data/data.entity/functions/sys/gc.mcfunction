### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガベージコレクタ

# 前回存在を確認したIDを移動させる
data modify storage data:entity id append from storage data:entity id[0]
data remove storage data:entity id[0]

# 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
execute store result score #_ Entity run data get storage data:entity id[0]
scoreboard players remove #_ Entity 2147483647
scoreboard players set #_ EntityID 0
scoreboard players operation * EntityID -= #_ Entity
scoreboard players operation #_ EntityID > * EntityID
scoreboard players operation * EntityID += #_ Entity

# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
scoreboard players operation #_ Entity >< #_ EntityID
execute store result score #_ EntityID run data get storage data:entity id[0]
execute if score #_ EntityID > #_ Entity run function data.entity:sys/gc_loop
scoreboard players operation #_ Entity >< #_ EntityID

# loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
# 2prev
execute store result score #_ Entity run data get storage data:entity id[-1]
execute if score #_ Entity matches 0 run scoreboard players add #_ Entity 65536
execute if score #_ EntityID matches 0 run scoreboard players add #_ Entity 65536
execute if score #_ EntityID matches 0 run scoreboard players add #_ EntityID 65536
scoreboard players operation #_ Entity += #_ Entity
# 2prev - 2x
scoreboard players operation #_ Entity -= #_ EntityID
scoreboard players operation #_ Entity -= #_ EntityID
# 3x - 2prev
scoreboard players operation #_ EntityID -= #_ Entity
# 3x - 2prev - next
execute store result score #_ Entity run data get storage data:entity id[1]
scoreboard players operation #_ EntityID -= #_ Entity
execute if score #_ EntityID matches -1.. run function data.entity:sys/gc
