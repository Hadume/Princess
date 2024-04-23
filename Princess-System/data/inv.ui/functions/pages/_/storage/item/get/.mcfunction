#> inv.ui:pages/_/storage/item/get/
# ストレージページの取得
# @within function inv.ui:pages/_/storage/item/

# シュルカーボックスにデータ書き込み(Page番号代入)
    $data modify block 0 0 0 Items set from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page$(PageNumber)

# シュルカーボックスからプレイヤーにデータ代入
    #loot replace entity @s inventory.9 fish blocks/shulker_box 0 0 0
