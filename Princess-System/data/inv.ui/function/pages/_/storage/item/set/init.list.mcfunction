#> inv.ui:pages/_/storage/item/set/init.list
#   配列が用意されていなかった場合、初期化
# @within function inv.ui:pages/_/storage/item/set/set.data
# @private

# 配列の追加
    data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page append value []

# 配列チェックして、まだ存在しない場合は再帰
    $execute unless data storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page[$(PageNumber)] run function inv.ui:pages/_/storage/item/set/init.list with storage inv.ui: Storage.
