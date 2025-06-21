#> menu:communicate/trade/open/trade.with
# トレードの相手
# @within function menu:communicate/trade/open/

## トレード相手のIDを保存
    scoreboard players operation @s tradeWith = @a[tag=this,limit=1] ID
    scoreboard players operation @a[tag=this,limit=1] tradeWith = @s ID

## UI
    function menu:communicate/trade/open/ui
