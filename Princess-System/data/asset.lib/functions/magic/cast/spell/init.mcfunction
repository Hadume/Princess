#> asset.lib:magic/cast/spell/init
# 魔法で初期化
# @within function asset.lib:magic/cast/spell/

## IDを保存
  execute store result score @s ID.Asset run data get storage asset:magic ID
## スコアを代入
  execute if data storage asset:magic Duration store result score @s Mgc.Duration run data get storage asset:magic Duration
## 速度を代入
  execute if data storage asset:magic Speed run function asset.lib:magic/cast/spell/speed
## データを保存
  ### データを移行
    data modify storage asset:temp Magic.Name set from storage asset:magic Name
    data modify storage asset:temp Magic.Amount set from storage asset:magic Amount
    data modify storage asset:temp Magic.Target set from storage asset:magic Target
    data modify storage asset:temp Magic.Pierce set from storage asset:magic Pierce
    execute if data storage asset:magic Element run data modify storage asset:temp Magic.Element set from storage asset:magic Element
    execute if data storage asset:magic Range run data modify storage asset:temp Magic.Range set from storage asset:magic Range
  ### 
    function data.entity:please
    data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic set from storage asset:temp Magic
## プレイヤーのIDを保存
  execute store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.CasterID int 1 run scoreboard players get @a[tag=This,limit=1] PlayerID
## 向きを変更
  execute rotated as @a[tag=This,limit=1] run tp @s ~ ~ ~ ~ ~
## 初期化tagを削除
  tag @s remove Spell.Init
