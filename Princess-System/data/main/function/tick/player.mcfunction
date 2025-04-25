#> main:tick/player
# プレイヤーで常時実行
# @within function main:tick/

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## 進捗
	execute if entity @s[advancements={main:inventory_changed=true}] run function main:advancements/inventory_changed
	execute if entity @s[advancements={main:take_effects=true}] run function main:advancements/take_effects

## スコア
	execute if entity @s[scores={LeaveGame=1..}] run function player:score/leave_game
	execute if entity @s[scores={Used.WFOAS=1..}] run function player:score/used_wfoas
	execute if entity @s[scores={Trade.Action=..2147483647}] unless score @s Trade.Action matches 0 run function menu:communicate/trade/open/
	execute if entity @s[scores={Trade.DecideTimer=1..}] run function menu:communicate/trade/decide/timer/tick/
	execute if entity @s[scores={SkillTree=1..}] run function skilltree:tick

## 食事効果
	execute if data storage dat: _.Effects[] run function player:effects/tick/

## 魔法
	function asset.lib:magic/tick/player/

## 魔法のクールタイム
	execute if predicate asset.lib:magic/cooltime run function player:reduce.cooltime

## MP,HPの回復
	execute if entity @s[scores={MP.Rgn.Timer=1..}] run function player:regen/mp/tick
	execute if entity @s[scores={HP.Rgn.Timer=1..}] run function player:regen/hp/tick

## ダンジョン処理
	execute if entity @s[scores={Dungeon=1..}] run function asset.lib:dungeon/tick/player/

## 手に持っているアイテムを保存
	function #api:get.nbt/selected_item

## 4tickごとに実行
	scoreboard players add @s 4tickInterval 1
	execute if entity @s[scores={4tickInterval=4..}] run function player:4tick_interval
