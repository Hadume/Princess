#> asset:move/13005/open/open
# 
# @within 

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## 伝える
  ### 話し手
    data modify storage asset: Tell.Selector set value '{"selector":"@s"}'
  ### 内容
    data modify storage asset: Tell.Content set value '{"text":"ユーリカ！"}'
  ### 
    function lib.asset:event/tell
## 音
  playsound ui.toast.challenge_complete master @a
## イベント進行
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].UnlockedDoor append value 13005
