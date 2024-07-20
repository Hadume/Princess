#> asset:magic/52302/cast/main
#
# @within function asset:magic/52302/cast/check.condition

## 共通処理
  function asset.lib:magic/cast/common/
## 保存
  data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].data set from storage asset:magic {}
  data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].Activating set value 1b
## 音を鳴らす
  execute at @s run playsound block.beacon.activate master @a ~ ~ ~ 1 2
