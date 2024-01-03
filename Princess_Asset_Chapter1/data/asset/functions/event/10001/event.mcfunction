#> asset:event/10001/event
# 
# @within function asset:event/10001/condition

#> ScoreHolder
# @private
 #declare score_holder $Count
## データがなかったら追加
  execute unless data storage asset.temp: TalkedCopy.ID run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Talked append value {ID:10001,Event:0b}
## 手持ちのアイテムを取得
  function api:selecteditem/
## Countを取得
  execute store result score $Count Temp run data get storage api: SelectedItem.Count
## 会話
  execute if data storage api: {SelectedItem:{id:"minecraft:emerald",tag:{Emerald:1b}}} if score $Count Temp matches 10.. run function asset:event/10001/contents/success/1
  execute unless score @s Event.Timer = @s Event.Timer run function asset:event/10001/contents/failure/1
## 一時使用ScoreHolderをリセット
  scoreboard players reset $Count
