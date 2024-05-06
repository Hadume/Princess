#> lib:spread/set.at
# 基準点を取得
# @within function lib:spread/

#> Tags
# @private
 #declare tag Pos.Marker
## 汎用ASをここに
  summon marker ^ ^ ^ {Tags:["Pos.Marker"]}
## 座標を取得
  data modify storage lib:temp At set from entity @e[type=marker,tag=Pos.Marker,limit=1] Pos
## 汎用ASを戻す
  kill @e[type=marker,tag=Pos.Marker]
