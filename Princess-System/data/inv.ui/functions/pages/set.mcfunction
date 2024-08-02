#> inv.ui:pages/set
# 
# @within function inv.ui:asset/*/*

# アーマースタンド召喚
    summon armor_stand ~ ~ ~ {Tags:["UI.Generate"],Marker:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:stone",Count:1b,tag:{UiItem:1b}},{}]}

# アイテムデータセット
    ## ItemID
        execute as @e[tag=UI.Generate] run data modify entity @s HandItems[].id set from storage inv.ui: Asset.ItemID
    ## ItemCode
        execute as @e[tag=UI.Generate] run data modify entity @s HandItems[].tag.UICode set from storage inv.ui: Asset.UICode
    ## Name
        execute as @e[tag=UI.Generate] run data modify entity @s HandItems[].tag.display.Name set from storage inv.ui: Asset.Name
    ## Lore
        execute as @e[tag=UI.Generate] run data modify entity @s HandItems[].tag.display.Lore set from storage inv.ui: Asset.Lore

# アイテムコピー
    $item replace entity @s inventory.$(Slot) from entity @e[tag=UI.Generate,limit=1] weapon.mainhand

# キル
    kill @e[tag=UI.Generate]
