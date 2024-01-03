#> asset:move/13005/open/locking
# 
# @within 

## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text":"間違っているようだ。"}'
  ### 
    function lib.asset:event/tell
