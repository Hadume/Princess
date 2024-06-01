#> asset.lib:magic/cast/post.prcessing
# 
# @within function asset.lib:magic/cast/

## MPを減らす
  scoreboard players operation @s MP -= #Magic.MP Asset
  function lib:status/mp/update
## Storageを削除
  data remove storage asset:magic Name
  data remove storage asset:magic Target
  execute if data storage asset:magic Amount run data remove storage asset:magic Amount
  execute if data storage asset:magic Pierce run data remove storage asset:magic Pierce
  execute if data storage asset:magic Element run data remove storage asset:magic Element
  execute if data storage asset:magic Range run data remove storage asset:magic Range
  execute if data storage asset:magic Range run data remove storage asset:magic Spread
  execute if data storage asset:magic Speed run data remove storage asset:magic Speed
  execute if data storage asset:magic Duration run data remove storage asset:magic Duration
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Magic.MP
  scoreboard players reset #Magic.Multiple
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
