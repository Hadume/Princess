### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 割り当て解放

# データを削除
function data.player:sys/provide
data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# 割り当て済みIDを削除
data remove storage data:player id[0]
# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
execute store result score #_ PlayerID run data get storage data:player id[0]
execute if score #_ PlayerID > #_ Player run function data.player:sys/gc_loop
