#> inv.ui:player/reset.page
# 
# @within function inv.ui:player/motion/

# メニューページへ
    scoreboard players set @s InventoryUI.Page 0

# storageのページ初期化
    scoreboard players set @s InventoryUI.ItemStorage.Page 0

# ページ更新
    function inv.ui:pages/