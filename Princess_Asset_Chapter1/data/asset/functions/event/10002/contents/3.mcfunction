#> asset:event/10002/contents/3
# 
# @within function asset:event/10002/process/main

## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@e[type=villager,scores={ID.Object=10002}]","color":"red"}'
  ### 内容
    data modify storage asset: Tell.Content set value '[{"text": "城の地下迷宮から"},{"text": "伝説の武器","color": "yellow","bold": true},{"text": "を持ってきてほしい。"}]'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
