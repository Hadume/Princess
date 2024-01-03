#> asset:event/10001/contents/success/6
# 
# @within function asset:event/10001/process/success

## イベント
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10001}].Event set value 2b
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@e[type=villager,scores={ID.Object=10001}]","color":"green"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "兵士の手伝いをしてほしいんだ。よろしく頼むよ！"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
