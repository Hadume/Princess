#> lib:spread/set.at
# 基準点を取得
# @within function lib:spread/

## 汎用ASをここに
  tp 0-0-1-0-0 ^ ^ ^ ~ ~
## 座標を取得
  data modify storage lib:temp At set from entity 0-0-1-0-0 Pos
## 汎用ASを戻す
  tp 0-0-1-0-0 0 -64 0
