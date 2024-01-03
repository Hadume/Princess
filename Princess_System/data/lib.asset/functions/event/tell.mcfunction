#> lib.asset:event/tell
# 伝える
# @within function asset:*/*/**

## 改行
  execute unless score @s Event.Timer = @s Event.Timer run tellraw @s ""
## 
  tellraw @s [{"text": "["},{"storage":"asset:","nbt":"Tell.Selector","interpret": true},{"text": "] "},{"storage":"asset:","nbt":"Tell.Content","interpret": true}]
## 一時使用Storageを削除
  data remove storage asset: Tell
