#> asset:move/13002/open/locking
# 
# @within function asset:move/13002/open/

## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text":"鍵がかかっているようだ。"}'
  ### 
    function lib.asset:event/tell
## ドア開けられないように
  tag @s add Locking
