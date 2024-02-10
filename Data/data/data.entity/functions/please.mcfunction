### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定されたエンティティ(@s)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# IDを持っていなければ、IDを割り当て
execute unless score @s EntityID matches 1.. run function data.entity:sys/allocate
# IDを一時変数にコピー
execute store result storage entity: target_id int 1 run scoreboard players operation _ EntityID = @s EntityID
# 取得するIDに変化があるかどうか確認
execute store result storage entity: update byte 1 run data modify storage entity: last_id set from storage entity: target_id
# ストレージ提供
execute if data storage entity: {update:true} run function data.entity:sys/provide
