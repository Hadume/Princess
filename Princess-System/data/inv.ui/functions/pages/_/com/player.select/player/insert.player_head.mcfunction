#> inv.ui:pages/_/com/player.select/player/insert.player_head
# 
# @within function inv.ui:pages/_/com/player.select/

# PlayerIDをストレージへセット
    execute store result storage inv.ui: Com.PlayerID int 1 run scoreboard players get @s PlayerID

# インサート
    loot insert 0 -64 0 loot inv.ui:communicate/get.player_head
