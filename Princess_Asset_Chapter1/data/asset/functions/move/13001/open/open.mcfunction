#> asset:move/13001/open/open
# 
# @within function asset:move/13001/open/

## 鍵を消す
  clear @s lever{BarracksKey:1b}
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '[{"text": "兵舎のカギ","color":"yellow"},{"text":"を使って鍵を開けた。","color":"white"}]'
  ### 
    function lib.asset:event/tell
## イベント進行
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UnlockedDoor append value 13001
  data modify storage asset.temp: Door.Unlocked set value [13001]
