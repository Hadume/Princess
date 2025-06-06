#> menu:communicate/select_action/ui/
# コミュニケートの行動選択のUI
# @within function menu:-common/repair

say communicate:select_action.ui

##
    ### 1行目
        loot replace entity @s inventory.0 loot menu:back
        loot replace entity @s inventory.1 loot menu:frame.gray
        loot replace entity @s inventory.2 loot menu:frame.gray
        loot replace entity @s inventory.3 loot menu:frame.gray
        #loot replace entity @s inventory.4
        loot replace entity @s inventory.5 loot menu:frame.gray
        loot replace entity @s inventory.6 loot menu:frame.gray
        loot replace entity @s inventory.7 loot menu:frame.gray
        loot replace entity @s inventory.8 loot menu:frame.black

    ### 2行目
        loot replace entity @s inventory.9 loot menu:frame.black
        loot replace entity @s inventory.10 loot menu:frame.gray
        loot replace entity @s inventory.11 loot menu:communicate/select_action/party
        loot replace entity @s inventory.12 loot menu:frame.gray
        loot replace entity @s inventory.13 loot menu:frame.gray
        loot replace entity @s inventory.14 loot menu:frame.gray
        loot replace entity @s inventory.15 loot menu:communicate/select_action/trade
        loot replace entity @s inventory.16 loot menu:frame.gray
        loot replace entity @s inventory.17 loot menu:frame.black

    ### 1行目
        loot replace entity @s inventory.18 loot menu:frame.black
        loot replace entity @s inventory.19 loot menu:frame.gray
        loot replace entity @s inventory.20 loot menu:frame.gray
        loot replace entity @s inventory.21 loot menu:frame.gray
        loot replace entity @s inventory.22 loot menu:frame.gray
        loot replace entity @s inventory.23 loot menu:frame.gray
        loot replace entity @s inventory.24 loot menu:frame.gray
        loot replace entity @s inventory.25 loot menu:frame.gray
        loot replace entity @s inventory.26 loot menu:frame.black


## プレイヤーヘッドを設置
    data modify entity 0-0-1-0-0 ArmorItems[-1] set from storage dat: _.Menu.Communicate.SelectedPlayer
    item replace entity @s inventory.4 from entity 0-0-1-0-0 armor.head
