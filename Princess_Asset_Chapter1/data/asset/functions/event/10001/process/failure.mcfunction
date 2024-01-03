#> asset:event/10001/process/failure
# エメラルドなかった
# @within function asset:event/10001/process/condition

## 
  execute if score $EventTimerCopy Temp matches 40 run function asset:event/10001/contents/failure/2
  execute if score $EventTimerCopy Temp matches 0 run function asset:event/10001/contents/failure/3
