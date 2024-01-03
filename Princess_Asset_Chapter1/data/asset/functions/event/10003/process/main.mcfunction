#> asset:event/10003/process/main
# 
# @within function asset:event/10003/process/

## 
  execute if score $EventTimerCopy Temp matches 160 run function asset:event/10003/contents/2
  execute if score $EventTimerCopy Temp matches 120 run function asset:event/10003/contents/3
  execute if score $EventTimerCopy Temp matches 80 run function asset:event/10003/contents/4
  execute if score $EventTimerCopy Temp matches 40 run function asset:event/10003/contents/5
  execute if score $EventTimerCopy Temp matches 0 run function asset:event/10003/contents/6
