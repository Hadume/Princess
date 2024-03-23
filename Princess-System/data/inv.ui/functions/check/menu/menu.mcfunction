#> inv.ui:check/menu
#   メニューから選択チェック
# @within function inv.ui:

# check
    # スキルツリー
        execute unless predicate inv.ui:check/menu/skilltree run scoreboard players set @s InventoryUI.Page -1
    # クリスタル
        execute unless predicate inv.ui:check/menu/crystal run scoreboard players set @s InventoryUI.Page 20
    # 魔法
        execute unless predicate inv.ui:check/menu/magic run scoreboard players set @s InventoryUI.Page 30
    # ステータス
        execute unless predicate inv.ui:check/menu/status run scoreboard players set @s InventoryUI.Page -1
    # ストレージ
        execute unless predicate inv.ui:check/menu/storage run scoreboard players set @s InventoryUI.Page 50
    # クエスト
        execute unless predicate inv.ui:check/menu/quest run scoreboard players set @s InventoryUI.Page 60
    # コミュニケート
        execute unless predicate inv.ui:check/menu/com run scoreboard players set @s InventoryUI.Page 70

# 遷移
    function inv.ui:pages/
