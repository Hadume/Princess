#> menu:communicate/trade/ui/save
#
# @within function menu:communicate/trade/

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## アイテムをUI化
    data modify storage temp: DisplayItems[].components."minecraft:custom_data".Menu set value {}

## データを保存
    data modify storage dat: _.Menu.Communicate.TradeItems set from storage temp: DisplayItems

## UIを再表示
    tag @s add LockedInventory
    function menu:communicate/trade/ui/
    tag @s remove LockedInventory
