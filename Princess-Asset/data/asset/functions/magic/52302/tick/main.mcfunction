#> asset:magic/52302/tick/main
# 
# @within function asset:magic/52302/tick/

## MPを減らす
  scoreboard players remove @s MP 1
## 
  data modify storage asset:temp Magic set from storage asset:temp MagicCopy[-1].data
  function asset.lib:magic/action/
  execute as @e[tag=Lib.InRange] run data modify entity @s Motion[1] set value 0.0907407489168243d
