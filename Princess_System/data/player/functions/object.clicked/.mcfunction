#> player:object.clicked/
# オブジェクトをクリックしたら
# @within advancement player:object.clicked

## イベントが進行中じゃなかったら
  execute unless score @s Event.Timer = @s Event.Timer run function player:object.clicked/condition
## 進捗を剥奪
  advancement revoke @s only player:object.clicked
