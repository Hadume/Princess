#> player:object.clicked/found
# クリックしたオブジェクトを特定
# @within function player:object.clicked/7

## タグを付ける
  tag @s add ClickedObject
## IDをコピー
  scoreboard players operation $ObjectID Temp = @s ID.Object
