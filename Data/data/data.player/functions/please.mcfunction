### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定されたエンティティ(@s)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# IDを持っていなければ、IDを割り当て
execute unless score @s PlayerID matches 1.. run function data.player:sys/allocate
# IDを一時変数にコピー
execute store result storage player: target_id int 1 run scoreboard players operation _ PlayerID = @s PlayerID
# 取得するIDに変化があるかどうか確認
execute store result storage player: update byte 1 run data modify storage player: last_id set from storage player: target_id
# ストレージ提供
execute if data storage player: {update:true} run function data.player:sys/provide
