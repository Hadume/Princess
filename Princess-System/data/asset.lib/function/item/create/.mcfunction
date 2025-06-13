#> asset.lib:item/create/
# アイテムを生成できるか確認
# @within function asset:item/create/

## 引数が足りなかったら
    execute unless data storage asset:item id run return run function asset.lib:item/create/argument {argument:"id"}
    execute unless data storage asset:item name run return run function asset.lib:item/create/argument {argument:"name"}
    execute unless data storage asset:item category run return run function asset.lib:item/create/argument {argument:"category"}
    execute unless data storage asset:item rarity run return run function asset.lib:item/create/argument {argument:"rarity"}

## アイテムを設定
    item replace block ~ ~ ~ container.0 with cod
    data modify block ~ ~ ~ Items[0].id set from storage asset:item id

## データを保存
    item modify block ~ ~ ~ container.0 asset.lib:item/create/common
    ### カテゴリーごと
        execute if data storage asset:item {category:"wand"} run item modify block ~ ~ ~ container.0 asset.lib:item/create/wand
        execute if data storage asset:item {category:"food"} run item modify block ~ ~ ~ container.0 asset.lib:item/create/food

    ### その他
        execute if data storage asset:item itemModel run data modify block ~ ~ ~ Items[0].components."minecraft:item_model" set from storage asset:item itemModel
        execute if data storage asset:item effects run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".effects set from storage asset:item effects
        execute if data storage asset:item components run data modify block ~ ~ ~ Items[0].components merge from storage asset:item components


## 名前を設定
    item modify block ~ ~ ~ container.0 asset.lib:item/create/name/basic

## 説明を設定
    ### 通常
        execute if data storage asset:item lore run function asset.lib:item/create/lore/

    ### 効果
        execute if data storage asset:item modifiers run function asset.lib:item/create/lore/modifiers/

    ### レアリティ
        item modify block ~ ~ ~ container.0 asset.lib:item/create/lore/rarity


## 引数を削除
    function asset.lib:item/create/argument {argument:"null"}
