#> asset:event/10001/contents/success/3
# 
# @within function asset:event/10001/process/success

## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@e[type=villager,scores={ID.Object=10001}]","color":"green"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "それから、１つ頼みがあるんだ。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
