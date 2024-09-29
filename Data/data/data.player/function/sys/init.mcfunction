### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### このデータパックに必要なものを初期化する

# ストレージシフトに使うデータ
data modify storage data:player two_empty_lists set value [[],[]]
data modify storage data:player three_empty_lists set value [[],[],[]]
data modify storage data:player two_empty_maps set value [{},{}]
data modify storage data:player three_empty_maps set value [{},{},{}]
data modify storage data:player initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
data modify storage data:player _ set from storage data:player initial
# 割り当て済みID保存ストレージ
data modify storage data:player id set value [0]
# IDを振るためのスコアボード
scoreboard objectives add PlayerID dummy
# 計算に使うスコアボード
scoreboard objectives add Player dummy
