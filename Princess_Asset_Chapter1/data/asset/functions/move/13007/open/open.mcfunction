#> asset:move/13007/open/open
# 
# @within function asset:move/13007/open/

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text":"合っていたようだ。"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound entity.player.levelup master @a ~ ~ ~ 1.0 2.0
## イベント進行
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UnlockedDoor append value 13007
