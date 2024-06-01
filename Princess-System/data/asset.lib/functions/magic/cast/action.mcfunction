#> asset.lib:magic/cast/action
# 
# @within function asset.lib:magic/cast/check.condition

## 
  data modify storage asset:temp Magic.Target set from storage asset:magic Target
  execute if data storage asset:magic Range run data modify storage asset:temp Magic.Range set from storage asset:magic Range
  execute if data storage asset:magic Pierce run data modify storage asset:temp Magic.Pierce set from storage asset:magic Pierce
## 
  function asset.lib:magic/action/
