#> inv.ui:pages/_/storage/item/_index
# 
# @within 

#> ScoreHolder
# @internal
 #declare score_holder #InventoryUI.Slot

#> score
# @internal
 #declare objective InventoryUI.Slot
 #declare objective InventoryUI.Loop

#> Tags
# @internal
 #declare tag UI.ComRequest

#> function
# @within
#   function inv.ui:pages/_/com/trade/**
 #declare function inv.ui:pages/_/com/player.select/