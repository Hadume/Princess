#> menu:magic/select/ui/main/loop
#
# @within function menu:magic/select/ui/

## ループ終了
    $execute unless data storage temp: Magics[$(index)] run return 1
    execute unless data storage temp: slots[] run return 10

## データを消す
    item replace block 0 -64 0 container.0 with air

## アイコンを設定
    $data modify storage asset:magic ID set from storage temp: Magics[$(index)]
    function #asset:magic/icon with storage asset:magic

## アイテムを設定
    execute if items block 0 -64 0 container.0 * run function menu:magic/select/ui/main/icon

## slotを消す
    data remove storage temp: slots[-1]

## 増やす
    scoreboard players add #index temp 1
    execute store result storage temp: index int 1 run scoreboard players get #index temp

## ループ
    function menu:magic/select/ui/main/loop with storage temp:
