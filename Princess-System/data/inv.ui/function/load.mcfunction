#> inv.ui:load
# 
# @within tag/function minecraft:load

# scores
    scoreboard objectives add InventoryUI.Page dummy
    scoreboard objectives add InventoryUI.ItemStorage.Page dummy
    scoreboard objectives add InventoryUI.MaterialStorage.Page dummy
    scoreboard objectives add InventoryUI.Slot dummy
    scoreboard objectives add InventoryUI.ItemStorage.PageLimit dummy
    scoreboard objectives add InventoryUI.Loop dummy
# init(これは後で分離)
    data modify storage inv.ui: PageLock set value 0b
    scoreboard players set @a InventoryUI.Page 0
    scoreboard players set @a InventoryUI.ItemStorage.Page 0
    scoreboard players set @a InventoryUI.MaterialStorage.Page 0
    scoreboard players set @a InventoryUI.ItemStorage.PageLimit 5

# load text
    tellraw @a {"text":"loaded Inventory UI"}
