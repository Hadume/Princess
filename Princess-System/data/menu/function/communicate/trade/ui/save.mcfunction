#> menu:communicate/trade/ui/save
#
# @within function menu:communicate/trade/

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## アイテムをUI化
    data modify storage temp: displayItems[].components."minecraft:custom_data".menu set value {}

## データを保存
    data modify storage dat: _.menu.Communicate.TradeItems set from storage temp: displayItems

## UIを再表示
    tag @s add lockedInventory
    function menu:communicate/trade/ui/
    tag @s remove lockedInventory
