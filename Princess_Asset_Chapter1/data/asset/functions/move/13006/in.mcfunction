#> asset:move/13006/in
# 
# @within function asset:move/13006/condition

## 移動
  tp @s 164 57 -4 -90 0
## 音
  playsound entity.enderman.teleport master @a
## エメラルドを消す
  clear @s emerald{MazeEmerald:1b}
