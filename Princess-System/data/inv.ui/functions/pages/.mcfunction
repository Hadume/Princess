#> inv.ui:pages/
#   リクエストされたページへ遷移
# @within 

# Page Lock
    data modify storage inv.ui: PageLock set value 1b

# アイテム削除
    clear @s #inv.ui:ui{UiItem:1b}

# 遷移
    ## empty
        execute if score @s InventoryUI.Page matches -1 run function inv.ui:pages/_/.empty
    ## main munu
        execute if score @s InventoryUI.Page matches 0..99 run function inv.ui:pages/branch/menu
    ## storage
        execute if score @s InventoryUI.Page matches 500..599 run function inv.ui:pages/branch/storage

# 終了処理
    ## ストレージ削除
        data remove storage inv.ui: Asset.
    ## UI Lick解除
        data modify storage inv.ui: PageLock set value 0b
