#> lib.asset:event/process
# イベントの進行
# @within function player:event/process

## 各イベント処理
  function #asset:event/process
## 一時使用Storageを削除
  execute if data storage asset.temp: TalkedCopy run data remove storage asset.temp: TalkedCopy
## 一時使用ScoreHolderをリセット
  scoreboard players reset $EventCopy
  scoreboard players reset $EventTimerCopy
