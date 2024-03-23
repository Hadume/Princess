#> tests:change.page/menu
# 
# @private

# スコア
    scoreboard players set @s InventoryUI.Page 0

# 実行
    function inv.ui:pages/

# text
    tellraw @s {"text":"[Test] run inv.ui:pages/ with score InventoryUI.Page:0"}