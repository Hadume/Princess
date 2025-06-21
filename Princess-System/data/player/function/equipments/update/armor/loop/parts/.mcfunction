#> player:equipments/update/armor/loop/parts/
# 部位ごとに装備を更新
# @within function player:equipments/update/armor/loop/

##
    execute if score #slot temp matches 3 run function player:equipments/update/armor/loop/parts/main {Parts:"Head"}
    execute if score #slot temp matches 2 run function player:equipments/update/armor/loop/parts/main {Parts:"Chest"}
    execute if score #slot temp matches 1 run function player:equipments/update/armor/loop/parts/main {Parts:"Legs"}
    execute if score #slot temp matches 0 run function player:equipments/update/armor/loop/parts/main {Parts:"Feet"}

## Statsを追加
    function #lib:stats/add

## Statsを更新
    data modify storage lib: Stats set value ["Physic","Magic","Element"]
    function #lib:stats/update
