#> inv.ui:pages/_/com/trade/select/sent.request
# 
# @within function inv.ui:pages/_/com/trade/select/select.player

# トレードリクエスト送信 
    $execute if score @s InventoryUI.Page matches 711 run tellraw @a[nbt={UUID:$(SelectedPlayer)}] [{"text":"トレードリクエストが届きました！ ","color": "light_purple"},{"text":"ここをクリック","clickEvent":{"action":"run_command","value":"/function inv.ui:pages/_/com/trade/select/accept.request/trade"},"color": "gold"},{"text":" して承認します","color": "light_purple"}]
