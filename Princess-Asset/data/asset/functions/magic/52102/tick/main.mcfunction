#> asset:magic/52102/tick/main
# 
# @within function asset:magic/52102/tick/

## パーティクル
  particle flame ~ ~ ~ 1 0 1 0 20 force
  execute rotated 90 0 run function asset:magic/52102/tick/particle
## ダメージ
  function asset.lib:magic/action/
  function asset.lib:magic/action/damage/
