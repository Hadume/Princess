### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガベージコレクタ

# 前回存在を確認したIDを移動させる
data modify storage data:player id append from storage data:player id[0]
data remove storage data:player id[0]

# 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
execute store result score #_ Player run data get storage data:player id[0]
scoreboard players remove #_ Player 2147483647
scoreboard players set #_ PlayerID 0
scoreboard players operation * PlayerID -= #_ Player
scoreboard players operation #_ PlayerID > * PlayerID
scoreboard players operation * PlayerID += #_ Player

# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
scoreboard players operation #_ Player >< #_ PlayerID
execute store result score #_ PlayerID run data get storage data:player id[0]
execute if score #_ PlayerID > #_ Player run function data.player:sys/gc_loop
scoreboard players operation #_ Player >< #_ PlayerID

# loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
# 2prev
execute store result score #_ Player run data get storage data:player id[-1]
execute if score #_ Player matches 0 run scoreboard players add #_ Player 65536
execute if score #_ PlayerID matches 0 run scoreboard players add #_ Player 65536
execute if score #_ PlayerID matches 0 run scoreboard players add #_ PlayerID 65536
scoreboard players operation #_ Player += #_ Player
# 2prev - 2x
scoreboard players operation #_ Player -= #_ PlayerID
scoreboard players operation #_ Player -= #_ PlayerID
# 3x - 2prev
scoreboard players operation #_ PlayerID -= #_ Player
# 3x - 2prev - next
execute store result score #_ Player run data get storage data:player id[1]
scoreboard players operation #_ PlayerID -= #_ Player
execute if score #_ PlayerID matches -1.. run function data.player:sys/gc
