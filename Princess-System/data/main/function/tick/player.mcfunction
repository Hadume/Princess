#> main:tick/player
# プレイヤーで常時実行
# @within function main:tick/

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## 進捗
    execute if entity @s[advancements={main:inventory_changed=true}] run function main:advancements/inventory_changed
    execute if entity @s[advancements={main:take_effects=true}] run function main:advancements/take_effects

## スコア
    execute if entity @s[scores={leaveGame=1..}] run function player:score/leave_game
    execute if entity @s[scores={usedWFOAS=1..}] run function player:score/used_wfoas
    execute if entity @s[scores={tradeAction=..2147483647}] unless score @s tradeAction matches 0 run function menu:communicate/trade/open/
    execute if entity @s[scores={tradeDecideTimer=1..}] run function menu:communicate/trade/decide/timer/tick/
    execute if entity @s[scores={skillTree=1..}] run function skilltree:tick
    execute if entity @s[scores={deathTime=1..}] run function lib:die/player/tick/

## 食事効果
    execute if data storage dat: _.Effects[] run function player:effects/tick/

## 魔法
    function asset.lib:magic/tick/player/

## 魔法のクールタイム
    execute if predicate asset.lib:magic/cooltime run function player:reduce.cooltime

## mp,HPの回復
    execute if entity @s[scores={mpRgnTimer=1..}] run function player:regen/mp/tick
    execute if entity @s[scores={hpRgnTimer=1..}] run function player:regen/hp/tick

## ダンジョン処理
    execute if entity @s[scores={dungeon=1..}] run function asset.lib:dungeon/player/tick/

## 手に持っているアイテムを保存
    function #api:get.nbt/selected_item

## 4tickごとに実行
    scoreboard players add @s fourTickInterval 1
    execute if entity @s[scores={fourTickInterval=4..}] run function player:4tick_interval
