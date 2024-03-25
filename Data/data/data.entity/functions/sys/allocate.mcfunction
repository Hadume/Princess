### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

# ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
function data.entity:sys/gc

# id[0] + id[-1] / 2 を割り当てIDに取る
execute store result score #_ EntityID run data get storage data:entity id[-1]
execute store result score #_ Entity run data get storage data:entity id[0]
execute if score #_ EntityID matches 0 run scoreboard players set #_ EntityID 65536
scoreboard players operation #_ EntityID += #_ Entity
scoreboard players set #_ Entity 2
scoreboard players operation #_ EntityID /= #_ Entity

# 割り当てIDに追加
data modify storage data:entity id append value -1
execute store result storage data:entity id[-1] int 1 run scoreboard players get #_ EntityID
# 割り当てる
scoreboard players operation @s EntityID = #_ EntityID
