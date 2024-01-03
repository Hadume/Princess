#> asset:misc/17001/correct
# 
# @within 

## 移動
  tp @s 168 57.0625 -49 0 0
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text":"ユーリカ！"}'
  ### 
    function lib.asset:event/tell
## 音
  execute at @s run playsound entity.player.levelup master @a ~ ~ ~ 1.0 2.0
