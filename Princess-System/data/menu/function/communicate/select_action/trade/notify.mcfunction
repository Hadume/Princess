#> menu:communicate/select_action/trade/notify
# 知らせる
# @within function menu:communicate/select_action/trade/

## トリガーを使えるように
    scoreboard players enable @s Trade.Action

## トレード相手が他の人とトレードしている可能性があるので、TradeWithを書き換えるわけにはいかない
    $tellraw @s ["\n",{"selector": "@a[tag=This]"},"からトレードの申請がありました。\n\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020",{"text": "承認","color": "green","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger Trade.Action set $(ID)"}},"\u0020\u0020\u0020\u0020",{"text": "拒否","color": "red","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger Trade.Action set -$(ID)"}}]
