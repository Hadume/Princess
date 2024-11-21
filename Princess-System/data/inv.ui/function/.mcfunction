#> inv.ui:
#   クリックされたら処理
# @within advancement inv.ui:clicked

# 進捗削除
    advancement revoke @s only inv.ui:clicked

# PageLock Check
    execute if data storage inv.ui: {PageLock:1b} run return -1

# 混入アイテム返品
    function inv.ui:item.check/

# ページから選択
    # メインメニュー
        execute if score @s InventoryUI.Page matches 0..99 run function inv.ui:check/menu/
    # ストレージ
        execute if score @s InventoryUI.Page matches 500..599 run function inv.ui:check/storage/
aa
