#> asset.lib:magic/cast/init/speed
# 速度を持っていたら
# @within function asset.lib:magic/cast/init/spell

## 速度を代入
  execute store result score @s sm.Speed run data get storage asset: Magic.Speed 100
## 動くように
  tag @s add SmartMotion
  tag @s add Break
## 初期化
  function smart_motion:core/tp
