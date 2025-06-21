#> menu:communicate/root/open/
# コミュニケートを開く
# @within function
#   menu:pages/menu/
#   menu:communicate/select_action/

## プレイヤーのデータを取得
    ### シュルカーボックスのデータを消す
        execute in overworld run data remove block 0 -64 0 Items

    ### 各プレイヤーで
        tag @s add this
        execute as @a[gamemode=adventure,tag=!this] run function menu:communicate/root/open/player_data
        tag @s remove this

    ### 保存
        data modify storage dat: _.menu.Communicate.PlayerData set from storage temp: Players


## UI
    function menu:-common/repair {Parent:"communicate",Child:"root"}

## 一時使用storageを削除
    data remove storage temp: Players

## ページ変更しました
    return 7000
