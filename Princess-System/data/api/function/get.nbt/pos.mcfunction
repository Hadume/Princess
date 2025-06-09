#> api:get.nbt/pos
# posを保存
# @input as player
# @output storage api: pos
# @within tag/function api:get.nbt/pos

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #leastTime temp store result storage dat: _.NBT.pos.timeStamp long 1 run time query gametime
    execute if score #leastTime temp matches 1 run data modify storage dat: _.NBT.pos.data set from entity @s Pos

## posをコピー
    data modify storage api:nbt pos set from storage dat: _.NBT.pos.data
