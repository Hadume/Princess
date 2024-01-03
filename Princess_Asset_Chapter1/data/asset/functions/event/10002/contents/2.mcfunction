#> asset:event/10002/contents/2
# 
# @within function asset:event/10002/process/main

## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@e[type=villager,scores={ID.Object=10002}]","color":"red"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "人手が足りなくてね。頼まれてほしい。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
