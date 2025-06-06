#> menu:magic/root/ui/icon
# 魔法ごとのアイコンを取得
# @within function menu:magic/root/ui/

## blockの中身を消す
    execute in overworld run data remove block 0 -64 0 Items

## ID
    $data modify storage asset:magic ID set from storage temp: Data.Magic[$(Index)]

## アイコン生成
    execute unless data storage asset:magic {ID:0} if data storage temp: Data{Category:"Wand"} run return run function #asset:magic/icon with storage asset:magic

## 空のアイコンを設定
    execute if data storage asset:magic {ID:0} in overworld run loot replace block 0 -64 0 container.0 loot menu:magic/root/no_wand

## 杖をセットしてください表示
    execute unless data storage temp: Data{Category:"Wand"} in overworld run item modify block 0 -64 0 container.0 menu:magic/root/no_wand
