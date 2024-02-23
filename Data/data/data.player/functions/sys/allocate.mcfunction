### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

# ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
function data.player:sys/gc

# id[0] + id[-1] / 2 を割り当てIDに取る
execute store result score _ PlayerID run data get storage player: id[-1]
execute store result score _ Player run data get storage player: id[0]
execute if score _ PlayerID matches 0 run scoreboard players set _ PlayerID 65536
scoreboard players operation _ PlayerID += _ Player
scoreboard players set _ Player 2
scoreboard players operation _ PlayerID /= _ Player

# 割り当てIDに追加
data modify storage player: id append value -1
execute store result storage player: id[-1] int 1 run scoreboard players get _ PlayerID
# 割り当てる
scoreboard players operation @s PlayerID = _ PlayerID
