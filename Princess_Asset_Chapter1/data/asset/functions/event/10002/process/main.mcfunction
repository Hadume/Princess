#> asset:event/10002/process/main
# 
# @within function asset:event/10002/process/

## 
  execute if score $EventTimerCopy Temp matches 120 run function asset:event/10002/contents/2
  execute if score $EventTimerCopy Temp matches 80 run function asset:event/10002/contents/3
  execute if score $EventTimerCopy Temp matches 40 run function asset:event/10002/contents/4
  execute if score $EventTimerCopy Temp matches 0 run function asset:event/10002/contents/5
