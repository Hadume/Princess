#> inv.ui:pages/_/storage/item/set
#   ストレージアイテムセット
# @within function inv.ui:pages/_/storage/item/

# 個人ストレージ呼び出し
    function data.player:please

# データセット
    ## UIアイテムの一時削除
        #clear @s #inv.ui:ui{UiItem:1b}
    ## 格納
        function inv.ui:pages/_/storage/item/set.data with storage inv.ui: Storage.
