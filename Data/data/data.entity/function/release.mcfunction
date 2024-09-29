### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 個別ストレージを放棄

# データを削除
execute if score @s EntityID matches 1.. run function data.entity:please
execute if score @s EntityID matches 1.. run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# IDを削除
scoreboard players reset @s EntityID
