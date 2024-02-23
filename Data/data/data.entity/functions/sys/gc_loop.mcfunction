### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 割り当て解放

# データを削除
function data.entity:sys/provide
data modify storage entity: _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# 割り当て済みIDを削除
data remove storage entity: id[0]
# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
execute store result score _ EntityID run data get storage entity: id[0]
execute if score _ EntityID > _ Entity run function data.entity:sys/gc_loop
