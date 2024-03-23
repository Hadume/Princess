#> main:tick/player
# プレイヤーで常時実行
# @within function main:tick/

## 魔法のクールタイム
  execute if predicate asset.lib:cooltime run function asset.lib:magic/cooltime
## MP,HPの回復
  execute if score @s MP.Rcvr.Timer matches 1.. run function lib:status/mp/recover/tick
  execute if score @s HP.Rcvr.Timer matches 1.. run function lib:status/hp/recover/tick
## メインハンドに持ったときの効果を反映
  function player:stats/mainhand
## ステータス表示
  title @s actionbar [{"text": ""},{"score":{"name": "@s","objective": "MP"},"bold": true},{"text": "/"},{"score":{"name": "@s","objective": "MP.Max"}},{"translate":"space.512"},{"score":{"name": "@s","objective": "HP"},"color": "red","bold": true,"underlined": true},{"text": "/","color": "red","underlined": true},{"score":{"name": "@s","objective": "HP.Max"},"color": "red","underlined": true},{"translate": "space.22"},{"score":{"name": "@s","objective": "MP"},"color": "aqua","bold": true,"underlined": true},{"text": "/","color": "aqua","underlined": true},{"score":{"name": "@s","objective": "MP.Max"},"color": "aqua","underlined": true},{"translate":"space.512"},{"score":{"name": "@s","objective": "HP"},"bold": true},{"text": "/"},{"score":{"name": "@s","objective": "HP.Max"}}]
  #title @s actionbar [{"translate": "space.100"},{"text":"\uE011"},{"text":"\uE012"},{"text":"\uE013"},{"text":"\uE014"},{"text":"\uE015"},{"text":"\uE016"},{"text":"\uE017"},{"text":"\uE018"},{"text":"\uE019"},{"text":"\uE020"}]
