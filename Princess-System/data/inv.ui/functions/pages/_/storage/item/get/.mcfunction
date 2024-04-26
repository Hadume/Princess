#> inv.ui:pages/_/storage/item/get/
# ストレージページの取得
# @within function inv.ui:pages/_/storage/item/
say data get
# シュルカーボックスにデータ書き込み(Page番号代入)
    $data modify block 0 -64 0 Items set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page$(PageNumber)

# シュルカーボックスからプレイヤーにデータ代入
    loot replace entity @s inventory.0 26 mine 0 -64 0 minecraft:debug_stick
