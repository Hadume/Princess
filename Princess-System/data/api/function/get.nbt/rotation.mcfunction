#> api:get.nbt/rotation
# Rotationを保存
# @input as player
# @output storage api: Rotation
# @within tag/function api:get.nbt/rotation

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #leastTime temp store result storage dat: _.NBT.rotation.timeStamp long 1 run time query gametime
    execute if score #leastTime temp matches 1 run data modify storage dat: _.NBT.rotation.data set from entity @s Rotation

## Rotationをコピー
    data modify storage api:nbt rotation set from storage dat: _.NBT.rotation
