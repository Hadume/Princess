#> menu:magic/select/set.magic
#
# @within function menu:magic/select/

## 魔法IDを取得
    item replace entity 0-0-1-0-0 armor.head from entity @s player.cursor
    data modify storage temp: MagicID set from entity 0-0-1-0-0 ArmorItems[-1].components."minecraft:custom_data".menu.Magic.ID

## 魔法IDを登録
    ### ページ番号を取得
        scoreboard players operation #menu temp = @s menu

    execute if score #menu temp matches 3100..3199 run data modify storage dat: _.menu.Magic.Wand.components."minecraft:custom_data".Magic[0] set from storage temp: MagicID
    execute if score #menu temp matches 3200..3299 run data modify storage dat: _.menu.Magic.Wand.components."minecraft:custom_data".Magic[1] set from storage temp: MagicID
    execute if score #menu temp matches 3300..3399 run data modify storage dat: _.menu.Magic.Wand.components."minecraft:custom_data".Magic[2] set from storage temp: MagicID
    execute if score #menu temp matches 3400..3499 run data modify storage dat: _.menu.Magic.Wand.components."minecraft:custom_data".Magic[3] set from storage temp: MagicID


## 一時使用scoreHolderをリセット
    scoreboard players reset #menu temp

## 一時使用storageを削除
    data remove storage temp: MagicID

## 杖セット画面に移動
    return run function menu:magic/root/open
