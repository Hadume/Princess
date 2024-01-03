#> asset:event/10002/contents/4
# 
# @within function asset:event/10002/process/main

## アイテム
  loot give @s loot asset:event/10002/key.castle
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@e[type=villager,scores={ID.Object=10002}]","color":"red"}'
  ### 内容
    data modify storage asset: Tell.Content set value '[{"text": "なるべく早く頼む。城にはこの"},{"text": "鍵","color": "yellow","bold": true},{"text": "を使うことで入れる。"}]'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
