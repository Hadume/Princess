#> inv.ui:player/motion/
# 
# @within function inv.ui:player/

# Motionの取得
    execute store result score @s InventoryUI.Player.Pos.X run data get entity @s Pos[0] 10
    execute store result score @s InventoryUI.Player.Pos.Z run data get entity @s Pos[2] 10

# Motionチェック
    execute unless score @s InventoryUI.Player.Pos.X = @s InventoryUI.Player.Pos.XWork unless score @s InventoryUI.Page matches 0 run function inv.ui:player/reset.page
    execute unless score @s InventoryUI.Player.Pos.Z = @s InventoryUI.Player.Pos.ZWork unless score @s InventoryUI.Page matches 0 run function inv.ui:player/reset.page

# 今TickのPos保存
    scoreboard players operation @s InventoryUI.Player.Pos.XWork = @s InventoryUI.Player.Pos.X
    scoreboard players operation @s InventoryUI.Player.Pos.ZWork = @s InventoryUI.Player.Pos.Z