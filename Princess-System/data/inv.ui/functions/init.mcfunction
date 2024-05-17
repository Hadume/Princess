#> inv.ui:init
#   プレイヤーデータを初期化する
# @within function inv.ui:load

# ページロック
    data modify storage inv.ui: PageLock set value 0b

# インベントリ操作
    scoreboard players set @a InventoryUI.Page 0
    scoreboard players set @a InventoryUI.ItemStorage.Page 0
    scoreboard players set @a InventoryUI.MaterialStorage.Page 0
    scoreboard players set @a InventoryUI.ItemStorage.PageLimit 5

# 個人ストレージの削除
    ## アイテムストレージ(危険！)
        #data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage

# ページ遷移
    function inv.ui:pages/