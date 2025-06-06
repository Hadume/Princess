#> player:score/used_wfoas
# 歪んだきのこ付き棒を使用したら
# @within function main:tick/player

## 手に持っているアイテムをコピー
    function #api:get.nbt/selected_item

## メインハンドのアイテムをコピー
    data modify storage player: Mainhand set from storage api: SelectedItem

## 杖を持っていたら、魔法を発動
    execute if data storage player: {Mainhand:{components:{"minecraft:custom_data":{Category:"Wand"}}}} run function asset.lib:magic/cast/

## Storageを削除
    data remove storage player: Mainhand

## スコアをリセット
    scoreboard players reset @s Used.WFOAS
