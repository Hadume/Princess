### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### このデータパックに必要なものを初期化する

# ストレージシフトに使うデータ
data modify storage entity: two_empty_lists set value [[],[]]
data modify storage entity: three_empty_lists set value [[],[],[]]
data modify storage entity: two_empty_maps set value [{},{}]
data modify storage entity: three_empty_maps set value [{},{},{}]
data modify storage entity: initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
data modify storage entity: _ set from storage entity: initial
# 割り当て済みID保存ストレージ
data modify storage entity: id set value [0]
# IDを振るためのスコアボード
scoreboard objectives add EntityID dummy
# 計算に使うスコアボード
scoreboard objectives add Entity dummy
