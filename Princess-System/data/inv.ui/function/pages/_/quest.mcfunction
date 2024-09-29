#> inv.ui:pages/_/quest
#
# @within function inv.ui:pages/branch/*

# 操作UI
    ## back
        function inv.ui:asset/any/back

# クリア済みクエスト
	function inv.ui:asset/quest/cleared

# 枠
        item replace entity @s inventory.8 with black_stained_glass_pane[item_name='[{"text":""}]',custom_data={UiItem:1b}]
        item replace entity @s inventory.17 with black_stained_glass_pane[item_name='[{"text":""}]',custom_data={UiItem:1b}]
        item replace entity @s inventory.18 with black_stained_glass_pane[item_name='[{"text":""}]',custom_data={UiItem:1b}]
        item replace entity @s inventory.26 with black_stained_glass_pane[item_name='[{"text":""}]',custom_data={UiItem:1b}]
