#> asset:misc/17001/wrong
# 
# @within 

## 移動
  tp @s 129 -3 -4 0 90
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text":"間違っているようだ。"}'
  ### 
    function lib.asset:event/tell
## 音
  execute at @s run playsound entity.elder_guardian.curse master @a
