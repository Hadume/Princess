#> asset.lib:magic/cast/0
# 魔法を唱える
# @within function
#   player:offhand
#   main:advancements/shot_crossbow

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## データを削除
    execute if data storage asset:magic ID run data remove storage asset:magic ID

## IDをコピー
    execute if data storage player: Mainhand unless predicate player:sneaking run function asset.lib:magic/cast/1 {condition:"Click",index:-4}
    execute if data storage player: Mainhand if predicate player:sneaking run function asset.lib:magic/cast/1 {condition:"ClickS",index:-3}
    execute if data storage player: Offhand unless predicate player:sneaking run function asset.lib:magic/cast/1 {condition:"Offhand",index:-2}
    execute if data storage player: Offhand if predicate player:sneaking run function asset.lib:magic/cast/1 {condition:"OffhandS",index:-1}
