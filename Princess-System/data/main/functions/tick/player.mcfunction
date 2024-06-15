#> main:tick/player
# プレイヤーで常時実行
# @within function main:tick/

## スコア
  execute if entity @s[scores={LeaveGame=1..}] run function player:score/leave_game
## 進捗
  execute if entity @s[advancements={main:inventory_changed=true}] run function main:advancements/inventory_changed
  execute if entity @s[advancements={main:shot_crossbow=true}] run function main:advancements/shot_crossbow
## 魔法
  function asset.lib:magic/tick/player/
## 魔法のクールタイム
  execute if predicate asset.lib:cooltime run function player:reduce.cooltime
## MP,HPの回復
  execute if entity @s[scores={MP.Rcvr.Timer=1..}] run function lib:status/mp/recover/tick
  execute if entity @s[scores={HP.Rcvr.Timer=1..}] run function lib:status/hp/recover/tick
## 4tickごとに実行
  scoreboard players add @s 4tickInterval 1
  execute if entity @s[scores={4tickInterval=4..}] run function player:4tick_interval
## ステータス表示
  #title @s actionbar [{"text": ""},{"score":{"name": "@s","objective": "MP"},"bold": true},{"text": "/"},{"score":{"name": "@s","objective": "MP.Max"}},{"translate":"space.512"},{"score":{"name": "@s","objective": "HP"},"color": "red","bold": true,"underlined": true},{"text": "/","color": "red","underlined": true},{"score":{"name": "@s","objective": "HP.Max"},"color": "red","underlined": true},{"translate": "space.22"},{"score":{"name": "@s","objective": "MP"},"color": "aqua","bold": true,"underlined": true},{"text": "/","color": "aqua","underlined": true},{"score":{"name": "@s","objective": "MP.Max"},"color": "aqua","underlined": true},{"translate":"space.512"},{"score":{"name": "@s","objective": "HP"},"bold": true},{"text": "/"},{"score":{"name": "@s","objective": "HP.Max"}}]
  #title @s actionbar [{"text":"\uE010"},{"text":"\uE011"},{"text":"\uE012"},{"text":"\uE013"},{"text":"\uE014"},{"text":"\uE015"},{"text":"\uE016"},{"text":"\uE017"},{"text":"\uE018"},{"text":"\uE019"},{"text":"\uE020"}]
  #title @s actionbar [{"text":"\uE010"},{"text":"\uE011"},{"text":"\uE012"},{"text":"\uE013"},{"text":"\uE014"},{"text":"\uE015"},{"text":"\uE016"},{"text":"\u0020\u0020"},{"text":"\uE018"},{"text":"\uE019"},{"text":"\uE020"}]
