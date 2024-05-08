#> inv.ui:pages/_/com/player.select/sent.request
# 
# @within function inv.ui:pages/_/com/player.select/select.player

# スコア代入
    execute store result score #InventoryUI.Com Temp run data get storage inv.ui: Com.SelectedPlayer

# トレードリクエスト送信 
    execute if score @s InventoryUI.Page matches 711 run execute as @a if score #InventoryUI.Com Temp = @s PlayerID run tellraw @s [{"text":"トレードリクエストが届きました！ ","color": "light_purple"},{"text":"ここをクリック","clickEvent":{"action":"run_command","value":"/function inv.ui:pages/_/com/player.select/accept.request/trade"},"color": "gold"},{"text":" して承認します","color": "light_purple"}]
