#> api:display/mp
# 魔力を表示
# @input as entity
# @within tag/function api:display/mp

#> ScoreHolder
# @private
	#declare score_holder #MP.Per

## 最大魔力を更新
	data modify storage lib: Stats set value ["MPMax"]
	function #lib:stats

## 計算
	scoreboard players set #MP.Per Temp 10
	scoreboard players operation #MP.Per Temp *= @s MP
	scoreboard players operation #MP.Per Temp /= @s MP.Max

## 表示
	execute if score #MP.Per Temp matches 10.. run title @s actionbar [{"text":"\uE010"},{"text": ""},{"text": "\uE011\uE012\uE013\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 9 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020"},{"text": "\uE012\uE013\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 8 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020"},{"text": "\uE013\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 7 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE014\uE015\uE016\uE017\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 6 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE015\uE016\uE017\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 5 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE016\uE017\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 4 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE017\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 3 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE018\uE019\uE020"}]
	execute if score #MP.Per Temp matches 2 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE019\uE020"}]
	execute if score #MP.Per Temp matches 1 run title @s actionbar [{"text":"\uE010"},{"text": "\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020\u0020"},{"text": "\uE020"}]

## 一時使用ScoreHolderをリセット
	scoreboard players reset #MP.Per Temp
