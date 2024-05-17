#> inv.ui:pages/branch/com
# 
# @within function inv.ui:pages/

# パーティ作成
    #execute if score @s InventoryUI.Page matches 701 run function inv.ui:pages/_/
# アイテムトレード
    ## プレイヤー選択画面
        execute if score @s InventoryUI.Page matches 711 run function inv.ui:pages/_/com/player.select/

    ## トレード画面
        execute if score @s InventoryUI.Page matches 712 run function inv.ui:pages/_/com/trade/