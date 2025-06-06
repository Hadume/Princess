#> menu:communicate/select_action/open
# コミュニケートの動き
# @within function menu:communicate/root/

## 選択したプレイヤーを保存
    execute in overworld run item replace block 0 -64 0 container.0 from entity @s player.cursor
    execute in overworld run data modify storage dat: _.Menu.Communicate.SelectedPlayer set from block 0 -64 0 Items[0]

## いらないデータを削除
    data remove storage dat: _.Menu.Communicate.Page
    data remove storage dat: _.Menu.Communicate.PlayerData

## UI
    function menu:-common/repair {Parent:"communicate",Child:"select_action"}

## ページ変更しました
    return 7100
