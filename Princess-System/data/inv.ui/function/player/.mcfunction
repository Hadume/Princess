#> inv.ui:player/
# 
# @within advancement inv.ui:player.tick

# motion check
    execute if score @s InventoryUI.Player.Moving matches 1.. run function inv.ui:player/moving/

# 進捗削除
    advancement revoke @s only inv.ui:player.tick
