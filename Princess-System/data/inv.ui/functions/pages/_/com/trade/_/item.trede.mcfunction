#> inv.ui:pages/_/com/trade/_/item.trede
# 
# @within function inv.ui:pages/_/com/trade/_/ready.ui

# シュルカーボックス初期化
    data remove block 0 -64 0 Items

# アイテムをシュルカーに格納
    item replace block 0 -64 0 hotbar.0 from entity @s inventory.5
    item replace block 0 -64 0 hotbar.1 from entity @s inventory.6
    item replace block 0 -64 0 hotbar.2 from entity @s inventory.7
    item replace block 0 -64 0 hotbar.3 from entity @s inventory.14
    item replace block 0 -64 0 hotbar.4 from entity @s inventory.15
    item replace block 0 -64 0 hotbar.5 from entity @s inventory.16
    item replace block 0 -64 0 hotbar.6 from entity @s inventory.23
    item replace block 0 -64 0 hotbar.7 from entity @s inventory.24
    item replace block 0 -64 0 hotbar.8 from entity @s inventory.25

# インベントリ内のアイテムの削除
    item replace entity @s inventory.5 with air
    item replace entity @s inventory.6 with air
    item replace entity @s inventory.7 with air
    item replace entity @s inventory.14 with air
    item replace entity @s inventory.15 with air
    item replace entity @s inventory.16 with air
    item replace entity @s inventory.23 with air
    item replace entity @s inventory.24 with air
    item replace entity @s inventory.25 with air

# プレイヤーに渡す
    loot spawn ~ ~ ~ mine 0 -64 0 debug_stick

# ページを閉じる
    scoreboard players set @s InventoryUI.Page 70
    function inv.ui:pages/
