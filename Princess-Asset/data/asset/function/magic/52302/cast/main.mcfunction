#> asset:magic/52302/cast/main
# 魔法の本体
# @within function asset:magic/52302/cast/

## 保存
    data modify storage dat: _.Magic[{ID:52302}].data set from storage asset:magic {}
    data modify storage dat: _.Magic[{ID:52302}].Activating set value 1b

## 音を鳴らす
    playsound block.beacon.activate master @a ~ ~ ~ 1 2
