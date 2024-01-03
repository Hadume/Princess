#> asset:event/10001/process/
# 順
# @within tag/function asset:event/process

## 
  execute if score $EventCopy Temp matches 10001 run function asset:event/10001/process/condition
