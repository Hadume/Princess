#> lib:stats/calc/common/get.amount.loop
#
# @within function lib:stats/calc/common/
# @private

## データをコピー
  data modify storage lib:temp Stat set from storage lib:temp Stats[-1]
## 数値を取得
  execute store result score #Amount.Stored Temp run data get storage lib:temp Stat.Amount
## 数値を保存
  execute if data storage lib:temp {Stat:{Operation:0}} run scoreboard players operation #Amount Temp += #Amount.Stored Temp
  execute if data storage lib:temp {Stat:{Operation:1}} run scoreboard players operation #Amount.Stored.1 Temp += #Amount.Stored Temp
  execute if data storage lib:temp {Stat:{Operation:2}} run scoreboard players operation #Amount.Stored.2 Temp += #Amount.Stored Temp
## データを削除
  data remove storage lib:temp Stats[-1]
## ループ
  execute if data storage lib:temp Stats[] run function lib:stats/calc/common/get.amount.loop
