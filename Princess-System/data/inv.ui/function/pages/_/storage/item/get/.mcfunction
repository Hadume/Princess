#> inv.ui:pages/_/storage/item/get/
# ストレージページの取得
# @within function inv.ui:pages/_/storage/item/
#say data get
# ストレージの中身をシュルカーボックスにデータ書き込み(Page番号代入)
    $data modify block 0 -64 0 Items set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page[$(PageNumber)]

# ストレージの中身が無かったらシュルカーの中身初期化(ここで代入のエラー処理を行って、前回のキャッシュが呼び出されるのを阻止してます！)
    $execute unless data storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page[$(PageNumber)] run data remove block 0 -64 0 Items

# シュルカーボックスからプレイヤーにデータ代入
    loot replace entity @s inventory.0 26 mine 0 -64 0 minecraft:debug_stick
