#> asset:event/10002/contents/1
# 
# @within function asset:event/10002/condition

## イベント進行
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked[{ID:10002}].Event set value 1b
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@e[type=villager,scores={ID.Object=10002}]","color":"red"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text": "もしかして、オーナーに言われてきたというのはあんたか。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.villager.ambient master @s
## イベントタイマーをセット
  scoreboard players set @s Event.Timer 160
