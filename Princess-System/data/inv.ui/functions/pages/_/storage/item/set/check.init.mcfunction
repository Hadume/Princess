#> inv.ui:pages/_/storage/item/set/check.init
#   ページ初期化する？
# @within function inv.ui:pages/_/storage/item/

# 個人ストレージ呼び出し
    function data.player:please

# チェック
    ## UIアイテムの初期化
        $execute unless data storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Storage.Page$(PageNumber) run function inv.ui:pages/_/storage/item/set/init/init.page
