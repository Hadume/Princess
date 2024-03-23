#> inv.ui:pages/_/.empty
#   空のページ
# @within function inv.ui:pages/

# text
    tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}

# メニューへ戻す
    scoreboard players set @s InventoryUI.Page 0
