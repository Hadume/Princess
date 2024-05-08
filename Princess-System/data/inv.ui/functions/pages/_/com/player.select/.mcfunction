#> inv.ui:pages/_/com/player.select/
# 
# @within 

# プレイヤーヘッドをエンダーチェストに生成
    loot replace entity @s enderchest.0 loot inv.ui:communicate/get.player_head

# シュルカーボックスにインサート
    loot insert 0 -64 0 loot inv.ui:communicate/insert

# エンダーチェストをリセット
    item replace entity @s enderchest.0 with air
