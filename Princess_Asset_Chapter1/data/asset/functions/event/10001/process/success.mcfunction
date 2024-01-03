#> asset:event/10001/process/success
# エメラルドを渡した
# @within function asset:event/10001/process/condition

## 
  execute if score $EventTimerCopy Temp matches 160 run function asset:event/10001/contents/success/2
  execute if score $EventTimerCopy Temp matches 120 run function asset:event/10001/contents/success/3
  execute if score $EventTimerCopy Temp matches 80 run function asset:event/10001/contents/success/4
  execute if score $EventTimerCopy Temp matches 40 run function asset:event/10001/contents/success/5
  execute if score $EventTimerCopy Temp matches 0 run function asset:event/10001/contents/success/6
