#> asset.lib:item/create/lore/stats/
# 効果の記述
# @within function asset.lib:item/create/main

#> ScoreHolder
# @within
#   function asset.lib:item/create/lore/stats/*
#   loot_table asset.lib:item/lore/stats
 #declare score_holder #Amount

## 共通説明を追加
  data modify storage asset:temp Lore append value '{"text":""}'
  data modify storage asset:temp Lore append value '{"text":"[効果]","color":"gray","italic":false}'
## 効果値を追加
  function asset.lib:item/create/lore/stats/main.loop
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount
## 一時使用Storageを削除
  data remove storage asset:temp Stat
  data remove storage asset:temp Amount
