#> inv_ui:check/magic
#   magicから選択
# @within function inv_ui:clicked

# タグ設定
    tag @s add ui_locked

# 選択されたUIから遷移
    # 戻る
        execute unless predicate inv_ui:check/ui/back run function inv_ui:pages/menu
        execute unless entity @s[tag=ui_magic] run return 0
    # どれでもなかったらリロード
        function inv_ui:pages/magic
