#> api:display/mp
# 魔力を表示
# @input as entity
# @within tag/function api:display/mp

## 最大魔力を更新
    data modify storage lib:stats stats append value "mpMax"
    function #lib:stats/update

## 計算
    scoreboard players set #mpRate temp 10
    scoreboard players operation #mpRate temp *= @s mp
    scoreboard players operation #mpRate temp /= @s mpMax

## 表示
    execute if score #mpRate temp matches 10.. run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": ""},{"text": "\uE011\uE012\uE013\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 9 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020"},{"text": "\uE012\uE013\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 8 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020"},{"text": "\uE013\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 7 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 6 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE015\uE016\uE017\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 5 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE016\uE017\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 4 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE017\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 3 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE018\uE019\uE020"}]
    execute if score #mpRate temp matches 2 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE019\uE020"}]
    execute if score #mpRate temp matches 1 run title @s actionbar [{"text":"\uE009\uE009\uE007"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE020"}]

## 一時使用scoreHolderをリセット
    scoreboard players reset #mpRate temp
