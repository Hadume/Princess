#> asset:event/10001/contents/success/4
# 
# @within function asset:event/10001/process/success

## アイテム
  loot give @s loot asset:event/10001/key.barracks
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@e[type=villager,scores={ID.Object=10001}]","color":"green"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "この鍵を持って兵舎へ行ってほしいんだ。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
