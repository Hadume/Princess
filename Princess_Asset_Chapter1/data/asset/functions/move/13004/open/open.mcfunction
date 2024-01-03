#> asset:move/13004/open/open
# 
# @within function asset:move/13004/open/

## 鍵を消す
  clear @s totem_of_undying{TotemKey:1b}
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '[{"text":"不死のトーテム","color":"yellow"},{"text":"を使って鍵を開けた。","color":"white"}]'
  ### 
    function lib.asset:event/tell
## イベント進行
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UnlockedDoor append value 13004
  data modify storage asset.temp: Door.Unlocked set value [13004]
