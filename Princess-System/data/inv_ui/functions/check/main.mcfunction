#> inv_ui:check/main
#   menuから選択
# @within function inv_ui:clicked

# タグ設定
    tag @s add ui_locked

# 選択されたUIから遷移
    # スキルツリー
        execute unless predicate inv_ui:check/menu/skill run say cliked skill tree
        execute unless entity @s[tag=ui_menu] run return 0
    # クリスタル
        execute unless predicate inv_ui:check/menu/crystal run function inv_ui:pages/crystal
        execute unless entity @s[tag=ui_menu] run return 0
    # 魔法設定
        execute unless predicate inv_ui:check/menu/magic run function inv_ui:pages/magic
        execute unless entity @s[tag=ui_menu] run return 0
    # ステータス
        execute unless predicate inv_ui:check/menu/status run say clicked status
        execute unless entity @s[tag=ui_menu] run return 0
    # ストレージ
        execute unless predicate inv_ui:check/menu/storage run function inv_ui:pages/storage
        execute unless entity @s[tag=ui_menu] run return 0
    # クエスト
        execute unless predicate inv_ui:check/menu/quest run function inv_ui:pages/quest
        execute unless entity @s[tag=ui_menu] run return 0
    # コミュニケート
        execute unless predicate inv_ui:check/menu/com run function inv_ui:pages/com
        execute unless entity @s[tag=ui_menu] run return 0
    # どれでもなかったらリロード
        function inv_ui:pages/menu
