#> inv.ui:player/moving/
#   動いた人のインベントリUIをメニューに戻す
# @within function inv.ui:player/

# メニューへ
    scoreboard players set @s InventoryUI.Page 0

# ストレージページ初期化
    scoreboard players set @s InventoryUI.ItemStorage.Page 0

# 個人ストレージ削除
    ## コミュニケートセレクト
        data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Com.Player

# Moveスコアリセット
    scoreboard players reset @s InventoryUI.Player.Moving

# ページ遷移
    function inv.ui:pages/
