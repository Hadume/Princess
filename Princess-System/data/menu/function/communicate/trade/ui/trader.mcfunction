#> menu:communicate/trade/ui/trader
# トレード相手の状態を取得
# @within function menu:communicate/trade/ui/

##
    loot replace entity @a[tag=This,limit=1] inventory.17 loot menu:communicate/player_head
    loot replace entity @a[tag=This,limit=1] inventory.26 loot menu:communicate/trade/display/trader
