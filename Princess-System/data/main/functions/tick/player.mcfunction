#> main:tick/player
# プレイヤーで常時実行
# @within function main:tick/

## スコア
  execute if entity @s[scores={Used.COAS=1..}] run function main:score/used.coas
## ステータス表示
  title @s actionbar [{"text": ""},{"score":{"name": "@s","objective": "MP"},"bold": true},{"text": "/"},{"score":{"name": "@s","objective": "MP.Max"}},{"translate":"space.512"},{"score":{"name": "@s","objective": "HP"},"color": "red","bold": true,"underlined": true},{"text": "/","color": "red","underlined": true},{"score":{"name": "@s","objective": "HP.Max"},"color": "red","underlined": true},{"translate": "space.22"},{"score":{"name": "@s","objective": "MP"},"color": "aqua","bold": true,"underlined": true},{"text": "/","color": "aqua","underlined": true},{"score":{"name": "@s","objective": "MP.Max"},"color": "aqua","underlined": true},{"translate":"space.512"},{"score":{"name": "@s","objective": "HP"},"bold": true},{"text": "/"},{"score":{"name": "@s","objective": "HP.Max"}}]
