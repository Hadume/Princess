#> event:title
# 
# @within function player:tick

## イベント進行
  scoreboard players set @s Event 10001
## 表示
  title @s title {"text": "王女様は一般人","color": "light_purple","bold": true}
  title @s subtitle [{"text": "第1章 ","color": "yellow","bold": true},{"text": "地下迷宮編","color": "light_purple"}]
## 音
  playsound entity.player.levelup player @s
