#> api:display/mob.name
# MOBのステータス表示
# @within tag/function api:display/mob.name

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## スコアをコピー
    scoreboard players operation #scoreToHealth temp = @s ScoreToHealth

## 体力によって色を変更
    execute if score #scoreToHealth temp matches 1001.. run data modify storage temp:api mobName.color set value '{"text":"","color":"green"}'
    execute if score #scoreToHealth temp matches 201..1000 run data modify storage temp:api mobName.color set value '{"text":"","color":"yellow"}'
    execute if score #scoreToHealth temp matches ..200 run data modify storage temp:api mobName.color set value '{"text":"","color":"red"}'

## 名前を表示
    execute in overworld run loot replace block 0 -64 0 container.0 loot api:display/mob.status
    execute in overworld run data modify entity @s CustomName set from block 0 -64 0 Items[0].components."minecraft:custom_name"

## 一時使用scoreHolderをリセット
    scoreboard players reset #scoreToHealth temp

## 一時使用storageを削除
    data remove storage temp:api mobName
