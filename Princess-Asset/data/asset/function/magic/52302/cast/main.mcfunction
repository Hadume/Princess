#> asset:magic/52302/cast/main
# 魔法の本体
# @within function asset:magic/52302/cast/

## 保存
    data modify storage dat: _.magic append from storage asset:magic {}

## 音を鳴らす
    playsound block.beacon.activate master @a ~ ~ ~ 1 2
