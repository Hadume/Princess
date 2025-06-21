#> menu:magic/select/open
#
# @within function menu:magic/root/set/click

## 杖を保存しておく
    data modify storage dat: _.menu.Magic.Wand set from storage api: Inventory[{slot:22b}]

## UI
    data remove storage api: Inventory[{slot:22b}]
    function menu:-common/repair {Parent:"magic",Child:"select"}

## ページ変更しました
    return run data get storage temp: menu
