#> asset:magic/52302/cast/check.condition
# 
# @within function asset:magic/52302/cast/

## データをコピー
  data modify storage asset:temp Activating set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].Activating
## 
  execute if data storage asset:temp Activating run data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].Activating
  execute if data storage asset:temp Activating run data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].data
  execute unless data storage asset:temp Activating run function asset:magic/52302/cast/main
## 一時使用Storageを削除
  data remove storage asset:temp Activating
