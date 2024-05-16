#> inv.ui:pages/_/com/player.select/sent.request
# 
# @within function inv.ui:pages/_/com/player.select/select.player

# クールダウン中かチェック
    # メッセージ
        execute if score @s InventoryUI.TradeCooldown matches 1.. run tellraw @s {"text":"クールダウン中のため、リクエストを送信できませんでした。","color": "red"}
    # 処理終了
        execute if score @s InventoryUI.TradeCooldown matches 1.. run return -1

# スコア代入
    execute store result score #InventoryUI.Com Temp run data get storage inv.ui: Com.SelectedPlayer

# 受信者に送信者のTreadeIDを代入
    scoreboard players operation #InventoryUI.Com InventoryUI.TradeID = @s InventoryUI.TradeID
    execute if score @s InventoryUI.Page matches 711 run execute as @a if score #InventoryUI.Com Temp = @s PlayerID run scoreboard players operation @s InventoryUI.TradeID = #InventoryUI.Com InventoryUI.TradeID

# クールダウンのセット
    execute as @a if score @s InventoryUI.TradeID = #InventoryUI.Com InventoryUI.TradeID run scoreboard players set @s InventoryUI.TradeCooldown 300

# トレード承認トリガー有効化
    execute if score @s InventoryUI.Page matches 711 run execute as @a if score #InventoryUI.Com Temp = @s PlayerID run scoreboard players enable @s InventoryUI.TradeAccept

# トレードリクエスト送信 
    execute if score @s InventoryUI.Page matches 711 run execute as @a if score #InventoryUI.Com Temp = @s PlayerID run tellraw @s [{"text":"トレードリクエストが届きました！ ","color": "light_purple"},{"text":"ここをクリック","clickEvent":{"action":"run_command","value":"/trigger InventoryUI.TradeAccept set 1"},"color": "gold"},{"text":" して承認します","color": "light_purple"}]
