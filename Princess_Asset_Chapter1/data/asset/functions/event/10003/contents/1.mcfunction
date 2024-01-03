#> asset:event/10003/contents/1
# 
# @within function asset:event/10003/condition

## イベント進行
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10003}].Event set value 1b
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"text":"???","color": "blue"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "兵士から話は聞いている。地下へ行くには「地下のカギ」がいる。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
## イベントタイマーをセット
  scoreboard players set @s Event.Timer 200
