#> asset:event/10003/contents/4
# 
# @within function asset:event/10003/process/main

## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"text":"???","color": "blue"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "なんとかカギを探して地下に行ってほしい。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
