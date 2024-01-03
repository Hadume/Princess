#> asset:event/10003/contents/6
# 
# @within function asset:event/10003/process/main

## イベント進行
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10002}].Event set value 2b
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"text":"第一王子","color": "blue"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "無事を祈っている。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
